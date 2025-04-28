# PowerShell System Monitoring Project

This repository contains three lightweight PowerShell scripts designed to automate basic system monitoring tasks:

- 📧 **System Status Emailer**
- 🌐 **Network Connectivity Checker**
- 💾 **Disk Space Monitor**

Each script targets a specific aspect of system health and provides simple, actionable feedback.

---

## 📧 System Status Emailer

**Script Name:** `SystemEmail.ps1`\
**Description:** Collects system performance metrics — CPU usage, RAM usage, and disk space usage — formats them into a readable report, and automatically sends it via email using SMTP.

**Key Features:**

- 🖥️ Collect CPU load percentage
- 📈 Calculate used vs. available memory
- 💽 List disk space usage of logical drives
- ✉️ Send the system status report via secure SMTP (SSL)

**How to Run:**

1. Open PowerShell and navigate to the script folder:
   ```powershell
   cd "path\to\your\script"
   ```
2. Execute the script:
   ```powershell
   .\SystemEmail.ps1
   ```
3. When prompted, enter:
   - 📧 Your email address
   - 🔒 Your Gmail App Password (NOT your normal Gmail password!)

> **Important Setup for Gmail:**
>
> 1. 🔒 Enable 2-Step Verification on your Google Account
> 2. 🛠️ Generate a New App Password (select "Mail" app for "Windows Computer")
> 3. ✉️ Use this App Password when the script asks for credentials

---

## 🌐 Network Connectivity Checker

**Script Name:** `NetworkChecker.ps1`\
**Description:** Checks the availability of a list of websites by sending HTTP requests and reports their reachability with color-coded output.

**Key Features:**

- 🌍 Test multiple websites for accessibility
- 🎨 Color-coded console output:
  - 🟢 Reachable (200 OK)
  - 🟡 Reachable with different status code
  - 🔴 Not reachable (error)

**How to Run:**

1. Open PowerShell and navigate to the script folder:
   ```powershell
   cd "path\to\your\script"
   ```
2. Execute the script:
   ```powershell
   .\NetworkChecker.ps1
   ```

---

## 💾 Disk Space Monitor

**Script Name:** `DiskSpaceMonitor.ps1`\
**Description:** Monitors available disk space on all local drives and provides warnings if any drive’s free space falls below 10 GB.

**Key Features:**

- 📂 Scans all filesystem drives
- 🎯 Displays:
  - 🟢 Sufficient free space (> 10 GB)
  - 🔴 Low free space (≤ 10 GB)

**How to Run:**

1. Open PowerShell and navigate to the script folder:
   ```powershell
   cd "path\to\your\script"
   ```
2. Execute the script:
   ```powershell
   .\DiskSpaceMonitor.ps1
   ```

---

## 🗂️ Project Structure

```plaintext
YourRepoFolder
├── README.md
├── SystemEmail.ps1
├── NetworkChecker.ps1
└── DiskSpaceMonitor.ps1
```

---

## ⚙️ Requirements

- 🪟 Windows 10 or later
- ⚡ PowerShell 5.1 or newer
- 🌐 Internet connection (for sending email and website testing)
- 🔒 Gmail App Password (for using Gmail SMTP servers)

---

## 📬 Contact

**Author:** Your Name\
**Email:** [your@email.com](mailto\:your@email.com)\
**LinkedIn:** [Your LinkedIn Profile](https://www.linkedin.com/in/yourprofile)

