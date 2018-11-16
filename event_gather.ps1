Get-Eventlog *
echo ""
$Logname = Read-Host -Prompt 'Specify log index to search.'
$Amount = Read-Host -Prompt 'Specify amount of logs to retrieve. (Default is 1000)'
$BeforeDate = Read-Host -Prompt 'Specify date to read logs before. (xx/xx/xxxx)'
$AfterDate = Read-Host -Prompt 'Specify date to read logs after. (xx/xx/xxxx)'
$Message = Read-Host -Prompt 'Specify message string to search.'
$BeforeDate = "Get-Date " + $BeforeDate
$AfterDate = "Get-Date " + $AfterDate

try {
	if($Amount -eq "") {
		$Amount = 1000
	}
	if($BeforeDate -eq "Get-Date ") {
		$Before = Get-Date
	}
	else {
		$Before = Invoke-Expression $BeforeDate
	}
	if($AfterDate -eq "Get-Date ") {
		$After = Get-Date 1/1/1970
	}
	else {
		$After = Invoke-Expression $AfterDate
	}
	if($Message -eq "") {
		$Message = "*"
	}

	Get-EventLog -logname $Logname -Newest $Amount -after $After -before $Before -message $Message -ErrorAction SilentlyContinue
}

catch [System.InvalidOperationException] {
"Invalid index."
}
