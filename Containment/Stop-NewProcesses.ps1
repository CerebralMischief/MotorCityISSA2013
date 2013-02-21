Register-WmiEvent Win32_ProcessStartTrace -Action {Stop-Process -Id ($EventArgs.NewEvent.ProcessID)}
