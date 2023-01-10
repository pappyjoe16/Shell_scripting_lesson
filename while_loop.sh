#! /bin/bash

# while 'true' ; do     this will be and infinte loop
n=1
while [ "$n" -le 10 ]; do # or (( "$n" <= 10 ))
    echo "$n"
    # sleep 0.5
    ((n++)) # or n=$((n + 1))

done

# using while loop to read a file using input redirection
while read -r user_input; do
    echo "$user_input"
done <read_user_input.sh # "<" this is called input redirection

# using while loop to read a file using input redirection using IFS (Internal field separator)
# This is use by shepp to determine how to do word spliting and how to recognize word boundaries
while IFS=' ' read -r user_input; do
    echo "$user_input"
done <read_user_input.sh # "<" this is called input redirection



# another way to read a file using while loop this method will
# first save the content into a variable then echo the variable
cat read_user_input.sh | while read -r user_input; do
    echo "$user_input"
done
