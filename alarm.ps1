# Some delay
param (
    [double]$mins = 1
 )
$delay = $mins*60
echo "Waiting for $delay seconds ..."
Start-Sleep -Seconds $delay
echo "Finished !!!"
For ($i=0; $i -le 10; $i++) 
{
	[console]::beep(600,200)
    Start-Sleep -Seconds 2
}

