#!/bin/bash
#set -x
#defining a function for arithemtic operation
function addition() {
 local result=$(($1 + $2))
 echo $result
}

function subtract() {
 local result=$(($1 - $2))
 echo $result
}


function multiplication() {
 local result=$(($1 * $2))
 echo $result
}


function division() {
 local result=$(($1 / $2))
 echo $result
}

function modulo() {
 local result=$(($1 % $2))
 echo $result
}

#get dynamic input from user
read -p "Enter first  numbers:" n1
read -p "Enter Second numbers:" n2



#Enter our choice 

echo "Enter your choice"
echo "1.addition"
echo "2.subtract"
echo "3.multiplication"
echo "4.division"
echo "5.modulo"
#TO read our choice
read choice
#conditional statements
if [ $choice -eq 1 ]; then

   Result=$(addition $n1 $n2)
elif [ $choice -eq 2 ]; then  
   Result=$(subtract $n1 $n2)
elif [ $choice -eq 3 ]; then
   Result=$(multiplication $n1 $n2)
elif [ $choice -eq 4 ]; then
   Result=$(division $n1 $n2)
elif [ $choice -eq 5 ]; then
   Result=$(modulo $n1 $n2)
else
  Echo "Your choice are invalid"
fi
#Final output result
echo "The result of your choice is: $Result"
