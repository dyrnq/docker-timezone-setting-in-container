#!/bin/bash
set -eo pipefail



while IFS= read -r -d '' file; do
  echo "$file"
  cd "$file"
  tag="my$(basename "$(pwd)")"
  echo "$tag"
  docker build -t "$tag":1 . 
  cd ../
done <   <(find . -mindepth 1 -maxdepth 1 -type d -print0)

while IFS= read -r -d '' file; do
    cd "$file"
    tag="my$(basename "$(pwd)")"
    echo "$tag"
    docker run --rm "$tag":1 sh -c "date \"+%Y-%m-%d %H:%M:%S\""
    cd ../
done <   <(find . -mindepth 1 -maxdepth 1 -type d -print0)

