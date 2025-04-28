# CPU usage

$cpu = Get-wmiObject win32_processor | measure-object -Property LoadPercentage -Average | Select-Object -ExpandProperty Average

# RAM usage

$ram = Get-wmiObject win32_OperatingSystem 
$freeMem = [math]::round(($ram.FreePhysicalMemory/1MB), 2)
$totalMem = [math]::round(($ram.TotalVisibleMemorySize/1MB), 2)
$usedMem = [math]::round($totalMem - $freeMem, 2)

# Disk space
$disk = Get-wmiObject win32_LogicalDisk -Filter "DriveType=3" | Select-Object DeviceID, @{Name="Free space(GB)";Expression={[math]::round($_.FreeSpace/1GB,2)}}, @{Name="TotalSpace(GB)";Expression={[math]::round($_.Size/1GB,2)}}


# Formatting email body (multi line string)

$body= @"
System status report

CPU usage : $cpu %

Memory Usage : $usedMem out of $totalMem

Disk usage : $($disk | Out-String)

Report generated on $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
"@


# Ask for creditials at Runtime
$credentials = Get-Credential


#SMTP details

$smtpServer ="smtp.gmail.com"
$smtpPort = 587


# Send Email

Send-MailMessage `
-From $credentials.UserName `
-To $credentials.UserName `
-Subject "System Status Report" `
-Body $body `
-SmtpServer $smtpServer `
-Port $smtpPort `
-useSsl `
-Credential $credentials



