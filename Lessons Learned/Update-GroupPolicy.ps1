Get-ADComputer –filter * -Searchbase "ou=Servers, dc=domain,dc=com" | foreach{ Invoke-GPUpdate –computer $_.name -force} 
