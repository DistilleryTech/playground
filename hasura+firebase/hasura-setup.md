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

## Explanation

Usage: visit https://your-domain
Login with password specified in HASURA_GRAPHQL_ADMIN_SECRET variable

This template includes Firebase authentication integration.

Dont forget to add your web clients` adresses to [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) list.

Also it has 2 special roles:

- admin - special "God" role with password-authentication. Use it to configure Hasura. You can disable it by commenting out "HASURA_GRAPHQL_ADMIN_SECRET" environment variable in hasura.yml and redeploy stack.
- anonymous - role assumed to unauthenticated users. This make your service public. To disable unauthenticated access comment out "HASURA_GRAPHQL_UNAUTHORIZED_ROLE" environment variable.
