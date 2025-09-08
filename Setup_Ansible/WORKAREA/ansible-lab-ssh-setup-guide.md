# Guide: Configuring SSH Connectivity Between Hosts in Ansible Lab (Google Cloud Shell)

## 1. Introduction

In this guide, you’ll configure SSH connectivity between your Ansible control node and target hosts. Ansible uses agentless architecture, requiring passwordless (trusted) SSH connections for automated management.

---

## 2. SSH Connection Workflow

When you initiate an SSH connection (e.g., from `Ubuntu-C` to `Ubuntu-1`), the following sequence occurs:

1. **Protocol Negotiation:**  
   SSH client and server exchange their supported protocol versions. If compatible, they proceed.

2. **Key Exchange:**  
   Both sides negotiate cryptographic primitives and establish a session key (usually via Diffie-Hellman).

3. **Host Verification:**  
   The client is prompted to verify the server’s fingerprint. Once accepted, it’s saved in the client’s `~/.ssh/known_hosts` file.

4. **Session Establishment:**  
   The SSH connection is now secure. The client is prompted for authentication (e.g., password).

5. **Authentication:**  
   Upon entering the correct password, access to the remote host is granted.

---

## 3. Lab Steps: Initial SSH Connection

1. **Open the Ansible Lab Portal:**
   - Navigate in your browser to `localhost:1000`.
   - Select **Ansible Terminal**.
   - Choose `Ubuntu-C` and log in as user `ansible` with password `password`.

2. **Attempt SSH Connection:**
   - Run:  
     ```sh
     ssh ubuntu1
     ```
   - Accept the fingerprint when prompted (writes it to `~/.ssh/known_hosts`).
   - Enter the password: `password`.

3. **Inspect Known Hosts:**
   - List hidden files:  
     ```sh
     ls -a ~/.ssh
     ```
   - View the `known_hosts` contents:  
     ```sh
     cat ~/.ssh/known_hosts
     ```
   - Note: Entries may appear for both hostnames and IPs.

4. **Verify Fingerprints:**
   - Generate and compare fingerprints:
     ```sh
     ssh-keygen -lf ~/.ssh/known_hosts
     ```
   - You may see entries for both hostname and IP address.

5. **Reconnecting After Deleting Known Hosts:**
   - Remove the file:
     ```sh
     rm ~/.ssh/known_hosts
     ```
   - Reconnect and re-accept the fingerprint.

---

## 4. Passwordless SSH for Ansible

To automate Ansible, you’ll set up SSH key-based authentication:

### A. Generate SSH Key Pair (on control node: Ubuntu-C)
```sh
ssh-keygen
```
- Accept defaults (press Enter at prompts).

### B. View Generated Keys
```sh
ls ~/.ssh/
cat ~/.ssh/id_rsa.pub   # Public key to share
cat ~/.ssh/id_rsa       # Private key (keep secure)
```

### C. Copy Public Key to Targets
- Use `ssh-copy-id` (simplifies permissions and setup):
  ```sh
  ssh-copy-id ansible@ubuntu1
  ```
- Enter the password when prompted (`password`).
- Repeat for each target host (e.g., `ubuntu2`, `ubuntu3`, `centos1`, etc.).

**Tip:** You can automate this for multiple hosts.

### D. Test Passwordless SSH
```sh
ssh ubuntu1
```
- You should connect without a password prompt.

---

## 5. Automating SSH Key Distribution

### A. Install `sshpass` (for scripting)
```sh
sudo apt update
sudo apt install sshpass
```

### B. Create a Password File
```sh
echo password > password.txt
```

### C. Automate with a Loop (example for multiple users/hosts)
```sh
for user in ansible root; do
  for host in ubuntu1 ubuntu2 ubuntu3 centos1 centos2 centos3; do
    sshpass -f password.txt ssh-copy-id $user@$host
  done
done
```
- Accept fingerprints and enter passwords when prompted.
- Repeat as needed for all users and hosts.

---

## 6. Summary

- You have established passwordless SSH connectivity from your Ansible control node to all managed hosts.
- Ansible can now connect and manage hosts without interactive password entry.

**Continue to the next section to further configure and use your Ansible lab.**