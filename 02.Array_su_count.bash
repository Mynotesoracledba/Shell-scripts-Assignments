
#!/bin/bash

#getting  values from user input
echo "Enter the numbers with space"

#to store the values in array
read array_value

#assign a variable
total_value=0;

#loop to read array values
for i in ${array_value[@]}; do
  let total_value=$total_value+$i
  
done

#echo sum value of array
echo $total_value
