#! /bin/bash

file_name=$1
user_name=$2

set `ls -li $file_name`
owner=$4
if [ $user_name = $owner ]
then	echo "owner="$4
	echo "group="$5
	echo "permissions="$2
	echo "filename="$file_name
	echo "cheating=0"
else
	echo "owner="$4
	echo "group="$5
	echo "permissions="$2
	echo "filename="$file_name
	echo "cheating=1"
fi

