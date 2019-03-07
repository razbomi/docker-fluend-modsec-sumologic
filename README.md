# docker-fluend-modsec-sumologic
Fluentd docker image shipping modsec logs to sumologic

## Configure

TODO: describe me... 

1. how to configure sumo and modsec
2. how to deploy in kube as side car

## Build

To build locally

    make

## Test

To test locally

    mkdir log/td-agent
    mkdir log/modsec
    docker run -it --rm --name modsec-logger \
        -e FLUENTD_CONF=fluentd.conf \
        -v $(pwd)/etc:/fluentd/etc \
        -v $(pwd)/log:/var/log \
        docker-fluend-modsec-sumologic:latest

## Refs

1. [fluend-install-by-docker](https://docs.fluentd.org/v0.12/articles/install-by-docker)
2. [fluentd-output-sumologic](https://github.com/SumoLogic/fluentd-output-sumologic)
3. [fluent-plugin-modsecurity](https://github.com/kaija/fluent-plugin-modsecurity)
