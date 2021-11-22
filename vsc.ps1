$timeout = new-timespan -Minutes 720
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
	[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
	[Microsoft.VisualBasic.Interaction]::AppActivate("Visual Studio Code") 
	[void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms") 
	[System.Windows.Forms.SendKeys]::SendWait("Salut")
    start-sleep -seconds 10
}
write-host "1FORMATIK.com SendWait"