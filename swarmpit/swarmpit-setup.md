# Swarmpit

Swarmpit provides simple and easy to use interface for your Docker Swarm cluster. You can manage your stacks, services, secrets, volumes, networks etc. After linking your Docker Hub account or custom registry, private repositories can be easily deployed on Swarm. Best of all, you can share this management console securely with your whole team.

## Setup stack

1. Download template

```
curl -LJO https://raw.github.com/DistilleryTech/playground/main/swarmpit/swarmpit.yml
```

2. Change `swarmpit.pg.distillery.com` to your domain

3. Deploy stack

```
docker stack deploy --compose-file swarmpit.yml --prune  swarmpit
```

4. Initialization

Go to https://<YOUR-DOMAIN> and set admin user name and password
