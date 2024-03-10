#!/bin/bash
#######################################################
# Author : Pratik
# Date : 02/11/2024
# Version : v1
# Description : This script lists the git repos for the 
#               given user
#######################################################
# curl -s -L -u "pratiks-git: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" https://api.github.com/users/pratiks-git/repos | jq '.[].name'

# set -x # Uncomment this line to run the script in the debug mode

#usernmae and password should be exported first in the terminal

USERNAME=$username
PASSWORD=$password

API_URL="https://api.github.com"
REPO_OWNER=$1

# Function to send the get api request 
function github_api_get {
	local endpoint=$1
	local url="${API_URL}/${endpoint}"
	curl -s -u "${USERNAME}:${PASSWORD}" $url
}


# Function to list the repos for the user
function list_repos_for_user {
	endpoint="users/${REPO_OWNER}/repos"
	repos="$(github_api_get $endpoint | jq '.[].name')"

	if [ -z "repos" ];then
		echo "There are no repos for the user $REPO_OWNER"
	else
		echo "$repos"
	fi
}

# Main function 

list_repos_for_user

