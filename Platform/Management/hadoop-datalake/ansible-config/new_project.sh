#!/usr/bin/env bash
echo -n "Enter the project name : "
read project_name
while [[ "$project_type" != "DRY" ]] && [[ "$project_type" != "RUN" ]] && [[ "$project_type" != "LAB" ]]
do
echo -n "Enter the project type (DRY->Sandbox/Dry Project OR RUN-> Runnable Business as usual project OR LAB --> Exploratory or PoC Project) : "
read project_type
done
echo -n "Enter the project group name : "
read project_group_name

ansible-playbook new-project.yaml -i inventories/hadoop_env.ini   --extra-vars "project_name=$project_name project_type=$project_type project_group_name=$project_group_name"  --ask-sudo-pass