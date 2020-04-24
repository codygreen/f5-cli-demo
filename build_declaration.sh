#!/bin/bash
if [ -z $2 ]; then
    atc="as3"
else
    atc=$2
fi
jinja2 templates/$1.$atc.j2 data/$1.yml --format=yaml > declarations/$1.json