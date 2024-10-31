#!/bin/bash

REPO_NAME="$(basename "$PWD")"

USER=git config --get user.name

GH_REPO_LINK="https://github.com/$USER/$REPO_NAME.git"

VISIBILITY="--public"

if [ -d ".git" ]; then

  gh repo create "$REPO_NAME" "$VISIBILITY" 2>/dev/null

  git status -sbv 2>/dev/null

  git add -i && git status -sbv

  git commit -m "Auto Commit and Pushed"

  git remote add origin "$GH_REPO_LINK" 2>/dev/null

  git push -u origin master  \
  || git push --force -u origin master \
  ||echo Changes committed but code not pushed to Github

fi
