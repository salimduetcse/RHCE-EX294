# Lesson-1
# What is Ansible.
Ansible is an open-source IT automation and configuration management tool used to automate tasks such as:
- Server provisioning
- Application deployment
- Configuration management
- Cloud infrastructure management
- Orchestration of complex workflows
It was originally developed by Michael DeHaan and is now maintained by Red Hat.

# How Ansible Works
Ansible uses a control node (the machine running Ansible) to manage target nodes (servers or devices).

- Ansible is agentless
- No software needs to be installed on managed Linux servers.
- It typically connects via SSH.
- For Windows systems, it uses WinRM.

# YAML : 
YAML stands for "YAML Ain't Markup Language". It is a human-readable data serialization format commonly used for configuration files and automation tools such as Ansible, Kubernetes, and Docker Compose.

# Key Concepts
Inventory: A list of hosts or servers Ansible manages.
Playbooks:YAML files that describe automation tasks.
# Ansible Playbook Example
```yaml
---
- hosts: webservers
  become: yes
  tasks:
    - name: Install Apache
      yum:
        name: httpd
        state: present
    - name: Start Apache
      service:
        name: httpd
        state: started
```
```yaml
--- 
- hosts: webservers
  become: yes
  tasks:
    - name: Install Nginx
      apt:
        name: nginx
        state: present
    - name: Start Nginx
      service:
        name: nginx
        state: started
```

# Modules
Reusable units of work (e.g., apt, yum, service, copy, file, user).
# Roles
A way to organize playbooks and reusable automation code.

# Common Use Cases
Deploying applications : 
- Install dependencies
- Copy application files
- Restart services
Managing server configurations : 
- Create users
- Configure firewalls
- Install packages
Cloud automation : 
- Create AWS, Azure, or GCP resources
- Configure networking and security groups
CI/CD pipelines: 
Automate deployments after code changes

# Why People Use Ansible

- Easy to learn (uses YAML) 
- Agentless architecture
- Human-readable playbooks
- Large ecosystem of modules
- Good for both small and large infrastructures
Example Command
- Run a command on all servers in a group: ansible webservers -m ping
- Deploy a playbook: ansible-playbook deploy.yml

Ansible vs Other Tools
|Tool	    | Primary Focus|
|-----------|-----------------|
Ansible	    | Configuration management & automation
Puppet	    | Configuration management (agent-based)
Chef	    | Configuration management (Ruby-based)
Terraform	| Infrastructure provisioning
Kubernetes	| Container orchestration

Terraform creates infrastructure, Ansible configures it, and Kubernetes runs containerized applications on it.

# Lesson-2
# Installing Ansible
![alt text](<lab requirement.png>)
<br> <br>
![alt text](<requirement using ansible.png>) <br>
# vm architecture

![alt text](<vm architecture.png>)
