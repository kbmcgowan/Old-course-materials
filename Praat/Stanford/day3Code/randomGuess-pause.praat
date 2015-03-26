reply$ = "I am thinking of a number between 1 and 10.  Can you guess it?"
num = randomInteger(1, 10)
guess = 0
guessed = 0

repeat
   beginPause: "Guess my number..."
       comment: reply$
       integer: "Guess", ""
   endPause: "Check", 1

    reply$ = "Your guess (" + string$( guess ) + ") is "

   if guess = num
       reply$ = reply$ + "correct! Yay!"
       guessed = 1
   elsif guess > num
       reply$ = reply$ + "too high. Try again!"
   else
       reply$ = reply$ + "too low. Try again!"
   endif
until guessed

beginPause( "You did it!" )
    comment( reply$ )
endPause( "OK", 1, 1 )
