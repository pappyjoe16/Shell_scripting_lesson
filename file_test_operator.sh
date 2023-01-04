# /bin/bash

userpass=(Joseph Nifemi)

test_argument="read_user_input.sh"
if [ -f $test_argument ]; then
    echo "find file "
    ./read_user_input.sh ${userpass[@]}
else
    echo "file not found"
    echo ${userpass[@]}
fi
