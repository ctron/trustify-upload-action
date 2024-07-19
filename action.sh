#!/usr/bin/env bash

set -x

if [[ "$RUNNER_OS" == "Windows" ]]; then
  CMD="$GITHUB_WORKSPACE/sbom.exe"
else
  CMD="$GITHUB_WORKSPACE/sbom"
fi

# show the current version

"$CMD" --version

# get the target

target="$1"
shift

IFS=$'\n' read -d '' -r -a files <<< "$1"
shift

exec "$CMD" scoop "$target" "${files[@]}"
