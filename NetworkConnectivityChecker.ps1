# Network connectivity checking Script

# List of websites to check

$websites = @("https://www.google.com",
    "https://www.github.com",
    "https://www.microsoft.com",
    "https://www.nonexistentwebsite123456.com"
   )


# Go through each website

foreach($website in $websites){
   
    try{
       #sending a small web request
       $response = Invoke-WebRequest -Uri $website -UseBasicParsing -Timeoutsec 5

       # If successful, print
       if ($response.StatusCode -eq 200){
          Write-Host "$website is reachable!" -ForegroundColor Green
          }
       else {
          Write-Host "Website returned status code: $($response.StatusCode)" -ForegroundColor Yellow
          }
        }
    
    catch{
         # If request fails, print error
         Write-Host "Cannot reach $website" -ForegroundColor Red
       }
     }