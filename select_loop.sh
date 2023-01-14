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

done
