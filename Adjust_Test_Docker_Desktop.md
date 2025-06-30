**1. Adjust Docker Settings (Optional)**

* Navigate to Preferences > Resources to allocate more CPU and memory if your machine allows.

* Review File Sharing to see which directories can be bind mounted into Docker

**2.Test Docker Installation**

* Open Terminal and run:

``` bash
docker run -it --rm ubuntu bash
```

| **Part**     | **Meaning**                                                                                                                                                                                                                                             |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `docker run` | Tells Docker to **run a container**.                                                                                                                                                                                                                    |
| `-it`        | Combines two flags: <br> • `-i` keeps STDIN open (interactive mode). <br> • `-t` allocates a pseudo-TTY, giving you a terminal interface.<br><br>Together, `-it` allows you to **interact with the container’s shell** as if it were your local terminal. |
| `--rm`       | Automatically **removes the container** when you exit it, preventing accumulation of stopped containers.                                                                                                                                                |
| `ubuntu`     | Specifies the **image to run**. Here, it pulls and runs the official Ubuntu image from Docker Hub if not already downloaded locally.                                                                                                                    |
| `bash`       | The **command to run inside the container**. In this case, it starts the Bash shell, giving you an interactive Ubuntu shell session.                                                                                                                    |


* This command pulls down the Ubuntu image and launches it in an interactive container with Bash.

* Inside the container, run:
  
``` bash
uname -a
cat /etc/os-release
```
* This verifies that you are inside the Ubuntu container.
  
**3. Exit the container by typing:**

``` bash
exit
```