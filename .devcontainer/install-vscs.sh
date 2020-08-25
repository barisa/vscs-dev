#!/bin/bash

# Install Linux Tools
sudo apt-get install htop less chromium-browser
export CHROME_BIN=/usr/bin/chromium-browser

# Install SDK MAN
echo ""
echo "-----------------------------------"
echo "Install SDK MAN ..."

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "Install SDK MAN ... succesfull"

# Install JDK 11
echo ""
echo "-----------------------------------"
echo "Install JDK 11 ..."
source "/home/codespace/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.8.hs-adpt
echo "Install JDK 11 ... succesfull"

# Install Docker-Compose
echo ""
echo "-----------------------------------"
echo "Install dokcer-compose ..."
sudo sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "Install dokcer-compose ... succesfull"

# Install kubectl
echo ""
echo "-----------------------------------"
echo "Install kubectl ..."
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client
echo "Install kubectl ... succesfull"

# Install K3D
echo ""
echo "-----------------------------------"
echo "Install K3D ..."
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
# k3d cluster create mycluster
echo "Install K3D ... succesfull"

# Install Angular CLI
npm install -g @angular/cli

# Disbale dev git repos 
mv .git .git.disbaled

