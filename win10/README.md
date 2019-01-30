# Windows 10 Configuration

## System Setup

### Install Chocolatey

* Inspect https://chocolatey.org/install.ps1
* Open cmd.exe as Admin
* Run  
    ```@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"```
* Run   
    ```choco install choco-packages.config```

## System Freeze

### Store Current Choco installation

* Run `utils\choco-config.ps1` to export all installed programs to `choco-packages.config`.