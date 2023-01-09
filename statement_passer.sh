#! /bin/bash

case_passer=(car van jeep bike)

test_argument="case_statement.sh"
if [ -f "$test_argument" ]; then
    echo "found file "
    ./$test_argument "${case_passer[@]}"
else
    echo "file not found"
fi
