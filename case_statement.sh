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
