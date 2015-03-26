# hw2-key.praat : read TextGrid file and report some attributes

tGrid = do ( "Read from file...", "tobi/tobi.TextGrid" )
totalDuration = do ("Get total duration") 
writeInfoLine( "Total duration: ", fixed$(totalDuration, 2), " seconds" )

numberOfTiers = do ( "Get number of tiers" )
appendInfoLine( "Number of tiers is: ", numberOfTiers ) 

# print out tier information one tier at a time (we'll add a loop next
# time)

name$ = do$( "Get tier name...", 1 )
appendInfoLine( tab$, "Tier 1: """, name$, """" )

if do ( "Is interval tier...", 1 )
     intervals = do ( "Get number of intervals...", 1 )
     appendInfoLine( tab$, tab$, "there are ", intervals, " intervals." )
else
     points = do ( "Get number of points...", 1 )
     appendInfoLine( tab$, tab$, "there are ", points, " points.")
endif

name$ = do$( "Get tier name...", 2 )
appendInfoLine( tab$, "Tier 2: """, name$, """" )

if do ( "Is interval tier...", 2 )
     intervals = do ( "Get number of intervals...", 2 )
     appendInfoLine( tab$, tab$, "there are ", intervals, " intervals." )
else
     points = do ( "Get number of points...", 2 )
     appendInfoLine( tab$, tab$, "there are ", points, " points.")
endif

name$ = do$( "Get tier name...", 3 )
appendInfoLine( tab$, "Tier 3: """, name$, """" )

if do ( "Is interval tier...", 3 )
     intervals = do ( "Get number of intervals...", 3 )
     appendInfoLine( tab$, tab$, "there are ", intervals, " intervals." )
else
     points = do ( "Get number of points...", 3 )
     appendInfoLine( tab$, tab$, "there are ", points, " points.")
endif

removeObject( tGrid )