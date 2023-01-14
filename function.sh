#! /bin/bash

arithmetic_operator() {
    #! /bin/bash

    num1=20
    num2=6
    num3=10.5
    # This is one method
    echo $(("$num1" + "$num2"))
    echo $(("$num1" - "$num2"))
    echo $(("$num1" * "$num2"))
    echo $(("$num1" / "$num2"))
    echo $(("$num1" % "$num2"))

    # This is another method
    echo $((num1 + num2))
    echo $((num1 - num2))
    echo $((num1 / num2))
    echo $((num1 * num2))
    echo $((num1 % num2))

    # This is a way to work with floating method using bc (basic calculator) and scale
    # scale allow us to have decimal point and we can sepecify numbers of point we want.
    echo "$num1 + $num3" | bc
    echo "$num1 - $num3" | bc
    echo "$num1 * $num3" | bc
    echo "scale=3;$num1" / "$num3" | bc
    echo "$num1" % "$num3" | bc

    # To do square root using sqrt. sqrt is a math operation. so to do we add -l to call
    # math library that sqrt is
    echo "scale=2;sqrt($num3)" | bc -l
    # to get power of something
    echo "scale=2;($num2)^2" | bc -l
}

array() {
    #! /bin/bash

    ourname=('Joseph' 'Nifemi' 'Tosin' 'Titilola' 'Akinsanmi' 'Amope')

    echo "${ourname[@]}"    # This print all the elements in the array
    echo "${!ourname[@]}"   # This print the index of the elements in the array
    echo "${#ourname[@]}"   # This print the total number of the elements in the array
    ourname[6]='Akinboyede' # This will add an element to the array
    unset 'ourname[5]'
    echo "${ourname[@]}"  # This print all the elements in the array
    echo "${#ourname[@]}" # This print the total number of the elements in the array
}

case_statement() {
    #! /bin/bash

    # Alternative way of entering value on the same line as echo output
    echo -e "Enter the type of transportation you will like to rent: \c"
    # or echo -e "Enter the type of transportation you will like to rent: " \\c
    read -r vehicle

    echo "You have entered $vehicle"
    sleep 0.5
    echo -ne "waiting for your bill. \r"
    sleep 0.5
    echo -ne "waiting for your bill.. \r"
    sleep 0.5
    echo -ne "waiting for your bill... \r"
    sleep 0.5
    echo -ne "waiting for your bill.... \r"
    sleep 0.5
    echo -ne "                               \r"
    case $vehicle in
    "Car")
        echo "Rent of $vehicle is 400 dollars"
        ;;
    "Van")
        echo "Rent of $vehicle is 200 dollars"
        ;;
    "Truck")
        echo "Rent of $vehicle is 300 dollars"
        ;;
    "Bicycle")
        echo "Rent of $vehicle is 50 dollars"
        ;;
    *) # default case
        echo "Unknown Vehicle"
        ;;
    esac

    sleep 5

    echo -e "Enter some character: \c"
    read -r value

    case $value in
    [a-z])
        echo "You've entered lower case"
        ;;
    [A-Z])
        echo "You've entered upper case"
        ;;
    [0-9])
        echo "You've entered integer value"
        ;;
    [åäö])
        echo "You've entered Swdish Alphabet"
        ;;
    ?) # Check for any special charater
        echo "You've entered a special character"
        ;;
    *) # default case / check for string s or multiple input
        echo "You've entered String or multiple characters"
        ;;

    esac

}

file_test_operator() {
    #! /bin/bash

    userpass=(Joseph Nifemi)

    test_argument="read_user_input.sh"
    if [ -f "$test_argument" ]; then
        echo "found file "
        ./$test_argument "${userpass[@]}"
    else
        echo "file not found"
        echo "${userpass[@]}"
    fi

}

for_loop() {
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

}

ifelif_statement() {
    #! /bin/bash

    echo -e "Enter the name of your sisters: \c"
    read -r a

    if [ "$a" = "tolu" ]; then
        echo "First born"

    elif [ "$a" = "tope" ]; then
        echo "Second born"

    elif [ "$a" = "tosin" ]; then
        echo "Last born"

    fi

}

pass_argument() {
    #! /bin/bash
    # passing argument into the script
    #echo $0 $1 $2 $3 $4

    # passing argument into the script as an array
    arg=("$@")
    # printing the array by index
    echo "${arg[0]}" "${arg[1]}" "${arg[2]}" "${arg[3]}"

    #  printing the argument as a single array
    echo "$@"

    #  printing the number of argument passed in to the array
    echo $#
}

read_user_input() {
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
            diff=$(("$BREAKPOINT" - "$age"))
            if [ "$diff" -gt 1 ]; then
                echo "${name[0]} kindly wait for $diff years to reapply. Thank you ${name[0]}"
            else
                echo "${name[0]} kindly wait for $diff year to reapply. Thank you ${name[0]}"
            fi
        fi
    else
        echo "Incorrect Username or Password"

    fi

}

statement_passer() {
    #! /bin/bash

    case_passer=(car van jeep bike)

    test_argument="case_statement.sh"
    if [ -f "$test_argument" ]; then
        echo "found file "
        ./$test_argument "${case_passer[@]}"
    else
        echo "file not found"
    fi

}

until_loop() {
    #! /bin/bash

    # while 'false' ; do     this will be and infinte loop
    n=1
    until [ "$n" -gt 10 ]; do # or (( "$n" <= 10 ))
        echo "$n"
        # sleep 0.5
        ((n++)) # or n=$((n + 1))

    done

}

variable_test() {
    #! /bin/bash

    namee=Joseph
    age=29
    echo "Welcome $namee, Enjoy your learning adventure, We wish you the very best!"
    echo Our shell name is "$BASH"
    echo Our shell version name is "$BASH_VERSION"
    echo Our home directory is "$HOME"
    echo Our current working directory is "$PWD"

    echo Your name is $namee
    echo $namee age is $age
}

while_loop() {
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
    #cat read_user_input.sh | while read -r user_input; do
    #    echo "$user_input"
    #done

}

select_loop() {
    #! /bin/bash

    echo "Select your favorite Food from the list of foods"

    select food in Rice Poundo Spag Beans; do
        case $food in
        "Rice")
            echo "Rice Selected"
            ;;
        "Poundo")
            echo "Poundo Selected"
            ;;
        "Spag")
            echo "Spag Selected"
            ;;
        "Beans")
            echo "Beans Selected"
            ;;
        *) # default case
            echo "Error, Select number between 1..4"
            ;;
        esac
        break
    done

    for ((i = 0; i <= 10; i++)); do
        if [ "$i" -eq 5 ] || [ "$i" -eq 8 ]; then
            continue
        fi
        echo "$i"

    done

}

arithmetic_operator
array
case_statement
file_test_operator
for_loop
ifelif_statement
pass_argument Joseph Nifemi Dara Sewa
read_user_input Joseph Nifemi
statement_passer
until_loop
variable_test
while_loop
select_loop
