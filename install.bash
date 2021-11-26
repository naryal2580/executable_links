#!/bin/bash

cd ./downloads

for file in $(\ls); do
	magic=$(file $file);
	if [[ $magic == *Zip* ]]; then
		unzip $file
	elif [[ $magic == *gzip* ]]; then
		tar xvf $file
	else
		echo "Unsupported archive supplied: ($file: $magic)";
		exit 1
	fi
done

# TODO: Recirsively list and select files based on file name within "urls.json" using jq

# rm -rf ./downloads/*
