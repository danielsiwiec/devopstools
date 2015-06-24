#!/bin/bash

echo "---
- hosts: all
  roles:
    - common" >> playbook.yml

mkdir -p roles/common/tasks

echo "- apt: name={{ item }} state=latest
  sudo: yes
  with_items:
    - vim" >> roles/common/tasks/main.yml
