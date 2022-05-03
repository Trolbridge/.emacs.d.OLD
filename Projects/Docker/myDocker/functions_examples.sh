#!/bin/bash

function create_file () {
	file_name=$1
	is_shell_script=$2
	touch $file_name 
	echo "$file_name created successfully"

	if [ "$is_shell_script" ]; then
		chmod u+x $file_name
		echo "added execute permission"
	fi
}

create_file test.txt

create_file myfilezzz.yaml

create_file myscript.sh true