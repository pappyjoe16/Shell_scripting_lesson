#! /bin/bash

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
