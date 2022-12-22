#!/bin/bash

docker run  -v $(pwd):/helm-docs jnorwood/helm-docs:v1.11.0 -o ../documentation/stakit.md

if [[ $(git status -s) != '' ]]; then
  git config user.name "Github Actions Helm Documentation Update"
  git config user.email "development@kvalitetsit.dk"
  git add documentation/stakit.md
  git commit -m "Auto update Helm Documentation"
  git push
else
  echo 'Helm Documentation not updated. Nothing to do.'
fi
