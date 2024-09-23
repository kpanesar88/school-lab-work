# Check Arguments Provided

if [ $# -eq 0 ]; then
	echo "No Arguments Provided."
	exit l
fi

# Prompt the uset to enter an Integer

read -p "Please enter an integer:" x

# Check if x is less or equal to the # of arguments.

if [ "$x" -le "$#" ]; then
	echo "The argument at position $x is: ${!x}"
else
	echo "No Argument Has Been Provided at Position $x."
fi
