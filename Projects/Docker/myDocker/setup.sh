#!/bin/bash
			
echo "Setup and configure server"

fileName=config.yml

config_dir=$1

if [ -d "$config_dir" ]; then
	echo "reading $config_dir contents"
	config_files=$(ls -l "$config_dir")
else
	echo "config dir not found. Creating one..."
	# mkdir config
fi

user_group=$2
if [ "$user_group" == "nana" ]; then
	echo "configure the server"

elif [ "$user_group" == "admin" ]; then
	echo "admin the server"
else
	echo "no permission to"
fi

Dckerfile=Dockerfile-ubuntu
if [ -f "$Dckerfile" ]; then
	echo "Using file $fileName to configure something"
	config_files=$(ls $Dckerfile)
	echo "here are all the Dockerfiles:"
	echo "$config_files"
fi
