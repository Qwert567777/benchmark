#!/bin/bash

FILENAME=`uname -r`
NAME=`date +"%m-%d-%H"`

#for I in 23 47 71 95 119 143 167 191
#for I in 14 29 44 59 74 89 104 119
for I in 119 104 89 74 59 44 29 14
#for I in 119 104 89
#for I in 89 104 119
do
	echo "==================================" $I "============" $NAME
	umount /media/aim7
	./1tmpfs
	./waiter.sh &
#	echo "=====" $(( $I + 1 )) "====" $FILENAME "====" $NAME "====" >> suite7.ss
	date >> suite7.ss
	taskset -c 0-${I} ./multitask -nl < input
	./clean.sh
	sleep 120
        mv suite7.ss ./RET/suite7.ss.vm.${I}.${FILENAME}.${NAME}
done

