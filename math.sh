#!/bin/bash
##################################################################
#
# Authour: Pratik
# Date : 02/10/2024
# Description : This script returns prime numbers from 1 to 100
#
##################################################################
set +x
echo 2
for (( i=3 ; i<=100 ; i++ ))
do
	f='True'
	for (( j=2 ; j<i/2 ; j++ ))
	do
		if [ $(($i%$j)) == 0 ]
		then 
			f='False'
		fi
	done

	if [ $f == 'True' ]
	then
		echo $i
	fi
done
