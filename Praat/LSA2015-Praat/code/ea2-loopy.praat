# ea2-loopy.praat : read TextGrid file and report some attributes

tGrid = do ( "Read from file...", "tobi/tobi.TextGrid" )
totalDuration = do ("Get total duration") 
writeInfoLine( "Total duration: ", fixed$(totalDuration, 2), " seconds" )

numberOfTiers = do ( "Get number of tiers" )
appendInfoLine( "Number of tiers is: ", numberOfTiers ) 

for tier from 1 to numberOfTiers
     name$ = do$( "Get tier name...", tier )
     appendInfoLine( tab$, "Tier ", tier, ": """, name$, """" )

     if do ( "Is interval tier...", tier )
          intervals = do ( "Get number of intervals...", tier )
          appendInfoLine( tab$, tab$, "there are ", intervals, " intervals." )
     else
          points = do ( "Get number of points...", tier )
          appendInfoLine( tab$, tab$, "there are ", points, " points.")
     endif
endfor

removeObject( tGrid )