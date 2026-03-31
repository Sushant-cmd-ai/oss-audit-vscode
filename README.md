# OSS Project — Visual Studio Code Audit

**Course:** Open Source Software (Vityarthi)  
**Name:** Sushant Agarwal  
**Reg. No.:** 24BAI10669  
**Platform:** Linux  
**Software:** Visual Studio Code

---

## What is this project?

This is my submission for the Open Source Software course. I picked **Visual Studio Code** as my software to audit. The report covers where it came from, what license it uses, how it fits into the Linux/FOSS world, and how it compares to proprietary editors like Sublime Text.

Along with the report, I wrote **5 shell scripts** that run on Linux and do things like check system info, detect VS Code, audit directories, read logs, and generate a project manifest.

---

## Folder Structure

```
oss-project/
├── scripts/
│   ├── script1.sh       # System Identity Report
│   ├── script2.sh       # VS Code Detection
│   ├── script3.sh       # Directory Permission Audit
│   ├── script4.sh       # Log File Analyzer
│   └── script5.sh       # Manifest Generator
├── README.md
└── report.docx
```

---

## Setup

You just need a Linux system with bash. All the tools used (`lscpu`, `free`, `df`, `du`, `grep`, `tail`, `wc`) come pre-installed on Ubuntu/Debian — no extra setup needed.

To confirm you're good to go:

```bash
bash --version
uname -a
```

---

## How to Run

**1. Clone the repo**

```bash
git clone https://github.com/<your-username>/oss-audit-vscode.git
cd oss-audit-vscode/scripts
```

**2. Give the scripts permission to run**

```bash
chmod +x *.sh
```

**3. Run whichever script you want**

```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script5.sh
```

---

## Scripts

### script1.sh — System Identity Report

This one just prints out basic info about your system — hostname, OS, kernel, architecture, CPU, RAM, and disk usage. Good for a quick overview of what machine you're on.

```bash
./script1.sh
```

Sample output:
```
===== SYSTEM INFORMATION REPORT =====
Date: Mon Jun 10 12:00:00 IST 2025

---- System Details ----
Hostname: sushant-pc
OS: GNU/Linux
Kernel: 5.15.0-91-generic
Architecture: x86_64

---- CPU Info ----
Model name: Intel(R) Core(TM) i5-...

---- Memory Info ----
               total   used   free
Mem:           7.6Gi  3.2Gi  4.4Gi

---- Disk Usage ----
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   30G  40% /
===== END OF REPORT =====
```

---

### script2.sh — VS Code Detection

Checks if VS Code is installed on the system. It looks for the `code` command and also checks if the config folder exists at `~/.config/Code`.

```bash
./script2.sh
```

Sample output:
```
===== VS CODE DETECTION =====
VS Code is installed
Location: /usr/bin/code
Config directory exists: /home/sushant/.config/Code
===== DONE =====
```

> If VS Code isn't installed, you can install it with `sudo apt install code`

---

### script3.sh — Directory Permission Audit

Looks at five important Linux directories (`/etc`, `/var`, `/home`, `/usr/bin`, `/tmp`) and shows their permissions, owner, and size. Useful for understanding how access control works on Linux.

```bash
./script3.sh
```

Sample output:
```
===== DIRECTORY AUDIT =====
/etc -> Perm: drwxr-xr-x | Owner: root | Size: 12M
/var -> Perm: drwxr-xr-x | Owner: root | Size: 1.5G
/home -> Perm: drwxr-xr-x | Owner: root | Size: 45G
/usr/bin -> Perm: drwxr-xr-x | Owner: root | Size: 380M
/tmp -> Perm: drwxrwxrwt | Owner: root | Size: 4.0K
===== END =====
```

---

### script4.sh — Log File Analyzer

Reads `/var/log/syslog` and shows the total line count, last 5 entries, and how many error messages are in there.

```bash
./script4.sh
```

Sample output:
```
===== LOG ANALYZER =====
Analyzing /var/log/syslog
Total lines:
3521 /var/log/syslog
Last 5 entries:
Jun 10 11:58:01 sushant-pc kernel: ...
...
Error count:
12
===== DONE =====
```

> If you get a "permission denied" error, run it with `sudo ./script4.sh`

---

### script5.sh — Manifest Generator

Creates a `manifest.txt` file inside the scripts folder. It lists all the project files, shows disk usage, and records who ran it and when.

```bash
./script5.sh
```

This will create a `manifest.txt` in the same folder. Inside it looks something like:

```
===== MANIFEST FILE =====
Generated on: Mon Jun 10 12:05:00 IST 2025

Listing files in project:
...

Disk usage:
52K  ..

User: sushant
```

---

## Quick Reference

| Script | What it does |
|--------|--------------|
| `script1.sh` | Shows system info (OS, CPU, RAM, Disk) |
| `script2.sh` | Checks if VS Code is installed |
| `script3.sh` | Audits directory permissions |
| `script4.sh` | Analyzes system logs |
| `script5.sh` | Generates a project manifest file |

---

## Troubleshooting

**Permission denied when running a script** — run `chmod +x *.sh` first

**`code: command not found` in script2** — VS Code isn't installed. Install it with `sudo apt install code`

**Log file not found in script4** — try running with `sudo`, or check if `/var/log/syslog` exists on your system

**`lscpu` not found** — run `sudo apt install util-linux`

---

*Submitted by Sushant Agarwal | Reg. No. 24BAI10669 | Open Source Software — Vityarthi*