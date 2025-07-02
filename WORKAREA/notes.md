# sudo adduser john
Adding user `john' ...
Adding new group `john' (1001) ...
Adding new user `john' (1001) with group `john' ...
Creating home directory `/home/john' ...
Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for john
Enter the new value, or press ENTER for the default
        Full Name []: john smith
        Room Number []: 1
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] Y
# sudo john 
sudo: john: command not found
# su john
john@ubuntu-c:/root$ cd ~
john@ubuntu-c:~$ ls
john@ubuntu-c:~$ pwd
/home/john
john@ubuntu-c:~$ ^C
john@ubuntu-c:~$ 


Linux root users us $
Ah, I see where the confusion might be. In Linux, the command prompt symbol gives you a quick visual cue about the user's privilege level:

$ — This symbol indicates you're logged in as a regular (non-root) user.

# — This symbol means you're operating as the root user (or using elevated privileges via sudo or su).

So if your terminal shows a $, you're in safe, non-destructive territory. If it shows #, tread carefully—you’ve got superpowers, and with great power comes... well, you know the rest.

Want to explore how to safely switch between users or set up sudo access for specific tasks?

create regular (non-root) user
Here's how you can create a regular (non-root) user in Linux using the command line:

🧰 Basic Command
bash
sudo adduser johndoe
This creates a new user named johndoe.

It automatically prompts for password and user details.

The sudo prefix ensures the command is run with root privileges.

📂 Home Directory & Shell
By default, adduser:

Creates a home directory at /home/johndoe

Assigns the default shell, usually /bin/bash


