#!/bin/sh

# This script creates a new GitHub repository from the current directory tree.
# Just Pass the repository name as a single parameter to this script.
#
# Pre-requisites:
#
# 1. Install Github utility "gh" using the script below.
#
# curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
# echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
# sudo apt update
# sudo apt install gh
#
# 2. Create ssh certificate for git to communicate with GitHub.
#
#


gh repo create $1
git init
git remote add origin git@github.com:olegfom/$1.git
git add .
git status
git commit -m "first commit"
git push -u origin master


