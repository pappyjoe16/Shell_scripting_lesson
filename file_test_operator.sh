# /bin/bash

touch demo_rm.sh
test_argument="read_user_input.sh"
if [ -f $test_argument ]; then
    echo "find file "
    ./read_user_input.sh
    rm -rf demo_rm.sh
else
    echo "file not found"
fi
