#! /bin/bash

arr=(`cat  "Read Me"`) 
echo 1.showing data stored inn array...........
echo ${arr[*]}
echo 2.length of array.........
echo ${#arr[*]}
echo 2.length of 3rd element.........
echo ${#arr[3]}


