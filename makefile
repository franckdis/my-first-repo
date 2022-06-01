all: 
	echo 'TITRE : GUESSING GAME PROJECT' > README.md
	echo 'Make Created on : '`date +'%Y-%m-%d %R'` >> README.md
	echo 'Total lines in Shell script : '`cat guessinggame.sh|wc -l` >> README.md
