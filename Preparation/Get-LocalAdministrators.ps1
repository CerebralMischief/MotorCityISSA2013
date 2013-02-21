function Get-LocalAdministrators {  
	param (
		[Parameter(Mandatory=$true)]
		[string]$Computer
	)  
  
	$admins = Get-WMIObject -class win32_groupuser –computer $computer   
	$admins = $admins | where {$_.groupcomponent –like '*"Administrators"'}  
  
	$admins |Foreach{ 
		$_.partcomponent –match “.+Domain\=(.+)\,Name\=(.+)$” > $nul 
		$matches[1].trim('"') + “\” + $matches[2].trim('"')  
	} 
	<#
		.SYNOPSIS
			Gets local administrators.
		.DESCRIPTION
			Gets local administratiors on specified computer.
		.PARAMETER  Computer
			The name of the computer.
		.EXAMPLE
			PS C:\> Get-LocalAdministrators -Computer $env:computername
		.INPUTS
			System.String
		.OUTPUTS
			System.String
		.NOTES
			Written for Matt Johnson's GrrCON 2012 talk PowerShell - Be A Cool Blue Kid.
		.LINK
			www.mwjcomputing.com/resources/grrcon-2012/
		.LINK
			github.com/mwjcomputing/
	#>
	
}