#! /bin/bash
useradd -m -s /bin/bash -p safEGC./HLP8U ansible
usermod -aG sudo ansible
mkdir -p /home/ansible/.ssh
chown -R ansible /home/ansible
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAguQblkb4roBPu+vo13P1c2us+J7iLLeMwdxGOAdwuN' mischa@LUD | sudo tee -a /home/ansible/.ssh/authorized_keys
echo 'ansible ALL=(ALL) NOPASSWD: ALL' | sudo tee /etc/sudoers
