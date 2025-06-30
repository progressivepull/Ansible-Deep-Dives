# Setting Up Docker Compose
Setting up our lab environment using Docker Compose

After installing Docker, we will:

**1. Set up our lab environment using Docker Compose**
* Docker Compose is included with Docker Desktop and allows us to easily run multi-container applications with shared networking.

### Setup on Linux

**Install Docker Compose (Recommended Method)**
* ⚠️ Avoid using apt or yum to install Docker Compose. These often provide outdated versions.

**Why This Matters:**
* Even on the latest Ubuntu Desktop, apt install docker-compose may install version 1.27.

* The minimum recommended version is 1.29, the final release of the v1 branch.

**✅ Official Installation Method**
* Visit the official Docker Compose install page: https://docs.docker.com/compose/cli-command/#install-on-linux

* Copy and run the following commands from the page:
  
``` bash
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
```
**(Optional but Recommended): Make Docker Compose globally available:**

``` bash
sudo cp ~/.docker/cli-plugins/docker-compose /usr/local/bin/docker-compose
```

## ✅ Verifying the Installation
You can now run Docker Compose in two ways:

``` bash
docker compose version
docker-compose version
```
Both commands should return the same version number, confirming that Docker Compose is correctly installed and accessible.

**2. Understand Ansible connectivity**

* Ansible is agentless, meaning it doesn’t require an agent on the target hosts.

* It does require connectivity from the Ansible control host to the inventory targets, typically via SSH on Linux systems.

**3. Configure passwordless SSH connectivity**
* We will set up SSH keys so that our Ansible control host can connect to the target hosts without requiring passwords each time.

**4. Set up the course code repository**
* Finally, we will clone and validate the course repository to ensure our environment is ready for the hands-on labs.