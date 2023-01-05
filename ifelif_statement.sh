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
