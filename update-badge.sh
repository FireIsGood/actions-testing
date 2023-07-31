#!/bin/bash

# DL=`curl "https://api.jsonbin.io/v3/qs/64c7841fb89b1e2299c8d98e" | jq ".record.downloads"`
DL=`curl -s "https://www.random.org/integers/?num=1&min=1&max=100&col=5&base=10&format=plain&rnd=new" | tr -d '[:blank:]'`

echo "Replacing number with $DL"

sed -i "/^\!\[Static Badge\]/c![Static Badge](https://img.shields.io/badge/label-$DL-7c3aed?style=plastic&logo=obsidian)" README.md
