# How to setup Playground

## Install Docker Swarm

1. Uninstall existing Docker

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
```

2. Install Docker

```bash
sudo apt-get update
```

```bash
sudo apt-get install \
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
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

```
sudo apt-get update
```

```
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

3. Init Docker Swarm

```
docker swarm init  --advertise-addr <INTERNAL_IP>
```
