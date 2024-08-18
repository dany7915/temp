#!/bin/bash
cd /data/openpilot && \
git fetch --all && \
for branch in $(git branch -r | grep -v '\->' | grep -v 'upstream/' | grep -v 'origin/master' | sed 's/origin\///'); do
  git checkout $branch
  git reset --hard origin/$branch
done