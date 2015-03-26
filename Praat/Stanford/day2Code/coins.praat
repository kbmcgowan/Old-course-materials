# coins.praat

heads = 0
tails = 0

for toss from 1 to 100
     if randomInteger(1, 2) = 1
          heads = heads + 1
     else
          tails = tails + 1
     endif
endfor

appendInfoLine: "Praat simulated ", heads, " heads & ", tails, " tails."
