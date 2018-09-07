Get-Date
Get-TimeZone
[System.Environment]::OSVersion.Version
Get-CimInstance -ClassName Win32_ComputerSystem
Get-ComputerInfo
Get-ADDomain
Get-WmiObject -Class Win32_UserAccount
Get-Service
Get-WmiObject -Class Win32_Product
Get-ScheduledTask
Get-NetNeighbor
foreach ($i in ((Get-NetLbfoTeam).name)) 
{ 
Get-NetAdapter (Get-NetLbfoTeamMember -Team $i).Name | Format-Table 
}
Get-NetRoute
Get-NetIPAddress
Get-DhcpServerInDC
Get-DnsServer
Get-NetTCPConnection
Get-DnsClientCache
Get-SmbShare
Get-Printer
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize
Get-Process
Get-WindowsDriver
Get-ChildItem -Path Downloads
Get-ChildItem -Path Documents