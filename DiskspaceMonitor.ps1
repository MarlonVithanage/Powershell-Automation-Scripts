# Disk Space Monitoring Script


# Get file system drives
$drives = Get-PSDrive -PSProvider FileSystem

# Loop through each drive

foreach ($drive in $drives){
   # Calculate free space in GB
   $FreeSpaceGB = [math]::Round($drive.Free/1GB, 2)

   # Check if free space is less than 10GB
   if ($FreeSpaceGB -lt 10){
      # output if it's less than 10GB
      Write-Host "WARNING: Drive $($drive.Name) is low on storage, only $FreeSpaceGB GB is left." -ForegroundColor Red 
   }
   else {
   Write-Host "Drive $($drive.Name) is good. Has $FreeSpaceGB GB free" -ForegroundColor Green
   }
}
      
