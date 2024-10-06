
# Function to generate a random number between 1 and 100
generate_random_number() {
    echo $(( RANDOM % 100 + 1 ))
}

# Function to handle the number guessing game logic
play_game() {
    random_number=$(generate_random_number)
    attempts=0
    echo "Welcome to the Number Guessing Game! I have selected a number between 1 and 100."

    while true; do
        # Prompt user for a guess
        read -p "Enter your guess (or type 'exit' to quit): " guess

        # Check if the user wants to exit
        if [ "$guess" == "exit" ]; then
            echo "Thank you for playing! The number was: $random_number"
            break
        fi

        # Validate if the input is a positive integer
        if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

        # Convert the guess to an integer and increase the attempt count
        guess=$((guess))
        attempts=$((attempts + 1))

        # Check if the guess is too high, too low, or correct
        if [ "$guess" -lt "$random_number" ]; then
            echo "Too low! Try again."
        elif [ "$guess" -gt "$random_number" ]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You've guessed the number $random_number in $attempts attempts."
            break
        fi
    done
}

# Start the game by calling play_game function
play_game
