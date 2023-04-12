#!/bin/bash

#initiate
git init .

# Stage changes
git add .

# Commit changes with message
git commit -m "initial_commit"

#choose a branch
git branch -M main

#select a repository
git remote add origin https://github.com/Henzolena/CV_Bootstrap.git

# Push changes to remote repository
git push -u origin master



#!/bin/bash

# Define variables
COMMIT_MSG="initial_commit"
LOG_FILE="push_changes.log"

# Redirect all output to log file
exec &>> $LOG_FILE

# Check if any changes are staged
if ! git diff --quiet --cached; then
    # Commit changes with message
    git commit -m "$COMMIT_MSG"

    # Push changes to remote repository
    if git push origin master; then
        echo "Changes pushed successfully"
    else
        echo "Failed to push changes"
    fi
else
    echo "No changes to push"
fi
