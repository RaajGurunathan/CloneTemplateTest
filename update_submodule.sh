#!/bin/bash
cd e/Git/Project
git submodule foreach --recursive git pull origin main
if ! git diff --quiet --exit-code; then
	git add .
	git commit -m "Update submodule to latest commit"
	if git push origin main; then
		echo "Submodule core is updated successfully"
	else
		echo "Failed to push in Core"
	fi
else
	echo "No Changes in the Core folder"
fi