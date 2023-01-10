#! /bin/bash

for i in {0..10..2}; do # {START..END..INCREMENT}
    echo "$i"
done

for ((i = 0; i <= 5; i++)); do # {init; condition; INCREMENT}
    echo "$i"
done

# for loop with file and to execute commands
for command in ls pwd date; do
    echo "---------------$command--------------"
    "$command"
done

for item in *; do # This will iterate through the present
#working directory to chech the files inside either a file (-f) or directory (-d)
    if [ -f "$item" ]; then
        echo "$item"
    fi
done
