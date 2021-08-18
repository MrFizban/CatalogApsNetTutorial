#!/bin/bash

docker stop mongo catalog

docker run -d --rm --name mongo -p 27017:27017 -v mongobdata:/data/db \
    -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=Pass \
    --network=net5tutorial mongo

docker run -it --rm -p 8080:80 --name catalog \
    -e MongoDbSettings:Host=mongo -e MongoDbSettings:Password=Pass \
    --network=net5tutorial mrfizban/catalog:v1 