#! /bin/bash
# passing argument into the script
#echo $0 $1 $2 $3 $4

# passing argument into the script as an array
arg=("$@")
# printing the array by index
echo ${arg[0]} ${arg[1]} ${arg[2]} ${arg[3]}

#  printing the argument as a single array
echo $@

#  printing the number of argument passed in to the array
echo $#