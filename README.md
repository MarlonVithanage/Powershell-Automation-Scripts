# Powershell Automation Scripts

This repository contains automation scripts written in PowerShell to help with system administration tasks.

## Scripts Included:
- **DiskSpaceMonitor.ps1**: Checks disk space and warns if space is low.
- **NetworkChecker.ps1**: Pings websites and checks if they are reachable.

## How to Run:
1. Open PowerShell.
2. Navigate to the script folder.
3. Execute the script: `.\DiskSpaceMonitor.ps1`
"# Powershell-Automation-Scripts" 

# PowerShell System Monitoring Project  

This repository contains three lightweight PowerShell scripts designed to automate basic system monitoring tasks:  

- **📧 System Status Emailer**  
- **🌐 Network Connectivity Checker**  
- **💾 Disk Space Monitor**  

Each script targets a specific aspect of system health and provides simple, actionable feedback.  

---

## 📧 1. System Status Report Emailer  

**Script Name:** `SystemEmail.ps1`  

**Description:**  
This script collects system performance metrics (CPU usage, RAM usage, and Disk space usage), formats them into a readable report, and sends it to a specified email address via SMTP.  

**Key Features:**  
- Collects CPU load percentage.  
- Calculates used vs. available memory.  
- Lists disk space usage of logical drives.  
- Sends the system status report via email using secure SMTP (SSL).  

**How to Run:**  
1. Open PowerShell and navigate to the script's location:  
   ```powershell  
   cd "path\to\your\script"  
Execute the script:

powershell
.\SystemEmail.ps1  
When prompted, enter:

Your Email Address

Your Gmail App Password (NOT your normal Gmail password!)

🔒 Important Setup for Gmail
Gmail no longer allows normal password login for external apps/scripts.

You must create an App Password to use this script.

Steps:

Enable 2-Step Verification on your Google Account.

Generate a New App Password (select "Mail" app for "Windows Computer").

Use this App Password when the script asks for credentials.

⚠️ Note: Without this setup, Gmail will reject the connection with authentication errors.

🌐 2. Network Connectivity Checking Script
Script Name: NetworkChecker.ps1

Description:
This script checks the availability of a list of websites by sending HTTP requests and reports their reachability.

Key Features:

Tests multiple websites for accessibility.

Color-coded console output:

🟢 Green: Website reachable (HTTP 200 status).

🟡 Yellow: Website reachable but with a different status code.

🔴 Red: Website not reachable (error).

How to Run:

Open PowerShell and navigate to the script's location:

powershell
cd "path\to\your\script"  
Execute the script:

powershell
.\NetworkChecker.ps1  
💾 3. Disk Space Monitoring Script
Script Name: DiskSpaceMonitor.ps1

Description:
This script monitors available disk space on all local drives and provides warnings if any drive’s free space falls below 10 GB.

Key Features:

Scans all filesystem drives.

Color-coded console output:

🟢 Green: Drive has sufficient free space.

🔴 Red: Drive running low on free space.

How to Run:

Open PowerShell and navigate to the script's location:

powershell
cd "path\to\your\script"  
Execute the script:

powershell
.\DiskSpaceMonitor.ps1  
🗂️ Project Structure
YourRepoFolder/  
├── README.md  
├── SystemEmail.ps1  
├── NetworkChecker.ps1  
└── DiskSpaceMonitor.ps1  
⚙️ Requirements
Windows 10 or later.

PowerShell 5.1 or newer.

Internet connection (for sending email and website testing).

Gmail App Password (required for using Gmail SMTP servers).

📬 Contact
Author: Your Name
Email: your@email.com
LinkedIn: Your LinkedIn Profile