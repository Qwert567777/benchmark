#!/bin/bash

FILENAME=`uname -r`
NAME=`date +"%m-%d-%H"`

#for I in 119 104 89
#for I in 89 104 119
for I in 119
#for I in 23 47 71 95 119 143 167 191
#for I in 14 29 44 59 74 89 104 119
#for I in 119 104 89 74 59 44 29 14
#for I in 119 104 89 74 59 44 29 14 3 1 0
do
	echo "==================================" $I "============" $NAME
	rm -rf /mnt/aim7/*
	umount /mnt/aim7
    mkfs.f2fs -f /dev/nvme0n1
	mount -t f2fs /dev/nvme0n1 /mnt/aim7
	#mount -t f2fs -o mode=lfs /dev/nvme0n1 /mnt/aim7
#	./waiter.sh &
	#echo "=====" $(( $I + 1 )) "====" $FILENAME "====" $NAME "====" >> suite7.ss
#	date >> suite7.ss
	taskset -c 0-${I} ./multitask -nl < input
	./clean.sh
#	sleep 10
#	mkdir -p ./RET/${NAME}
#    mv suite7.ss ./RET/${NAME}/suite7.ss.vm.${I}.${FILENAME}.${NAME}
done

