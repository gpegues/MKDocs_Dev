# Step 1: Uninstall CTW normally
# Control Panel > Programs > Uninstall > Certify The Web

# Step 2: Delete application data (as Administrator)
Remove-Item -Path "$env:APPDATA\Certify" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "$env:ProgramData\Certify" -Recurse -Force -ErrorAction SilentlyContinue

# Step 3: Clean registry
Remove-Item -Path "HKCU:\Software\CertifyTheWeb" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "HKLM:\Software\CertifyTheWeb" -Recurse -Force -ErrorAction SilentlyContinue

# Step 4: Restart (recommended)
Restart-Computer -Force