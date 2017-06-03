# win10-auto-install-package

## Requirement
- Chocolatey
- Package list (packages.txt)

## Install chocolatey (The package manager for Windows)
Open PowerShell console as Administrator.

```
Set-ExecutionPolicy Bypass
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## Run command
```
PS C:\Users\Can\Desktop> Get-Content <Path_To_Your_packages.txt> | ForEach-Object { choco install -y $_ }
```
