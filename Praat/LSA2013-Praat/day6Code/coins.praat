# coins.praat

tails = 0
heads = 0

writeInfo()

for toss from 1 to 1000
     if randomInteger(1, 2) = 1
          tails = tails + 1
     else
          heads = heads + 1
     endif
endfor

appendInfoLine( newline$, "Praat simulated ", heads, " heads & ", tails, " tails." )
