$computer = $env:COMPUTERNAME

$adsi = [ADSI]("WinNT://$computer,computer")

$groups = $adsi.psbase.children | Where {$_.psbase.schemaclassname -eq "Group"} | Select Name

foreach ($group in $groups) {
	$group.name
}
