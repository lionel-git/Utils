#!/bin/bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
wget -q https://packages.microsoft.com/config/fedora/27/prod.repo
sudo mv prod.repo /etc/yum.repos.d/microsoft-prod.repo
sudo chown root:root /etc/yum.repos.d/microsoft-prod.repo
