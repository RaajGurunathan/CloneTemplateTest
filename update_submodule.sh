#!/bin/bash
cd e/Git/Project
git submodule foreach --recursive
cd Core
git fetch origin
git merge origin/main
git add .
git commit -m "Update submodule to latest commit"
git push origin main

