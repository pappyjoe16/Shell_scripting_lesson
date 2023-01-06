#! /bin/bash

#multiple line comment in shell scripting

# echo "Enter Your username: "
# read -p 'Username: ' user_name
# echo "Enter your password: "
# flag -sp make it possible to make input character infeasible
# read -sp 'Password: ' pass_code
# echo !

user_passcode=("$@")

if [ "${user_passcode[0]}" == "Joseph" ] && [ "${user_passcode[1]}" == "Nifemi" ]; then
    echo "Welcome to shell scripting, Let check your eligibility for this course"
    echo "Enter Your name: "
    read -r -a name
    echo "Enter your age: "
    read -r age
    BREAKPOINT=16

    if [ "$age" -ge $BREAKPOINT ]; then
        echo "You are good to start shell scripting ${name[0]} ${name[1]}"
    else
        echo "${name[0]} you need to be 16+ to start shell scripting. Thank you as we hope to see you again ${name[0]} ${name[1]} "
        diff=$(( "$BREAKPOINT" - "$age"))
        if [ "$diff" -gt 1 ]; then
            echo "${name[0]} kindly wait for $diff years to reapply. Thank you ${name[0]}"
        else
            echo "${name[0]} kindly wait for $diff year to reapply. Thank you ${name[0]}"
        fi
    fi
else
    echo "Incorrect Username or Password"

fi
