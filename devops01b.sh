#!/bin/bash

# Initialize variables
PART=0
CPU=0
MEM=0
IP=0

# Test for parameters
if [$1 == ""]
then
    PART=0
    CPU=0
    MEM=0
    IP=0
elif [$1 == "-volumes"]
then
    PART=1
elif [$1 == "-cpu"]
then
    CPU=1
elif [$1 == "-ram"]
then
    RAM=1
elif [$1 == "-network"]
then
    IP=1
elif [$1 == "-all"]
then
    PART=1
    CPU=1 
    MEM=1
    IP=1
fi 

# Find out partition info
if [ $PART ]
then
    df -Pk
fi

# Find Processor info
if [ $CPU ]
then
    lscpu
fi

# Find out Memory info
if [ $MEM ]
then
    cat /proc/meminfo
fi

# Find out network config
if [ $IP ]
then
    ifconfig
fi

