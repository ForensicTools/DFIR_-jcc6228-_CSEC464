#here we will be making a script to collect logs in windows
echo "The last 1000 entries from the system log: "
Get-Eventlog -LogName system -Newest 1000
echo ""
echo "System Log Statistics:"
$Events = Get-Eventlog -LogName system
$Events | Group-Object -Property source -noelement | Sort-Object -Property count -Descending
echo ""
echo "The last 1000 entries from the Application log: "
Get-Eventlog -LogName system -Newest 1000
echo ""
echo "Application Log Statistics"
$Events = Get-Eventlog -LogName Application
$Events | Group-Object -Property source -noelement | Sort-Object -Property count -Descending
