#!/bin/bash
#File: guessinggame.sh
app_dir=`dirname "${BASH_SOURCE[0]}"`

function guess_number {
 if [[ $usr_guess -lt $check_files ]]
  then
   echo 'The number you Guess is less than the total files. Please Guess the number :'
 else
   echo 'The number you Guess is More than the total files. Please Guess the number :'
fi
}

# Get the total number of the files
check_files=`ls ${app_dir} |wc -l`

echo 'Please Guest the number of files in this directory'
read usr_guess
while [[ $check_files -ne $usr_guess ]]
do
guess_number
read usr_guess
done

echo 'You Guess the righ number'

