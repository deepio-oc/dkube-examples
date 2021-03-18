#!/bin/bash
USERID=`stat -c %u /home/$USERNAME`
adduser --disabled-password --uid $USERID --gecos '' $USERNAME
adduser $USERNAME sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
su $USERNAME -c "cd /home/$USERNAME; jupyter lab --ip=0.0.0.0 --port=8888 --allow-root $DKUBE_NB_ARGS"