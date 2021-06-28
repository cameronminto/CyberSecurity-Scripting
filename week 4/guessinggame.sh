#?/bin/bash

answer=74


toolow()
{
if (( "$guess" < "$answer" ));
	then
		echo
		echo "TOO LOW! Guess again"
guess
fi
}



toohigh()

{
if (( "$guess" > "$answer" ));
	then
		echo
		echo "TOO HIGH! Guess again"
guess
fi
}


tooright()
{
if [ "$guess" -eq "$answer" ] ;
	then
		echo
		echo "TOO BLOODY RIGHT IT IS!"
fi
}

guess()
{
read -p "Guess a number between 1 and 100: " guess
toolow
toohigh
}
guess
tooright
