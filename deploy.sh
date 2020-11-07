#!/bin/bash
echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Build the project.
hugo

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Split ./public as subtree
git subtree split --prefix public -b master

git checkout master

# Push source and build repos.
git push origin master:master --force

# Restore
git checkout dev

git branch -D master