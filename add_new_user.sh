#!/bin/bash

add_user() {
    sudo useradd $1 -m -s /bin/bash -g users
    sudo passwd $1
}

usage() {
    echo "Enter username"
    echo "Usage: $0 new_username"
}

generate() {
    sudo mkdir /home/"$1"/.ssh
    chmod 777 .ssh
    cd /home/"$1"/.ssh
    ssh-keygen -t rsa -C $1
}

[[ $# -eq 0 ]] && usage || ( add_user "$1" && generate "$1" )