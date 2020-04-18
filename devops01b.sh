#!/bin/bash

# Initialize variables
PART=0
CPU=0
MEM=0
IP=0

# Test for parameters
if [ "$1" == "" ]
then
    PART=0
    CPU=0
    MEM=0
    IP=0
elif [ "$1" == "-volumes" ]
then
    PART=1
elif [ "$1" == "-cpu" ]
then
    CPU=1
elif [ "$1" == "-ram" ]
then
    MEM=1
elif [ "$1" == "-network" ]
then
    IP=1
elif [ "$1" == "-all" ]
then
    PART=1
    CPU=1 
    MEM=1
    IP=1
fi 

# Find out partition info
if [ $PART == 1 ]
then
    df -Pk
fi

# Find Processor info
if [ $CPU == 1 ]
then
    lscpu
fi

# Find out Memory info
if [ $MEM == 1 ]
then
    cat /proc/meminfo
fi

# Find out network config
if [ $IP == 1 ]
then
    ifconfig
fi

