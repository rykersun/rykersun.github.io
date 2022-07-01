#!/bin/bash

file="npm-shrinkwrap.json"

if [ -f "$file" ] ; then
    rm "$file"
fi

echo '{
    "dependencies": {
    "graceful-fs": {
    "version": "4.2.2"
        }
    }
}' > npm-shrinkwrap.json
