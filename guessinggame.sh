#!/bin/bash


count_files() {
    count=$(ls -l | grep "^-" | wc -l)
    echo $count
}

     correct_count=$(count_files)
     guess=-1

    echo "Welcome to the Guessing Game!"

    while [[ $guess -ne $correct_count ]]; do
        read -p "How many files are in the current directory? " guess

        if [[ $guess -lt $correct_count ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $correct_count ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed correctly!"
        fi
    done
