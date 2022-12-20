#! /bin/bash

echo "Enter Your name"
read name
echo "Enter your age"
read age

if [ $age -eq 16 ]; then
    echo "You are good to start shell scripting $name "
fi
