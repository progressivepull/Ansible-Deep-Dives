
To build Docker images from Dockerfiles that are not named Dockerfile (e.g., Dockerfile.ansible, Dockerfile.ubuntu, Dockerfile.centos), you need to specify the **-f** flag with the **docker build** command to point to the correct file.

Here are the commands for each Dockerfile (replace **<tagname>** with whatever name/tag you want for the built image):

``` sh
# Build from Dockerfile.ansible
docker build -f Dockerfile.ansible -t <tagname-ansible> .

# Build from Dockerfile.ubuntu
docker build -f Dockerfile.ubuntu -t <tagname-ubuntu> .

# Build from Dockerfile.centos
docker build -f Dockerfile.centos -t <tagname-centos> .
```
**Example with tags:***
``` sh
docker build -f Dockerfile.ansible -t my-ansible-image .
docker build -f Dockerfile.ubuntu -t my-ubuntu-image .
docker build -f Dockerfile.centos -t my-centos-image .
```

**Key points:**

* The -f flag tells Docker which file to use.
* The -t flag gives your image a name (and optional tag, e.g., my-image:latest).
* The . at the end tells Docker to use the current directory as the build context.

**If you use docker-compose and want to reference these Dockerfiles:** In your docker-compose.yml, you can specify the dockerfile property:

``` yaml
services:
  my_ansible_service:
    build:
      context: .
      dockerfile: Dockerfile.ansible
  my_ubuntu_service:
    build:
      context: .
      dockerfile: Dockerfile.ubuntu
  my_centos_service:
    build:
      context: .
      dockerfile: Dockerfile.centos
```

