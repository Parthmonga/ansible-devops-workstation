#!/usr/bin/env bash
# ------------------------------------------------------------------------
# Wrapper script used to install requirements and run the playbook
#
# Brent WG
# 2018-02-27
# ------------------------------------------------------------------------

# Install the required roles
ansible-galaxy install -r ./requirements.yml

# Execute the playbook
ansible-playbook ./main.yml

