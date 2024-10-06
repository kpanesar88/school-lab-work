# Read Numbers.

read -r num1 num2

#Check both Number were provided.

if [ -z "$num1" ] || [ -z "$num2" ]; then 
	echo "You should enter two numbers!"
	exit 1
fi

#Checking if Numbers are equal, and determining the Larger and Smaller numbers.

if [ "$num1" -eq "$num2" ]; then 
	echo "These two numbers are equal!"
else

	if [ "$num1" -gt "$num2" ]; then 
	  bigNum=$num1
	  smallNum=$num2
	else
	  bigNum=$num2
	  smallNum=$num1

fi

if [ $((bigNum % smallNum)) -eq 0 ]; then
	ratio=$((bigNum / smallNum))
	echo "$bigNum is $ratio times the $smallNum!"
   else
	echo "No Relation!"
fi


fi
