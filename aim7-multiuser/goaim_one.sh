#!/bin/bash

FILENAME=`uname -r`
NAME=`date +"%m-%d-%H"`


I=$1
	echo "==================================" $I "============" $NAME
	umount /media/aim7
	./1tmpfs
	./waiter.sh &
	echo "======" $(( $I + 1 )) >> suite7.ss
	date >> suite7.ss
	taskset -c 0-${I} ./multitask -nl < input

	echo "================== done ==========================="
	mv suite7.ss suite7.ss.$FILENAME.$NAME.$I
