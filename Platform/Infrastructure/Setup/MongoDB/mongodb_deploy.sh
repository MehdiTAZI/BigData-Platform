#!/usr/bin/env bash
ansible-playbook mongodb_deploy.yaml -i inventories/mongodb_env.ini --ask-sudo-pass