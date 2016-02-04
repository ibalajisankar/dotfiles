#!/bin/sh
GIT_PATH="/var/repos/project-name.git" 
PROJECT_PATH="/var/www/project-name"
git --work-tree=$GIT_PATH --git-dir=$PROJECT_PATH checkout -f