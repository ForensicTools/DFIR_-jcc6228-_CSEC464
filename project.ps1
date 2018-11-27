#here we will be making a script to collect logs in windows
echo "The last 1000 entries from the system log:"
Get-Eventlog -LogName system -Newest 1000
echo ""
echo "System Log Statistics:"
$Events = Get-Eventlog -LogName system
$Events | Group-Object -Property source -noelement | Sort-Object -Property count -Descending
echo ""
echo "The last 1000 entries from the Application log: "
Get-Eventlog -LogName system -Newest 1000
echo ""
echo "Application Log Statistics:"
$Events = Get-Eventlog -LogName Application
$Events | Group-Object -Property source -noelement | Sort-Object -Property count -Descending
echo ""
echo "Errors in System logs:"
Get-EventLog -LogName System -EntryType Error
echo ""
echo "Errors in Application logs:"
Get-EventLog -LogName Application -EntryType Error
echo ""
#echo "Administrator account activity:"
#Get-EventLog -Log System -UserName "Administrator" | Group-Object -Property "UserName" -noelement | Format-Table Count, Name -Auto
#Get-EventLog -Log System -UserName "Administrator"
echo ""
$Aug26 = Get-Date 8/26/18
$Sep26 = Get-Date 9/26/08
Get-EventLog -Log "system" -EntryType Error -After $Aug26 -before $Sep26
