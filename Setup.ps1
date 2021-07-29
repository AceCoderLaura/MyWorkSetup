#Requires -RunAsAdministrator
[CmdletBinding()]
param()

# Install Chocolatey Package Manager
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

# Get and open this repository
choco install 'git.install' -y;
git checkout https://github.com/AceCoderLaura/MyWorkSetup.git
Set-Location MyWorkSetup;

# Install my package list
choco install chocolatey.config -y;