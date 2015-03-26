feedback$ = "I am thinking of a number between 1 and 10.  Can you guess it?"
num = randomInteger(1, 10)
guess = 0
guessed = 0

repeat
   beginPause( "Guess my number..." )
       comment( feedback$ )
       integer( "Guess", "" )
   endPause( "Check", 1 )

   if guess = num
       writeInfoLine( "Your guess (" + string$( guess ) + ") is correct! Yay!" )
       guessed = 1
   elsif guess > num
       feedback$ = "Your guess (" + string$( guess ) + ") is too high. Try again!"
   else
       feedback$ = "Your guess (" + string$( guess ) + ") is too low. Try again!"
   endif
until guessed

