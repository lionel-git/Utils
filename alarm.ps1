# Some delay
param (
    [double]$mins = 1
 )
 
Add-Type -AssemblyName System.Windows.Forms 

function TestNotif { 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balloon.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path) 
$balloon.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Warning 
$balloon.BalloonTipText = '*Alarm is finished*'
$balloon.BalloonTipTitle = "Attention $Env:USERNAME" 
$balloon.Visible = $true 
$balloon.ShowBalloonTip(5000)
}
 
$delay = $mins*60
echo "Waiting for $delay seconds ..."
Start-Sleep -Seconds $delay
echo "Finished !!!"
TestNotif

For ($i=0; $i -le 3; $i++) 
{
	[console]::beep(600,200)
    Start-Sleep -Seconds 2
}




