#! /bin/bash

vehicle=$3

echo "You have entered $vehicle"
sleep 1
echo -ne "waiting for your bill." \\r
sleep 1
echo -ne "waiting for your bill.." \\r
sleep 1
echo -ne "waiting for your bill..." \\r
sleep 1
echo -ne "waiting for your bill...." \\r
sleep 1
echo -ne "waiting for your bill....." \\r
sleep 1
case $vehicle in
	"car" )
		echo "Rent of $vehicle is 100 dollar" ;;
	"van" )
		echo "Rent of $vehicle is 200 dollar" ;;
	"jeep" )
		echo "Rent of $vehicle is 300 dollar" ;;
	"bike" )
		echo "Rent of $vehicle is 500 dollar" ;;

esac