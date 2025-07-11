# Install_Docker_Desktop_Linux

## 🐳 Step 1: Install Docker on Linux
Docker simplifies application deployment by using containers. Let’s get it installed on your system.

### ✅ Prerequisites
* A Linux-based system (e.g., Ubuntu, Debian, CentOS)

* **curl** installed (you can install it with **sudo apt install curl** if needed)

* **sudo** privileges
  
## 🧰 Instructions
1. Open Terminal Launch your terminal application. For better readability, maximize the window.

2. Download the Docker installation script This script is provided by Docker and automates the installation process:

``` bash
curl -fsSL https://get.docker.com -o get-docker.sh
```
3. Run the installation script with superuser privileges This command will install Docker Engine and its dependencies:
   
 ``` bash
 sudo sh get-docker.sh
```

4. Authenticate When prompted, enter your system password to authorize the installation.

## 🧪 Verify Installation
After the script completes, confirm Docker is installed correctly:

``` bash
docker --version
```
You should see output like:

``` bash
Docker version 24.0.5, build abcdefg

```

