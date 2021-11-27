#!/bin/bash

\cat urls.json | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" > urls.txt
rm -r ./downloads/*
echo "Downloading executables off the Cloud!"
wget -qP ./downloads -i urls.txt

# while IFS= read -r url
# do
# 	wget "$url"
# done < "./urls.txt"
