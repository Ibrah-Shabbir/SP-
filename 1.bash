#! /bin/bash

var1=$1
var2=$2

( expr $var1 + 1  1>/dev/null 2>/dev/null && echo "integer" ) || (echo "not integer") &&
expr $var2 + 1 1>/dev/null 2>/dev/null && echo "integer" || ( echo "not integer" )
if [ $var1 -eq $var1 2>/dev/null ] && [ $var2 -eq $var2 2>/dev/null ] 
then 	echo "addition : " `expr $var1 + $var2`
	echo "subtraction : " `expr $var1 - $var2`
	echo "multiplication : " `expr $var1 \* $var2`
	if [ $var2 -eq 0 ]
	then 	echo "second openrand cant be zero"   
	else	
		echo "division : " `expr $var1 / $var2`
	fi
else
echo "not integer hence cant perform operations"
fi
