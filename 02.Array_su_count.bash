#!/bin/bash

echo "Enter the numbers with space"

read array_value
total_value=0;

for i in ${array_value[@]}; do
  let total_value=$total_value+$i
  
done
echo $total_value
ubuntu $ vi array_count.sh
ubuntu $ cat array_count.sh 
#!/bin/bash

#getting  values from user input
echo "Enter the numbers with space"
#assinging values in array
read array_value
#assign a variable value
total_value=0;
#loop to read array values
for i in ${array_value[@]}; do
  let total_value=$total_value+$i
  
done
#echo sum value of array
echo $total_value
