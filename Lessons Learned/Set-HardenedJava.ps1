New-PSDrive -Name Y -PSProvider filesystem -Root “\\Primary-FS\C$\Program Files”

if (Test-path -Path "Y:\Java\jre7") {
Copy-Item deployment.config  Y:\Java\jre7
Copy-Item deployment.properties Y:\Java\jre7
