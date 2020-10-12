# Hasura

Hasura - instant GraphQL with built-in authorization for your data

## Setup stack

1. Download template

```
curl -LJO https://raw.github.com/DistilleryTech/playground/main/hasura%2Bfirebase/hasura.yml
```

2. Change secrets, passwords, CORS list
3. Customize JWT secret with firebase creds:

   - audience = `<firebase-project-id>`
   - issuer = `https://securetoken.google.com/<firebase-project-id>`

4. Deploy stack

```
docker stack deploy --compose-file hasura.yml --prune  hasura
```
