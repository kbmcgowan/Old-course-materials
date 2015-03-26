# randomGuess.praat : generate a random number and compare it to a guess

num = randomInteger(1, 10)

form Guess a number
     comment I am thinking of a number between 1 and 10.
     integer Guess
endform

reply$ = "Your guess (" + string$( guess ) + ") is "

if guess = num
   reply$ = reply$ + "correct! Yay!"
elsif guess > num
   reply$ = reply$ + "too high."
else
   reply$ = reply$ + "too low."
endif

appendInfoLine: reply$


