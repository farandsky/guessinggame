#!/bin/bash

files_number(){
    ls -l | wc -l
}

main_function(){
    correct_answer=$(files_number)
    player_answer
    tentatives=0

    while true; do
        read -p "how many files are in the current directory:" player_answer
        tentatives=$((tentatives + 1))

        if [[ $player_answer -lt $correct_answer ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $player_answer -gt $correct_answer ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed correctly in $tentatives attempts."
            break
        fi
    done
}

main_function
