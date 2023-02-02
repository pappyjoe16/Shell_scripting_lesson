#! /bin/bash

#ret=$?
./arithmetic_operator.sh
#[ "$?" -eq 0 ] && echo "done" || echo "failed" && exit 1
debug_hook_exit_code="$?"
if [ "${debug_hook_exit_code}" -eq 0 ]; then
    echo "Debug hook success. Continuing with csp_startup.sh"
elif [ "${debug_hook_exit_code}" -eq 245 ]; then
    echo "Debug hook success, but got code 245. Will not continue with csp_startup.sh" && exit 245
else
    echo "Debug hook failed with code ${debug_hook_exit_code}. Continuing with csp_startup.sh"
fi

echo "How are you"

echo "I am fine"

#then
# echo "Failed"
#fi
