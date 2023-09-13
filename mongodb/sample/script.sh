#!/usr/bin/env bash

old_dir=$PWD

cd /sample
for doc in *.json
do
    mongoimport -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD --authenticationDatabase admin -d restaurant -c ${doc%%.json} $doc
done

cd $old_dir
