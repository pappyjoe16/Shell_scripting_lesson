#! /bin/bash

echo "Enter Your username: "
#
read -p 'Username: ' user_name
echo "Enter your password: "
# flag -sp make it possible to make input character infeasible
read -sp 'Password: ' pass_code
echo
if [ $user_name == "Joseph" -a $pass_code == "Nifemi" ]; then
    echo "Welcome to shell scripting, Let check your eligibility for this course"
    echo "Enter Your name: "
    read name
    echo "Enter your age: "
    read age
    BREAKPOINT=16

    if [ $age -ge $BREAKPOINT ]; then
        echo "You are good to start shell scripting $name "
    else
        echo "You need to be 16+ to start shell scripting $name "
        diff=$(expr $BREAKPOINT - $age)
        if [ $diff -gt 1 ]; then
            echo "$name kindly wait for $diff years to reapply. Thank you $name"
        else
            echo "$name kindly wait for $diff year to reapply. Thank you $name"
        fi
    fi
else
    echo "Incorrect Username or Password $pass_code"

fi
