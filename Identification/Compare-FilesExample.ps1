$ref = Import-Clixml C:\baseline\Admins.xml
$diff = Get-LocalAdministrators
Compare-Object $ref $diff –property Name
