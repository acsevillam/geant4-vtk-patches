#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/geant4-v11.4.1" >&2
  exit 1
fi

repo_root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
source_root="$1"
patch_file="$repo_root/patches/geant4-11.4.1-vtk-black-primary-edges.patch"

if [ ! -d "$source_root/source/visualization/Vtk" ]; then
  echo "Expected a Geant4 source tree at: $source_root" >&2
  exit 1
fi

git -C "$source_root" apply --check --verbose "$patch_file"
echo "Patch applies cleanly."
