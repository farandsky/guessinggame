all: README.md

README.md:
	echo "guessing game" > README.md
	echo "command make run at $$(date)">> README.md
	echo "number of lines is : $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md