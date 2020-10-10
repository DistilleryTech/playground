#/bin/bash
apt-get remove docker docker-engine docker.io containerd runc
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
apt install apache2-utils
mkdir -p /root/Playground/management && \
  cd /root/Playground/management && \
  htpasswd -cB .htpasswd traefik
touch acme.json && chmod 660 acme.json
docker network create -d overlay traefik
curl -LJ --remote-name-all https://raw.github.com/DistilleryTech/playground/main/management/{management.yml,traefik.toml}

read -p 'Your private network IP: ' privateip
docker swarm init  --advertise-addr $privateip
