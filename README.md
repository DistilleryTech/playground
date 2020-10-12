# Playground for web projects

Infrastructure is based on Docker Swarm which allows to reuse your experience with local docker-compose.yml, Traefik - load balancer with Let's encrypt certificate support, Swarmpit - management console for Docker Swarm

- SSL (Let's Encrypt)
- CI/CD integration (redeploy on build)

## How to deploy your project

Contact your department head, provide docker-compose.yml file

## How to make your own self-hosted playground

If you want to setup plauground on your own server (VDS/VPS). [Read here how to setup Docker Swarm + Traefik](https://github.com/DistilleryTech/playground/blob/main/management/playground-setup.md)

After that you can install Swarmpit. [Read here how to setup Swarmpit](https://github.com/DistilleryTech/playground/blob/main/swarmpit/swarmpit-setup.md) - powerful console for Docker Swarm. It also monitor changes in docker repositories and redeploy updated images.

# Project templates

We have a number of templates which will help you to rapidly prototype new projects

## Hasura

Hasura provides a way for no-code prototyping backend with GraphQL interface.
It supports authentication via Firebase, Auth0, Cognito, AuthGuardian and custom autentication.

Read more [here](https://github.com/DistilleryTech/playground/blob/main/hasura%2Bfirebase/hasura-setup.md)
