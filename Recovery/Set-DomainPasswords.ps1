$NewPass1 = “TheFreakyNewPassword!”

Get-ADUser | Set-ADAccountPassword -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "$NewPass1" -Force)
