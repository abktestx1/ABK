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
choco install virtualclonedrive -y
