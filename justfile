# Install Python, create a virtual environment, and install dependencies
install:
    uv python install 3.13
    uv venv --python 3.13 --clear
    uv sync

# Ping the server to check connectivity
ping:
    uv run ansible -i inventories/hosts.yml -m ping eserver

# Show the inventory
list:
    uv run ansible-inventory -i inventories/hosts.yml --list

# Check the playbook without making changes
check:
    uv run ansible-playbook -i inventories/hosts.yml playbooks/eserver.yml --check --diff

# Apply the playbook to the server
apply:
    uv run ansible-playbook -i inventories/hosts.yml playbooks/eserver.yml --diff

# Run linters
lint:
    uv run ansible-playbook -i inventories/hosts.yml playbooks/eserver.yml --syntax-check
    uv run ansible-lint

# Edit an encrypted vault file
edit $FILE:
    uv run ansible-vault edit $FILE
