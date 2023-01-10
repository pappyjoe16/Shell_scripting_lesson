#! /bin/bash

# while 'false' ; do     this will be and infinte loop
n=1
until [ "$n" -gt 10 ]; do # or (( "$n" <= 10 ))
    echo "$n"
    # sleep 0.5
    ((n++)) # or n=$((n + 1))

done
