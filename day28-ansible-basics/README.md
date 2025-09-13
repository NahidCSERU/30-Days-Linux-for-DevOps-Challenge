# Day 28 – Ansible Basics

## Overview
This project demonstrates the basics of **Ansible** including:
- Running ad-hoc commands
- Creating simple playbooks
- Managing roles and tasks

Ansible is a powerful automation tool for configuration management, application deployment, and task orchestration.



## Prerequisites
- Ansible installed on the control node
- At least 1 managed host with SSH access
- Python installed on managed hosts



## Inventory File (`hosts`)
```
[webservers]
web1 ansible_host=192.168.56.101 ansible_user=ubuntu

[dbservers]
db1 ansible_host=192.168.56.102 ansible_user=ubuntu
```
## Ad-Hoc Commands Examples

You can run simple commands without a playbook:
```
# 1. Ping all hosts
ansible all -i hosts -m ping

# 2. Check uptime
ansible all -i hosts -a "uptime"

# 3. Install a package (Apache)
ansible webservers -i hosts -m apt -a "name=apache2 state=present" -b

# 4. Restart a service
ansible webservers -i hosts -a "systemctl restart apache2" -b
```
## Key Commands

- Run playbook:
```
ansible-playbook -i hosts playbooks/install_apache.yml
ansible-playbook -i hosts playbooks/deploy_app.yml
```

- Check hosts status:
```
ansible all -i hosts -m ping
```

- List all modules:
```
ansible-doc -l
```

- Run ad-hoc commands for tasks like package install, service restart, file copy

This structure provides a **full GitHub-ready project** for beginners to learn Ansible basics, ad-hoc commands, and playbook deployment.