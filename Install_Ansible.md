# Install Ansible

##🪟 Windows
Ansible doesn't run natively on Windows, but you can use it via:

## Windows Subsystem for Linux (WSL)
1. Install WSL and a Linux distribution (like Ubuntu) from the Microsoft Store.

2. Open the WSL terminal and follow the Linux installation steps

### ✅ Verify Installation Windows Subsystem for Linux (WSL)

1. Open **Command Prompt** or **PowerShell** Press Win + R, type cmd or powershell, and hit Enter.
2. Run the WSL version check command:
``` bash
wsl.exe --version
```
This will show the installed WSL version and confirm if it's available.

3. List installed distributions:
``` bash
wsl.exe --list --verbose
```
This shows all installed Linux distributions and their current state.

4. Launch a Linux shell:
 ``` bash
wsl.exe
```