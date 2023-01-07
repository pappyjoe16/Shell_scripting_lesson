#! /bin/bash


num1=20
num2=6
num3=10.5
# This is one method
echo $(( "$num1" + "$num2" ))
echo $(( "$num1" - "$num2" ))
echo $(( "$num1" * "$num2" ))
echo $(( "$num1" / "$num2" ))
echo $(( "$num1" % "$num2" ))

# This is another method
echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 / num2 ))
echo $(( num1 * num2 ))
echo $(( num1 % num2 ))

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