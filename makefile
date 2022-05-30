all: title createdon contains

title: 
	echo 'TITLE : GUESSING GAME' >> README.md

createdon:
	echo 'Created on : '`date +'%Y-%m-%d %R'` >> README.md

contains:
	echo 'Total lines : '`cat guessinggame.sh|wc -l` >> README.md

clean:
	rm README.md

