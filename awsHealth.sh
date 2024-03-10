#!/bin/bash

######################################################################
# Author : Pratik 
# Date : 02/11/2024
# Version : Snapshot
# Description : This script list the AWS resources S3, EC2, IAM users
######################################################################


# list S3 buckets
echo '----------------------Print IAM usernames---------------------'
aws s3 ls 

# list EC2 instances 
echo '------------------Print EC2 instances---------------------'
aws ec2 describe-instances

# list iam users
echo '-----------------Print IAM usernames---------------------'
aws iam list-users | jq '.Users[].UserName'


echo "*****This script ended at $(date)*****"
