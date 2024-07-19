#!/usr/bin/bash

set -e

target="$1"
shift

IFS=$'\n' read -d '' -r -a files <<< "$1"
shift

exec sbom scoop "$target" "${files[@]}"
