#! /bin/bash

echo "Enter Your name: "
read name
echo "Enter your age: "
read age

if [ $age >= 16 ] ; then
    echo "You are good to start shell scripting $name "
else
    echo "You need to be 16+ to start shell scripting $name "
fi
