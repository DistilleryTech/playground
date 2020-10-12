# Hasura

Hasura - instant GraphQL with built-in authorization for your data

## Setup stack

1. Download template

```
curl -LJO https://raw.github.com/DistilleryTech/playground/main/hasura+firebase/hasura.yml
```

2. Change secrets, passwords, CORS list
3. Customize JWT secret with firebase creds:

   - audience = &lt;firebase-project-id&gt;
   - issuer = https://securetoken.google.com/&lt;firebase-project-id&gt;

4. Deploy stack

```
docker stack deploy --compose-file hasura.yml --prune  hasura
```
