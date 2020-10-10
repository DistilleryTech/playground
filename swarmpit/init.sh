#!/bin/bash
curl -LJ --remote-name-all https://raw.github.com/DistilleryTech/playground/main/swarmpit/{swarmpit.yml}
read -p 'Input domain name: ' domainname
sed -i 's/swarmpit.pg.distillery.com/$domainname/' swarmpit.yml

