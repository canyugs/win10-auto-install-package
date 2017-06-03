# Please execute this script with PowerShell console as Administrator.
# Install chocolatey (The package manager for Windows)
Set-ExecutionPolicy Bypass
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

# Install package from list.
Get-Content .\packages.txt | ForEach-Object { choco install -y $_ }


# for docker
Enable-WindowsOptionalFeature -Online -FeatureName:Microsoft-Hyper-V -All