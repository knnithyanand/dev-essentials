# Description: Boxstarter Script
# Author: [Nithyanand K N](knnithyanand@hotmail.com)
# Essential tools for any developer

Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowFileExtensions

#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

#--- Windows Subsystems/Features ---
# choco install -y Microsoft-Hyper-V-All -source windowsFeatures
# choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#--- Browsers ---
choco install -y Firefox
choco install -y Googlechrome

#--- Fonts ---
choco install -y inconsolata
# choco install -y ubuntu.font

#--- Tools ---
choco install -y nodejs-lts # Node.js LTS, Recommended for most users
choco install -y sysinternals
choco install -y dotnetcore-sdk
choco install -y dotnetcore-windowshosting
choco install -y yarn
choco install -y wget
choco install -y docker-for-windows
choco install -y git -params '"/GitAndUnixToolsOnPath /WindowsTerminal"'
choco install -y vscode
choco install -y vscode-csharp
choco install -y vscode-icons
choco install -y vscode-tslint
choco install -y vscode-markdownlint

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula