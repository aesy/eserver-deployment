# eServer Deployment Scripts

## Prerequisites

* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* [Docker](https://docs.docker.com/get-docker/)

## Usage

Create a file called `playbook.yml` in the root based on the contents of `playbook.example.yml`. Change the variables 
and roles as needed. Create another file called `hosts` in the root containing the names of the hosts to deploy to, 
separated by line breaks. These hosts must be accessible through SSH. 

When you're happy with your configuration, go ahead and deploy it:

$ `./deploy.sh`

## Todo

* Migrate traefik 1.x -> 2.x
* Set up host running processes such as docker, sshd, sftp, ntp
* Automatic backups
