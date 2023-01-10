#! /bin/bash


for i in {0..10..2} ; do # {START..END..INCREMENT}
    echo "$i"

done

for((i=0; i<=5; i++)) ; do # {init; condition; INCREMENT}
    echo "$i"

done
