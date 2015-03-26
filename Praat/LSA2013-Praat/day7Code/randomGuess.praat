# randomGuess.praat : generate a random number and compare it to a guess
# 
# 23 June 2013 kbmcgowan@stanford.edu

feedback$ = "I am thinking of a number between 1 and 10.  Can you guess it?"
num = randomInteger(1, 10)
guess = 7

writeInfoLine( feedback$ )

if guess = num
   writeInfoLine( "Your guess (" + string$( guess ) + ") is correct! Yay!" )
elsif guess > num
   feedback$ = "Your guess (" + string$( guess ) + ") is too high."
else
   feedback$ = "Your guess (" + string$( guess ) + ") is too low."
endif

