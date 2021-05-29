# eServer Deployment Scripts

This repository contains deployment scripts for my multi-purpose home server called **eServer**.

## Prerequisites

* [Pipenv](https://pipenv.pypa.io/en/latest/)

## Usage

First, make sure your SSH config grants you access to the hosts in `inventories/hosts.yml`.

Then install all dependencies and activate the virtual environment:

```shell
$ pipenv install 
$ pipenv shell
```

### Health check

Make sure your connections are okay:

```shell
$ ansible -m ping all
```

### Provisioning

Start provisioning:

```shell
$ ansible-playbook playbooks/eserver.yml --diff
```

Add `--check` or `-C` to the above command to do a dry-run.

## Secrets

Secrets are managed by `ansible-vault`. Create a `.vault_password` file in the root containing the vault 
password if one doesn't already exist, then edit secrets using the following command:

```shell
$ ansible-vault edit inventories/<...>/secrets.yml
```
