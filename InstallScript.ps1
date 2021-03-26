Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install anydesk.install -y
choco install googlechrome -y
choco install firefox -y
choco install ccleaner -y
choco install adobereader -y
choco install 7zip -y
choco install jre8 -y
choco install pdf24 -y
choco install classic-shell -y
Set-Service -Name "FDResPub" -StartupType Automatic
Restart-Service -Force -Name "FDResPub"
Set-Service -Name "SSDPSRV" -StartupType Automatic
Restart-Service -Force -Name "SSDPSRV"
Set-Service -Name "upnphost" -StartupType Automatic
Restart-Service -Force -Name "upnphost"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall set allprofiles state off
powercfg -SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6
Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage
Set-NetFirewallRule -DisplayGroup "Datei- und Druckerfreigabe" -Enabled True
Set-NetFirewallRule -DisplayGroup "Netzwerkerkennung" -Enabled True
