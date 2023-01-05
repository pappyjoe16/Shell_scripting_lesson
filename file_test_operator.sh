#! /bin/bash

userpass=(Joseph Nifemi)

test_argument="read_user_input.sh"
if [ -f $test_argument ]; then
    echo "find file "
    ./$test_argument "${userpass[@]}"
else
    echo "file not found"
    echo "${userpass[@]}"
fi
