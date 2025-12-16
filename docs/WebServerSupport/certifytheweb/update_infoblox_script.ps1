# Patch the script - support both Hub and Standalone installations
$hubPath = "C:\Program Files\CertifyTheWeb\Service\Scripts\DNS\PoshACME\Plugins\Infoblox.ps1"
$standalonePath = "C:\Program Files\CertifyTheWeb\Scripts\DNS\PoshACME\Plugins\Infoblox.ps1"

$scriptPath = $null
if (Test-Path $hubPath) {
    $scriptPath = $hubPath
    $installType = "Hub"
} elseif (Test-Path $standalonePath) {
    $scriptPath = $standalonePath
    $installType = "Standalone"
} else {
    Write-Error "Infoblox script not found at either:"
    Write-Error "  Hub: $hubPath"
    Write-Error "  Standalone: $standalonePath"
    Write-Error "Please verify that Certify The Web is installed."
    exit 1
}

try {
    Write-Host "Patching Infoblox script ($installType)..." -ForegroundColor Yellow
    Write-Host "Path: $scriptPath" -ForegroundColor Gray
    $content = Get-Content $scriptPath -Raw
    $originalContent = $content
    # Replace both occurrences in Add-DnsTxt and Remove-DnsTxt functions
    $content = $content -replace '\[switch\]\$IBIgnoreCert,', '[switch]$IBIgnoreCert = $true,'

    if ($content -eq $originalContent) {
        Write-Warning "No changes made - parameter may already be patched or pattern not found"
    } else {
        Set-Content $scriptPath -Value $content -Force
        Write-Host "Infoblox script patched successfully" -ForegroundColor Green
    }
} catch {
    Write-Error "Failed to patch Infoblox script: $_"
    exit 1
}

# Restart CTW service (if applicable)
$serviceName = "Certify Certificate Manager"
if (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    try {
        Write-Host "Restarting $serviceName service..." -ForegroundColor Yellow
        Restart-Service $serviceName -ErrorAction Stop
        Write-Host "Service restarted successfully" -ForegroundColor Green
    } catch {
        Write-Warning "Failed to restart service: $_"
        Write-Host "Please manually restart the service or application" -ForegroundColor Yellow
    }
} else {
    Write-Host "[INFO] Service not found - this is normal for Standalone installations" -ForegroundColor Gray
    Write-Host "If you're running CTW UI, please restart it manually to apply changes" -ForegroundColor Yellow
}
