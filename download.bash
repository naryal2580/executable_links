#!/bin/bash

while IFS= read -r url
do
	wget "$url"
done < "./urls.txt"
