#!/bin/bash
#################################
# Author: Pratik 
# Date: 02/08/2024
#
# This Script outputs the node health
#
# Version: v1
################################


set -x     #debug mode
set -e     # exits the script if there is any error 
set -o pipefail  # checks the failures before pipes

#set -xeo pipefail     - this is the combined command for the above 3 commands

df -h 

free -g

nproc
