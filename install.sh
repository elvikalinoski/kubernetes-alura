#!/bin/bash

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

# Atualizando pacotes
sudo apt update

# Instalando o curl
sudo apt-get install curl -y

# Instalando o VirtualBox 6.1.18
./conf/virtualbox.sh

# Instalando o kubectl
./conf/kubectl.sh

# Instalando o minikube
./conf/minikube.sh

# Start minikube
minikube start --vm-driver=virtualbox

# Abre o Vscode
vscode .
