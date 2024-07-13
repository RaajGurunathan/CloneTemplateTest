#!/bin/bash
cd e/Git/Project
git submodule foreach --recursive
cd Core
git status
git fetch origin
git merge origin/main
git status
git add .
git status
git commit -m "Update submodule to latest commit"
git status
if git push origin main; then
	echo "Submodule core is updated successfully"
else
	echo "Failed to push in Core"
fi
git status
cd ..