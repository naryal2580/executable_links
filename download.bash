#!/bin/bash

wget -P ./downloads -i urls.txt


# while IFS= read -r url
# do
# 	wget "$url"
# done < "./urls.txt"
