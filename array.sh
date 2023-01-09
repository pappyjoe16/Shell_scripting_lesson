#! /bin/bash

ourname=('Joseph' 'Nifemi' 'Tosin' 'Titilola' 'Akinsanmi' 'Amope')

echo "${ourname[@]}" # This print all the elements in the array
echo "${!ourname[@]}" # This print the index of the elements in the array
echo "${#ourname[@]}" # This print the total number of the elements in the array
ourname[6]='Akinboyede' # This will add an element to the array
unset 'ourname[5]'
echo "${ourname[@]}" # This print all the elements in the array
echo "${#ourname[@]}" # This print the total number of the elements in the array