#!/usr/bin/env bash
echo -n "Enter the new user to add : "
read new_user
echo -n "Enter a valide admin user : "
read user
echo -n "Enter the the admin user password : "
read -s password
ansible-playbook add_to_sudoers.yml -i ././../../Inventories/inventory.ini -u ${user} --extra-vars "ansible_sudo_pass=$password ansible_ssh_pass=$password ansible_ssh_user=$user new_user=$new_user" -vvv