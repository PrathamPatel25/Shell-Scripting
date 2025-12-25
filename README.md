# 🐚 Shell Scripting – Learning & DevOps Practice Repository

This repository is a **structured collection of Shell scripts** created for **learning Linux shell scripting** and applying it from a **DevOps perspective**.
The scripts are organized by **difficulty level** and **real-world DevOps use cases**, making this repository suitable for:

- 🎓 College labs & viva
- 💼 Interview preparation
- ⚙️ DevOps fundamentals
- 🧑‍💻 Linux system administration practice

---

## 📁 Repository Structure

```
DevOps_Perspective/
│
├── 1_Easy_Level/
│   ├── app_health_check.sh
│   ├── devops_installer.sh
│   └── log_cleanup.sh
│
├── Learning_Purpose/
│   ├── 1_Easy_Level/
│   │   ├── backup.sh
│   │   ├── file_organizer.sh
│   │   └── system_info.sh
│   │
│   └── 2_Medium_Level/
│       ├── disk_monitor.sh
│       ├── log_analyzer.sh
│       ├── server.log
│       └── user_management.sh
│
└── README.md
```

---

## 🟢 Learning Purpose Scripts

These scripts are focused on **building shell scripting fundamentals**, starting from basics and gradually moving to logical and system-level scripting.

### 📘 Easy Level (Basics)

| Script Name         | Description                                                                                                             |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `file_organizer.sh` | Organizes files into folders based on file extensions and moves files without extensions into a `miscellaneous` folder. |
| `system_info.sh`    | Displays system-related information such as user, OS details, kernel version, disk usage, memory usage, and uptime.     |
| `backup.sh`         | Creates a compressed `.tar.gz` backup of a directory with current date and time in the filename.                        |

---

### 📙 Medium Level (Logic + System Interaction)

| Script Name          | Description                                                                                      |
| -------------------- | ------------------------------------------------------------------------------------------------ |
| `user_management.sh` | Menu-driven script to create, delete, and list system users. Includes root privilege validation. |
| `log_analyzer.sh`    | Analyzes a log file to count ERROR messages, WARNING messages, and unique IP addresses.          |
| `disk_monitor.sh`    | Monitors disk usage and alerts when usage exceeds a defined threshold. Suitable for cron jobs.   |

---

## 🔵 DevOps Perspective Scripts

These scripts represent **real-world DevOps and system administration use cases** and are suitable for automation and production-like environments.

### 📗 Easy Level (DevOps-Oriented)

| Script Name           | Description                                                                                                                |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `devops_installer.sh` | Automatically installs essential DevOps tools such as Git, Docker, and Python on a fresh Linux system.                     |
| `app_health_check.sh` | Checks whether an application process is running, verifies if a port is open, and validates the HTTP response status code. |
| `log_cleanup.sh`      | Deletes log files older than a specified number of days to prevent disk space issues. Cron-compatible.                     |

---

## ▶️ How to Run Scripts

```bash
chmod +x script_name.sh
./script_name.sh <arguments>
```

⚠️ Some scripts require **root privileges**:

```bash
sudo ./script_name.sh
```

---

## ⏰ Automation with Cron (Example)

```bash
crontab -e
```

```bash
0 2 * * * /full/path/to/log_cleanup.sh
*/10 * * * * /full/path/to/disk_monitor.sh
```

---

## 🎯 Learning Outcomes

By working through this repository, you will:

- Understand shell scripting fundamentals
- Learn Linux system and file management
- Practice log analysis and monitoring
- Automate routine admin and DevOps tasks
- Build scripts suitable for cron automation
- Strengthen DevOps interview readiness

---

## 📌 Recommended Usage

- Beginners should start with **Learning_Purpose → Easy_Level**
- Progress to **Medium_Level** scripts
- Finally explore **DevOps_Perspective** scripts for real-world automation

---

✨ _Happy Shell Scripting & DevOps Learning!_

---

## 📘 Reference Material

- **Shell_Scripting_Practice.pdf** is included in this repository.
- This PDF contains the **complete list of problem statements**, explanations, and learning objectives for shell scripting from **basic to advanced DevOps use cases**.
- The scripts implemented in this repository are **based on problems from this PDF**.

---

## 🚧 Work in Progress

- I am actively **working on solving additional problems** from `Shell_Scripting_Practice.pdf`.
- More scripts will be added gradually under appropriate **Learning Purpose** or **DevOps Perspective** folders.
- Future additions will cover:

  - Advanced automation
  - CI/CD scripting
  - Reliability & monitoring use cases
  - Production-grade DevOps scenarios

Stay tuned for updates 🚀
