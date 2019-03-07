FROM fluent/fluentd:v1.3 as builder


RUN apk add --no-cache --update --virtual .build-deps \
        sudo build-base ruby-dev \
 && sudo gem install \
        fluent-plugin-modsecurity \
        fluent-plugin-sumologic_output \
 && sudo gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /home/fluent/.gem/ruby/2.5.0/cache/*.gem

#FROM fluent/fluentd:v1.3

