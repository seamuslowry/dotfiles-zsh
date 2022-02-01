#!/bin/bash

configuration_directory_files="$(pwd)/.home-configuration/.*"

# symlink all the home directory files
for f in $configuration_directory_files; do
  if [ -d $f ]; then
      continue
  fi

  existing_file="${HOME}/$(basename $f)"

  # if the file exists; delete it
  if [ -f $existing_file ]; then
    rm -rf $existing_file
  fi

  # make the symlink
  ln -sf $f $existing_file
done