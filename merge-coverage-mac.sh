#!/usr/bin/env bash

# relPath="$(echo `pwd` | sed -i '' -e "s/$MELOS_ROOT_PATH\///g" | sed -i '' -e 's/\//\\\//g')"
relPath="$(echo `pwd` | sed -i '' -e "s/$MELOS_ROOT_PATH\///g" * | sed -i '' -e 's/\//\\\//g' *) "
echo "---------------------------------------------"
echo $MELOS_ROOT_PATH
echo "---------------------------------------------"
echo $relPath

if [ -f "pubspec.yaml" ]; then
  if [ -d "coverage" ]; then
    if [ ! -d "$MELOS_ROOT_PATH/coverage" ]; then
      mkdir "$MELOS_ROOT_PATH/coverage"
    fi
    sed "s/^SF:lib/SF:$relPath\/lib/g" coverage/lcov.info >> "$MELOS_ROOT_PATH/coverage/lcov.info"
  fi
fi