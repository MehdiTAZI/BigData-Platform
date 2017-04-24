#!/usr/bin/env bash
ansible-playbook mongodb_setup.yaml -i inventories/mongodb_env.ini --ask-sudo-pass