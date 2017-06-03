# Install package from list.
Get-Content .\packages.txt | ForEach-Object { choco install -y $_ }


# for docker
Enable-WindowsOptionalFeature -Online -FeatureName:Microsoft-Hyper-V -All
