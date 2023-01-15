#! /bin/bash

# This kind of variable will only be readonly and the value can not re-asign

var=31

readonly var # This is to declare the variable as readonly

hello(){
    echo "var is : $var"
    echo "Hello World"
}

readonly -f hello # This is to declare the function as readonly

hello

readonly -f  # this will echo all inbuilt readonly variables
#readonly or readonly -p will echo all readonly inbuilt variable
#readonly -f will echo all readonly inbuilt function