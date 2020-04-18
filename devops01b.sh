#!/bin/bash

# Initialize variables

# Test for parameters
if [-z $1]
then
    PART = 1
    CPU = 1
    MEM = 1
    IP = 1
elif [ 

# Find out partition info
df -Pk

# Find Processor info
lscpu

# Find out Memory info
cat /proc/meminfo

# Find out network config
ifconfig

