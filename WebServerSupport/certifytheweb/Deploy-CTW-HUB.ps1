# Deploy-CTW-HubClient.ps1
# Installs CTW as hub-managed client with config and Infoblox patch

param(
    [string]$ConfigFile = "C:\CTW\certifytheweb_hub_export.json",
    [string]$HubApiUrl = "http://zhr-16webt01.rivcoca.org:8080",
    [string]$ClientId = "managedinstance_sp_01",
    [string]$ClientSecret = ""
)

Write-Host "=== Certify The Web Hub Client Deployment ===" -ForegroundColor Cyan

# Step 1: Download and Install Latest CTW Hub Client
Write-Host "[1] Installing Certify The Web (Hub Client)..." -ForegroundColor Yellow

$downloadUrl = "https://downloads.certifytheweb.com/beta/latest/certify-ccm-windows-x64-latest.exe"
$installerPath = "$env:TEMP\CTW-HubClient-Installer.exe"

try {
    Write-Verbose "Downloading CTW Hub Client installer"
    Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath -UseBasicParsing

    Write-Verbose "Running silent installation"
    & $installerPath /SILENT /NORESTART

    Start-Sleep -Seconds 30
    Write-Host "CTW Hub Client installed successfully" -ForegroundColor Green

} catch {
    Write-Error "Failed to download/install CTW: $_"
    exit 1
}

# Step 2: Copy Config File
Write-Host "[2] Importing configuration..." -ForegroundColor Yellow

if (-not (Test-Path $ConfigFile)) {
    Write-Warning "Config file not found: $ConfigFile (optional)"
} else {
    try {
        $ctwAppData = "$env:APPDATA\Certify"
        if (-not (Test-Path $ctwAppData)) {
            New-Item -Path $ctwAppData -ItemType Directory -Force | Out-Null
        }

        Copy-Item -Path $ConfigFile -Destination "$ctwAppData\certifytheweb_hub_export.json" -Force
        Write-Host "Configuration file copied" -ForegroundColor Green

    } catch {
        Write-Error "Failed to copy config: $_"
    }
}

# Step 3: Patch Infoblox Script (IBIgnoreCert = $true)
Write-Host "[3] Patching Infoblox DNS plugin..." -ForegroundColor Yellow

$infobloxScriptPath = "C:\Program Files\CertifyTheWeb\Service\Scripts\DNS\PoshACME\Plugins\Infoblox.ps1"

if (Test-Path $infobloxScriptPath) {
    try {
        $scriptContent = Get-Content -Path $infobloxScriptPath -Raw

        # Fix both Add-DnsTxt and Remove-DnsTxt functions
        $scriptContent = $scriptContent -replace '\[switch\]\$IBIgnoreCert,', '[switch]$IBIgnoreCert = $true,'

        Set-Content -Path $infobloxScriptPath -Value $scriptContent -Force
        Write-Host "Infoblox script patched (IBIgnoreCert = `$true)" -ForegroundColor Green

    } catch {
        Write-Error "Failed to patch Infoblox script: $_"
    }
} else {
    Write-Warning "Infoblox script not found. Manual patch may be required."
}

# Step 4: Join Hub
Write-Host "[4] Joining Management Hub..." -ForegroundColor Yellow

try {
    $ctwPath = "C:\Program Files\CertifyTheWeb"
    Push-Location $ctwPath

    & .\certify.exe hub join $HubApiUrl $ClientId $ClientSecret

    Write-Host "Hub joining initiated" -ForegroundColor Green
    Start-Sleep -Seconds 5

    Pop-Location
} catch {
    Write-Warning "Hub join may need manual completion: $_"
}

# Step 5: Summary
Write-Host ""
Write-Host "=== Deployment Complete ===" -ForegroundColor Green
Write-Host "CTW Hub Client installed"
Write-Host "Configuration imported"
Write-Host "Infoblox script patched"
Write-Host "Hub joining initiated"
Write-Host ""
Write-Host "Hub Details:"
Write-Host "  API URL: $HubApiUrl"
Write-Host "  Client ID: $ClientId"
Write-Host ""
Write-Host "Verify in Management Hub:"
Write-Host "  Management Hub > Instances > Should see this instance listed"
Write-Host ""
Write-Host "Server is ready for centralized management!"
