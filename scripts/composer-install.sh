#!/bin/bash

if [ ! -d "vendor" ]; then
  echo "vendor directory not found. Running composer install"
  composer install
else
  echo "vendor directory exists. Skipping composer install"
fi