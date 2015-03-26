# can you modify this code (boxcars.praat) to use
# while instead of until?

throws = 0
repeat
     pips = randomInteger(1, 6) + randomInteger(1, 6)
     throws = throws + 1
until pips = 12  ; total is 12 when both dice are sixes

writeInfoLine( "It took ", throws, " trials to reach ", pips, "
...with two dice." )
