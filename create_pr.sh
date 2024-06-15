#!/bin/bash

# Pull changes from the remote repository
git pull 

# Create a new branch
git checkout -b dev-branch

# Make changes (you may need to open your editor to make changes here)

# Add and commit changes
git add .
git commit -m "Add your descriptive commit message here"

# Push changes to your forked repository
git push origin dev-branch

# Prompt user to input title for pull request
read -p "Enter the title for your pull request: " pr_title

# Prompt user to input body for pull request
read -p "Enter the body for your pull request: " pr_body

# Create Pull Request
gh pr create --base main --head dev-branch --title "$pr_title" --body "$pr_body"
