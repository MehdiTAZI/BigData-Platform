#!/usr/bin/env bash
echo -n "Enter new user account : "
read user_to_add
echo -n "Enter the user group : "
read group_to_add

ansible-playbook new-user.yaml -i inventories/hadoop_env.ini   --extra-vars "user_to_add=$user_to_add group_to_add=$group_to_add"  --ask-sudo-pass