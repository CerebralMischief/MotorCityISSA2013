Function Unregister-FileMonitor {
	Unregister-Event $changed.Id
	Unregister-Event $created.Id
	Unregister-Event $deleted.Id
	Unregister-Event $renamed.Id
	<#
		.SYNOPSIS
			DEMO CODE: Unregisters a previous file monitor.
		.DESCRIPTION
			DEMO CODE: Unregisters a previous file monitor. Must be in same session.
		.PARAMETER  param1
			The description of the first parameter.
		.EXAMPLE
			PS C:\> Unregister-FileMonitor
		.INPUTS
			None
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