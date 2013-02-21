function Confirm-ServiceAccounts {
	param (
		[Parameter(Mandatory=$true,ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)]
		[string]$Computer
	)
	begin {
		Write-Verbose -message "Starting $($myinvocation.mycommand)"
	}
	process {
		Get-WmiObject -Class Win32_Service -ComputerName $computer | where {($_.StartName -ne 'LocalSystem') -and ($_.StartName -ne 'NT Authority\LocalService') -and ($_.StartName -ne 'NT Authority\NetworkService')}
	}
	end{
		Write-Verbose -message "Stopping $($myinvocation.mycommand)"
	}
	<#
		.SYNOPSIS
			Displays services that are running as a user.
		.DESCRIPTION
			Displays services that are running as a user not LocalSystem, NT Authority\LocalService or NT Authority\NetworkService
		.PARAMETER  Computer
			The description of the first parameter.
		.EXAMPLE
			PS C:\> Confirm-ServiceAccounts -Computer Deathwing
		.INPUTS
			System.String
		.OUTPUTS
			Object
		.NOTES
			Written for Matt Johnson's GrrCON 2012 talk PowerShell - Be A Cool Blue Kid.
		.LINK
			www.mwjcomputing.com/resources/grrcon-2012/
		.LINK
			github.com/mwjcomputing/
	#>
	
}