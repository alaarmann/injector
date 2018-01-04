# Injector

## Build container
In project directory: `docker build -t injector .`

## Create docker network
For nginx `resolver`-directive to work:
`docker network create -d bridge my-bridge-network`

## Run
`docker run --env PROXY_TARGET='https://www.google.de/' --env SEARCH_EXPRESSION='Anmelden' --env REPLACE_EXPRESSION='Anmelden - dann geht der Spass los!' --network=my-bridge-network -p 8080:80 injector`
