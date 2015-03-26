# can you modify this code (boxcars.praat) to use
# while instead of until?

throws = 0

while TEST
     pips = randomInteger(1, 6) + randomInteger(1, 6)
     throws = throws + 1
endwhile

writeInfoLine( "It took ", throws, " trials to reach ", pips, "
...with two dice." )
