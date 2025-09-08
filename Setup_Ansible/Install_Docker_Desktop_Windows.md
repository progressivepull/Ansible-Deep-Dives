# Install Docker Desktop

Here's a step-by-step guide to help you install Docker Desktop on Windows:

## 🖥️ System Requirements
Before you begin, make sure your system meets these requirements:

* Windows 10/11 64-bit: Home, Pro, Enterprise, or Education (version 22H2 or higher)

* WSL 2 (Windows Subsystem for Linux) enabled

* Hardware virtualization enabled in BIOS

* At least 4 GB RAM

---

## 🛠️ Installation Steps
**1. Download Docker Desktop**
* Go to the [official Docker Desktop download page](https://docs.docker.com/desktop/setup/install/windows-install/)

* Choose the version for your system (x86_64 or ARM)

**2. Run the Installer**
* Locate the downloaded **.exe** file

* Double-click to launch the installer

* Follow the prompts and accept the license agreement

**3. Enable WSL 2 (if prompted)**
* Docker Desktop prefers WSL 2 for better performance

* If not already installed, the installer will guide you through setting it up

**4. Complete Installation**
* Choose whether to use WSL 2 or Hyper-V (WSL 2 is recommended)

* Finish the installation and restart your computer if required

**5. Launch Docker Desktop**
* Open Docker Desktop from the Start menu

* Wait for it to initialize (this may take a minute)

**6. Verify Installation**
* Open PowerShell or Command Prompt

* Run:

 ``` bash
 docker --version
 ``` 
 You should see the installed Docker version

## 🧠 Tips
* Enable virtualization in BIOS if Docker fails to start

* Use docker run hello-world to test your setup

* Keep Docker Desktop updated for security and performance

[Ansible Deep Dives Context](./README.md)