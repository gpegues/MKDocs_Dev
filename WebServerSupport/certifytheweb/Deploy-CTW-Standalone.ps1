param(
    [string]$ConfigFile = "C:\CTW\certifytheweb_standalone_export.json",
    [string]$LicenseKey = ""
)

Write-Host "=== CTW Standalone Deployment ===" -ForegroundColor Cyan

# Step 1: Download and Install Latest CTW
Write-Host "[1] Installing Certify The Web (Standalone)..." -ForegroundColor Yellow

$downloadUrl = "https://downloads.certifytheweb.com/CertifyTheWebSetup_V6.1.11.exe"
$installerPath = "$env:TEMP\CTW-Standalone-Installer.exe"

try {
    Write-Verbose "Downloading CTW installer"
    Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath -UseBasicParsing

    Write-Verbose "Running silent installation"
    & $installerPath /SILENT /NORESTART

    Start-Sleep -Seconds 30
    Write-Host "[OK] CTW installed" -ForegroundColor Green

} catch {
    Write-Error "Failed to download/install CTW: $_"
    exit 1
}

Write-Host "[2] Applying license key..." -ForegroundColor Yellow
if ($LicenseKey) {
    $certifyExe = "C:\Program Files\CertifyTheWeb\certify.exe"
    if (Test-Path $certifyExe) {
        & $certifyExe setlicense $LicenseKey
        Write-Host "[OK] License key applied" -ForegroundColor Green
    } else {
        Write-Warning "certify.exe not found, skipping license key application"
    }
} else {
    Write-Host "[SKIP] No license key provided" -ForegroundColor Gray
}

Write-Host "[3] Copying config..." -ForegroundColor Yellow
if (Test-Path $ConfigFile) {
    $ctwAppData = "$env:APPDATA\Certify"
    New-Item -Path $ctwAppData -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null
    Copy-Item -Path $ConfigFile -Destination "$ctwAppData\certifytheweb_standalone_export.json" -Force
    Write-Host "[OK] Config copied" -ForegroundColor Green
}

Write-Host "[4] Patching Infoblox..." -ForegroundColor Yellow
# Standalone path
$infobloxPath = "C:\Program Files\CertifyTheWeb\Scripts\DNS\PoshACME\Plugins\Infoblox.ps1"
if (Test-Path $infobloxPath) {
    $content = Get-Content -Path $infobloxPath -Raw
    # Replace both occurrences in Add-DnsTxt and Remove-DnsTxt functions
    $content = $content -replace '\[switch\]\$IBIgnoreCert,', '[switch]$IBIgnoreCert = $true,'
    Set-Content -Path $infobloxPath -Value $content -Force
    Write-Host "[OK] Infoblox patched (Standalone)" -ForegroundColor Green
} else {
    Write-Warning "Infoblox.ps1 not found at: $infobloxPath"
}

Write-Host "=== Complete ===" -ForegroundColor Green
