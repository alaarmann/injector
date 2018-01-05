# Injector
A reverse proxy that does replace the first occurrence of a search string in the response's content by a replacement string.
It is meant for rapid prototyping by adding a new feature to an existing web page without modifying the page's source.

## Build container
In project directory: `docker build -t injector .`

## Run
If you intend to run the container standalone, create an explicit docker network for the nginx `resolver`-directive to work: `docker network create -d bridge my-bridge-network`

To run the docker container standalone, execute e.g. `docker run --env PROXY_TARGET='https://github.com/alaarmann/injector' --env SEARCH_EXPRESSION='injector</a>' --env REPLACE_EXPRESSION='injector - successfully injected!</a>' --network=my-bridge-network -p 8080:80 injector` and visit [http://localhost:8080](http://localhost:8080): you shold see the project's GitHub-page with the modified text.
