Function Set-FolderMonitor {
	param(
		[Parameter(Mandatory=$true)]
		[Alias("FilePath")]
		[string]$Path
	)

	if(Test-Path -Path $Path) {
		## Setup Watcher .NET CLass
		$watcher = New-Object System.IO.FileSystemWatcher
		$watcher.Path = $Path
		$watcher.IncludeSubdirectories = $true
		$watcher.EnableRaisingEvents = $true
		## Set Created Event
		$created = Register-ObjectEvent -InputObject $watcher -EventName "Created" -Action {
			Write-Host -Object "Created: $($eventArgs.FullPath)" -ForegroundColor Yellow
		}
		## Set Changed Event
		$changed = Register-ObjectEvent -InputObject $watcher -EventName "Changed" -Action {
			Write-Host -Object "Changed: $($eventArgs.FullPath)" -ForegroundColor Yellow
		}
		## Set Deleted Event
		$deleted = Register-ObjectEvent -InputObject $watcher -EventName "Deleted" -Action {
			Write-Host -Object "Deleted: $($eventArgs.FullPath)" -ForegroundColor Yellow
		}
		## Set Renamed Event
		$renamed = Register-ObjectEvent -InputObject $watcher -EventName "Renamed" -Action {
			Write-Host -Object "Renamed: $($eventArgs.FullPath)" -ForegroundColor Yellow 
		}
	}
	<#
		.SYNOPSIS
			DEMO CODE: Sets folder level monitoring on a file.
		.DESCRIPTION
			DEMO CODE: Sets folder level monitoring on a file using System.IO.FileSystemWatcher. Logs change to current console.
		.PARAMETER  Path
			Path of the folder to monitor
		.EXAMPLE
			PS C:\> Monitor-FileChanges -Path "C:\Development"
		.INPUTS
			System.String
		.OUTPUTS
			None
		.NOTES
			Written for Matt Johnson's GrrCON 2012 talk PowerShell - Be A Cool Blue Kid.
		.LINK
			www.mwjcomputing.com/resources/grrcon-2012/
		.LINK
			github.com/mwjcomputing/
	#>
	
}