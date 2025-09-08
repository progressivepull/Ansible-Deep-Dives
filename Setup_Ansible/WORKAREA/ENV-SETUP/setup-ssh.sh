#!/bin/bash
# This script sets up SSH key-based authentication for ansible and root users
# across all containers. Intended to be mounted as an init script.

set -e

USERS=("ansible" "root")
TARGETS=("ubuntu1" "ubuntu2" "ubuntu3" "centos1" "centos2" "centos3")

# Generate SSH key for ansible user if not exists
for USER in "${USERS[@]}"; do
  USER_HOME=$(eval echo "~$USER")
  if [ ! -f "$USER_HOME/.ssh/id_rsa" ]; then
    mkdir -p $USER_HOME/.ssh
    ssh-keygen -t rsa -N "" -f $USER_HOME/.ssh/id_rsa
    chown -R $USER:$USER $USER_HOME/.ssh
    chmod 700 $USER_HOME/.ssh
    chmod 600 $USER_HOME/.ssh/id_rsa
    chmod 644 $USER_HOME/.ssh/id_rsa.pub
  fi
done

# Copy public keys to all targets for both ansible and root users
for USER in "${USERS[@]}"; do
  USER_HOME=$(eval echo "~$USER")
  PUB_KEY=$(cat $USER_HOME/.ssh/id_rsa.pub)
  AUTH_KEYS="$USER_HOME/.ssh/authorized_keys"
  touch $AUTH_KEYS
  if ! grep -q "$PUB_KEY" "$AUTH_KEYS"; then
    echo "$PUB_KEY" >> $AUTH_KEYS
  fi
  chown $USER:$USER $AUTH_KEYS
  chmod 600 $AUTH_KEYS
done

# NOTE: This script sets up passwordless SSH only within the same container image.
# For full lab automation, use Ansible's authorized_key module or ssh-copy-id from
# the control host to distribute keys to all containers after startup.