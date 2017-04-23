#!/usr/bin/env bash
ansible-playbook -i inventories/hadoop_env.ini init-environment.yaml --ask-sudo-pass