# Ansible Advanced Course


Welcome to the **Ansible Advanced** series! In these opening lectures, your instructor, John Smith, recaps the beginner course and walks through how this advanced track is structured.

---
<img src="images/john-smith.jpg" alt="Instructor John Smith giving a lecture" width="200"/>


## 1. Course Introduction

- **Instructor**: John Smith, Solutions Architect  
- **Focus**: Advanced Ansible concepts & real-world use cases  
- **Audience**: You’ve completed “Ansible for the Absolute Beginner” or already know the basics  

---

## 2. Prerequisites

Before diving in, make sure you:

1. Speak YAML fluently (Ansible’s DSL)  
2. Understand Ansible’s purpose, inventory files, and basic playbook syntax  
3. Have hands-on experience with the beginner course exercises  

---

## 3. How This Course Works

Each module follows this pattern:

1. **Lecture** – Deep-dive into one concept  
2. **Coding Exercise** – Write and validate playbooks  
3. **Live Demo** – See it all in action, step-by-step  
4. **Bonus Demos** – Explore extra tools (linting, productivity plugins, etc.)
   
---

## 4. About Ansible 

Ansible is an open-source automation tool designed to simplify IT tasks like configuration management, application deployment, and orchestration. Here's a breakdown of what makes Ansible powerful and easy to use:

### ⚙️ What Is Ansible?
* **Automation Engine:** Ansible automates repetitive tasks such as installing software, configuring systems, and managing infrastructure.

* **Agentless:** Unlike other tools, Ansible doesn’t require any software or agent to be installed on the managed nodes. It uses SSH (or WinRM for Windows) to communicate.

* **Written in Python:** It’s built in Python and uses modules to perform tasks on remote systems.

* **Human-Readable Syntax:** Uses YAML for its configuration files (called Playbooks), making it easy to read and write.

### 🧱 Core Components


| **Component**     | **Description**                                                                 |
|-------------------|---------------------------------------------------------------------------------|
| **Control Node**  | The machine where Ansible is installed and from which commands are run.         |
| **Managed Nodes** | The systems (servers, devices) that Ansible manages.                            |
| **Inventory**     | A file listing the managed nodes, grouped by roles or environments.             |
| **Modules**       | Reusable scripts that perform specific tasks (e.g., install a package).         |
| **Tasks**         | Individual actions executed by Ansible modules.                                 |
| **Playbooks**     | YAML files that define a series of tasks to be executed on managed nodes.       |

### 📘 Example Playbook

``` yml
---
- name: Install Apache on all web servers
  hosts: webservers
  become: yes
  tasks:
    - name: Ensure Apache is installed
      apt:
        name: apache2
        state: present

```
This playbook installs Apache on all hosts in the webservers group.

### 🚀 Why Use Ansible?
* **Simple to Learn:** No programming required—just YAML.

* **Scalable:** Manage thousands of nodes from a single control node.

* **Idempotent:** Running the same playbook multiple times won’t change the system if it’s already in the desired state.

* **Secure:** Uses SSH and doesn’t require open ports or agents.


[Ansible Deep Dives Context](./README.md)