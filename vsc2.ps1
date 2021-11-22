$timeout = new-timespan -Minutes 1
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
	[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
	[Microsoft.VisualBasic.Interaction]::AppActivate("Visual Studio Code") 
	[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms") 
	
	$wsh2 = New-Object -ComObject WScript.Shell
	$wsh2.SendKeys('test')


    start-sleep -seconds 10
}
write-host "Temp écoulé"