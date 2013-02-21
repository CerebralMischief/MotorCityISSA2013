Get-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |Select DisplayName, DisplayVersion, Publisher, InstallDate, HelpLink, UninstallString
