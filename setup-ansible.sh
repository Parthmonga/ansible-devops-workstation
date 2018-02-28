#!/usr/bin/env bash
# ------------------------------------------------------------------------
# Simple bash script used to bootstrap ansible
#
# I don't want to use PIP for this. I have my reasons.
#
# Brent WG
# 2018-02-27
# ------------------------------------------------------------------------

# Get distro
## Deal with RHEL...
if [ -f /etc/redhat-release ]; then
	distro=$(cat /etc/redhat-release | awk '{print $1}')
	## Deal with Fedora (assume >=27, so assume dnf)
	if [ $distro = 'Fedora' ]; then
		sudo dnf install -y ansible
	fi
	## Deal with CentOS (assume >=7, so assume yum + EPEL)
fi	

## Deal with Ubuntu
# TODO

