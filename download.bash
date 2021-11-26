#!/bin/bash

\cat urls.json | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" > urls.txt
rm -r ./downloads/*
wget -P ./downloads -i urls.txt

# while IFS= read -r url
# do
# 	wget "$url"
# done < "./urls.txt"
