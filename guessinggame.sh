#!/bin/bash
#File: guessinggame.sh

function guess_number {
	if [[ "$usr_guess" -lt "$check_files" ]] && [[ "$usr_guess" =~ ^[-+]?[0-9]+$ ]]
	 then
	  echo 'The number you Guess is less than the total files. Please Guess the number :'
	  read usr_guess
	elif [[ "$usr_guess" -gt "$check_files" ]] && [[ "$usr_guess" =~ ^[-+]?[0-9]+$ ]]
	 then
	  echo 'The number you Guess is Greater than the total files. Please Guess the number :'
	  read usr_guess
	else
	  echo 'The number you Guess is not Correct. Please Guess the number :'
	  read usr_guess
fi
}

# Get the total number of the files
check_files=`ls -l |grep "^-"| wc -l`
echo 'Please Guest the number of files in this directory'
read usr_guess

while [[ "$check_files" -ne "$usr_guess" ]]
 do
  guess_number
done

if [[ "$usr_guess" =~ ^[-+]?[0-9]+$ ]]
 then
  echo 'Bravo! You Guess the righ number'
fi
