#!/bin/bash
git clone https://github.com/prajwal1327/Myrepo.git
echo "Enter the file to add in workspace"
read file
vi $file
echo `git add $file`
git status
echo "add a message"
read message
echo `git commit -m "$message"`
git status
git push https://github.com/prajwal1327/Myrepo.git
echo "The $file is pushed from local repo to central repo"

