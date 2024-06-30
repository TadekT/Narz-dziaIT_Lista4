#!/bin/bash
if [ "$1" == "--date" ]; then
  date
fi
if [ "$1" == "--logs" ]; then
  for i in {1..100}; do
    echo "File number: $i, Created by: skrypt.sh, Date: $(date)" > log_$i.txt
  done
fi

if [ "$1" == "--logs" ] && [ -n "$2" ]; then
  for ((i=1; i<=$2; i++)); do
    echo "File number: $i, Created by: skrypt.sh, Date: $(date)" > log_$i.txt
  done
fi
