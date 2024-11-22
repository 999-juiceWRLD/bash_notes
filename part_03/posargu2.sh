#!/bin/bash

echo First arg $1
echo Second arg $2

if [ $# -gt 2 ]; then
  echo # Create a new line
  echo "Additional arguments: ${@:3}"
fi