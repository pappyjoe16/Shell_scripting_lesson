#! /bin/bash
# ctrl c is called interrupt signal (sig int)
# ctrl z is called suspend signal (sig cstp)
file=/home/jakinboy/shell_scripting_lesson/demo.txt
# trap "echo Exit command is detected" 0
trap 'rm -f '$file' && echo File deleted; exit' 0 2 15
touch demo.txt
echo "pid: $$" # PID is Process Identification Number

while ((COUNT < 10)); do
    sleep 6
    ((COUNT++))
    echo "$COUNT"
done
exit 0
