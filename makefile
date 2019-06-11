proname=$(basename `pwd`)
echo "The title of the project is $proname" > README.md
now=$(date +"%T %m-%d")
echo "Make was run at $now " >> README.md
number=$(wc -l guessinggame.sh | egrep -o "[0-9]+")
echo "The number of lines of code contained in guessinggame.sh is $number" >> README.md