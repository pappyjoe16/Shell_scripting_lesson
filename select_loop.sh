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
