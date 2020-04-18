#!/bin/bash

# Initialize variables
PART = 0
CPU  = 0
MEM  = 0
IP   = 0

# Test for parameters
if [-z $1]
then
    PART = 1
    CPU  = 1
    MEM  = 1
    IP   = 1
elif [$1 == "-volumes"]
    PART = 1
elif [$1 == "-cpu"]
    CPU  = 1
elif [$1 == "-ram"]
    RAM  = 1
elif [$1 == "-network"]
    IP   = 1
elfi [$1 == "-all"]
    PART = 1
    CPU  = 1
    MEM  = 1
    IP   = 1
fi 

# Find out partition info
df -Pk

# Find Processor info
lscpu

# Find out Memory info
cat /proc/meminfo

# Find out network config
ifconfig

