# How to setup Playground

Get a VDS with lastest Ubuntu installed. This doc was tested on Ubuntu Server 20.04

## Install Docker Swarm (Automatic)

```
curl -LJO https://raw.github.com/DistilleryTech/playground/main/management/init.sh && \
  chmod ./init.sh && \
  ./init.sh
```

## Install Docker Swarm (Manual)

0. Go Root

```
sudo su
```

1. Uninstall existing Docker

```bash
apt-get remove docker docker-engine docker.io containerd runc
```

2. Install Docker

```bash
apt-get update
```

```bash
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

```
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

```
apt-get update
```

```
apt-get install docker-ce docker-ce-cli containerd.io
```

3. Init Docker Swarm

```
docker swarm init  --advertise-addr <INTERNAL_NETWORK_IP>
```

4. Install htpasswd

```
apt install apache2-utils
```

5. Create password for "traefik" user

```
mkdir -p /root/Playground/management && \
  cd /root/Playground/management && \
  htpasswd -cB .htpasswd traefik
```

6. Create overlay network

```
docker network create -d overlay traefik
```

7. Download configuration

```
curl -LJ --remote-name-all https://raw.github.com/DistilleryTech/playground/main/management/{management.yml,traefik.toml}
```

8. Create acme.json

```
touch acme.json && chmod 600 acme.json
```

## Setup management stack

1. Update configuration

Replace in management.yml

- admin.pg.distillery.com with your domain name

Replace in traefik.toml

- your-name@distillery.com with your email. You will get notifications about Let's encrypt certificates on this address

2. Deploy management stack

```
docker stack deploy --compose-file management.yml --prune  management
```
