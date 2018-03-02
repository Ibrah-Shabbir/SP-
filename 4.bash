#! /bin/bash

echo 1.declaring array.........
UNIX=(Debian 'Red hat' Ubuntu Suse Fedora)
echo 2.printing array.........
echo ${UNIX[*]}
echo 3.length of array........
echo ${#UNIX[*]}
echo 4.length of element on index 2...........
echo ${#UNIX[2]}
echo 5.extracting two elements from position 3......
echo ${UNIX[*]:3:2}
echo 6.searching and replacing ...........
temp=(${UNIX[*]/Ubuntu/'SCO Unix'})
echo ${temp[*]}
echo 7.add element.........
temp2=("${UNIX[*]}" 'AIX' 'HP-UX')
echo ${temp2[*]}
echo 8.remove 3rd element...........
unset UNIX[3]
echo ${UNIX[*]}
echo 9.declare LINUX and copy UNIX contents to LINUX..........
LINUX=${UNIX[*]}
echo ${LINUX[*]}
echo 10.concatenate.........
temp3=(${UNIX[*]} ${LINUX[*]} )
echo ${temp3[*]}
echo 11.remove Arrays
unset LINUX
unset UNIX
echo ${UNIX[*]}
echo ${LINUX[*]}


