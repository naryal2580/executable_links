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
tool_names=$(\cat urls.json | jq 'keys[]' | cut -d '"' -f 2)

for tool_name in $tool_names; do
	echo $tool_name
	find ./downloads -name $tool_name -exec mv {} /opt \;
done

# rm -rf ./downloads/*
