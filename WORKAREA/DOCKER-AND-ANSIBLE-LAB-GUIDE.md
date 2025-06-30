# Guide: Setting Up Docker and the Ansible Lab

## 1. Docker Setup

You may use whichever installation method you prefer for Docker—either is fine for continuing. After installing Docker, it’s recommended to add your user to the `docker` group. This allows you to run Docker commands without needing `sudo` each time.

### Steps:
1. **Add your user to the Docker group:**
   ```sh
   sudo usermod -aG docker $USER
   ```
2. **Apply the new group membership:**
   - Log out and back in, or run:
     ```sh
     su - $USER
     ```
   - Enter your password when prompted.

3. **Test Docker:**
   - Run an interactive Ubuntu container and verify access:
     ```sh
     docker run -it --rm ubuntu bash
     ```
   - Once inside, notice the hostname change (you're in the container).
   - Optionally, check the OS release:
     ```sh
     cat /etc/os-release
     ```
   - Type `exit` to leave the container.

### At this point:
- Docker should be installed and working.
- Docker Compose should also be available.  
  - If you used Docker Desktop, Compose is included.
  - On Linux, you may have installed Compose separately.

---

## 2. Setting Up the Ansible Lab

This course provides a lab environment giving you access to Ansible and several guest VMs, either via your web browser or SSH. The lab is hosted on GitHub.

### Steps:
1. **Visit the lab repository:**
   - Navigate to the provided GitHub URL for the Ansible lab.
   - Read the README carefully—it is updated as needed for OS differences or new issues.

2. **Download and configure the lab:**
   - It's recommended to clone the repository into a folder named `dive-into-ansible-lab` inside your home directory.
   - On macOS, Linux, or Windows (with Git), run:
     ```sh
     git clone <repo-url> ~/dive-into-ansible-lab
     ```
     Replace `<repo-url>` with the actual repository link.

3. **Follow the repository’s setup instructions:**
   - The README contains detailed steps for your OS (macOS, Windows, Linux).
   - Ensure Docker and Docker Compose are installed (from the previous steps).

---

## 3. Next Steps

You are now ready to proceed to the next part: installing and configuring your Ansible lab environment.

If you encounter issues, check the repository’s README for updates or troubleshooting tips.

---