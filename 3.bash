#! /bin/bash
file_name1=$1
user_name1=$2
file_name2=$3
user_name2=$4

set `ls -li $file_name1`
arr=($1 $2 $3 $4 $5 $6 $7 $8 $9)
echo ${arr[*]}
	echo "$file_name1 details............"
	echo "owner="${arr[3]}
	echo "group="${arr[4]}
	echo "permissions="${arr[1]}
	echo "filename="$file_name1
	if [ $user_name1 = ${arr[3]} ]
	then  echo "cheating=0"
	else
	      echo "cheating=1"
	fi


set `ls -li $file_name2`
arr2=($1 $2 $3 $4 $5 $6 $7 $8 $9)
echo ${arr2[*]}
	echo "$file_name2 details............"
	echo "owner="${arr2[3]}
	echo "group="${arr2[4]}
	echo "permissions="${arr2[1]}
	echo "filename="$file_name2
	if [ $user_name2 = ${arr[3]} ]
	then  echo "cheating=0"
	else
	      echo "cheating=1"
	fi

diff -c $file_name1 $file_name2

