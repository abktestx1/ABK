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
#Rometdesktopverbindung aktivieren
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
#Firewall deaktivieren
netsh advfirewall set allprofiles state off
#Energiesparplan Höchstleistung erstellen und auswählen
powercfg -SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
#IPv6 für alle Adapter deaktivieren
Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6
#Cortana Deinstallieren
Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage
#Erweiterte Freigabe Einstellungen aktivieren
Set-NetFirewallRule -DisplayGroup "Datei- und Druckerfreigabe" -Enabled True
Set-NetFirewallRule -DisplayGroup "Netzwerkerkennung" -Enabled True
#Telemetrie deaktivieren Win Version Allgemein 
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
#Deinstallation von Apps
Get-AppxPackage -allusers -Name Microsoft.Xboxapp | Remove-AppxPackage
Get-AppxPackage -allusers *xboxIdentityprovider* | Remove-AppxPackage
Get-AppxPackage -allusers *getstarted* | Remove-AppxPackage
Get-AppxPackage -allusers *solitairecollection* | Remove-AppxPackage
Get-AppxPackage -allusers *officehub* | Remove-AppxPackage
Get-AppxPackage -allusers *OneNote* | Remove-AppxPackage
Get-AppxPackage -allusers *feedback* | Remove-AppxPackage
Get-AppxPackage -allusers *zunemusic* | Remove-AppxPackage
Get-AppxPackage -allusers *windowsmaps* | Remove-AppxPackage
Get-AppxPackage -allusers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
