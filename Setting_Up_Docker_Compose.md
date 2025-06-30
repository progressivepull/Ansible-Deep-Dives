# Setting Up Docker Compose
Setting up our lab environment using Docker Compose

After installing Docker, we will:

**1.Set up our lab environment using Docker Compose**
Docker Compose is included with Docker Desktop and allows us to easily run multi-container applications with shared networking.

**2. Understand Ansible connectivity**

* Ansible is agentless, meaning it doesn’t require an agent on the target hosts.

* It does require connectivity from the Ansible control host to the inventory targets, typically via SSH on Linux systems.

**3. Configure passwordless SSH connectivity**
* We will set up SSH keys so that our Ansible control host can connect to the target hosts without requiring passwords each time.

**4. Set up the course code repository**
* Finally, we will clone and validate the course repository to ensure our environment is ready for the hands-on labs.