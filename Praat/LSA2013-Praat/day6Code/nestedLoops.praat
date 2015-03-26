# nestedLoops.praat : read TextGrid file and report some attributes
# save any labeled intervals on the "words" tier as wav files
#
# 10 July 2013 kbmcgowan@stanford.edu
 
# NOTE: assumes script is saved in the same parent directory that
# contains the "tobi/" directory.

# the wav file is only needed if we want to extract words
wav = Read from file: "tobi/tobi.wav"

# we need the TextGrid for everything in the script
tGrid = Read from file: "tobi/tobi.TextGrid"

totalDuration = do ( "Get total duration" ) 
writeInfoLine( "Total duration: ", fixed$( totalDuration, 2 ), " seconds" )

nTiers = do ( "Get number of tiers" )
appendInfoLine( "Number of tiers is: ", nTiers ) 

for tier from 1 to nTiers
     tierName$ = Get tier name: tier
     appendInfoLine( tab$, "Tier ", tier, ": """, tierName$, """" )

     if do ( "Is interval tier...", tier )
          nIntervals = Get number of intervals: tier
          appendInfoLine( tab$, tab$, nIntervals, " intervals." )

          if tierName$ = "words"

                # print "words" interval tier data to the info window
                for interval from 1 to nIntervals
                     intervalName$ = Get label of interval: tier, interval
                     
                     if intervalName$ <> ""
					      start = Get start point: tier, interval
                          end = Get end point: tier, interval
               
                          appendInfoLine( intervalName$, tab$, start, tab$, end )
 
                         # use start/end of named tiers to extract wav files
                          selectObject( wav )
                          part = Extract part: start, end, "rectangular", 1, "no"
                          do ( "Save as WAV file...", "tobi/" + intervalName$ + "-" + string$( interval ) + ".wav" )
                          removeObject( part )  
                          selectObject( tGrid )
                     endif
                endfor
          endif
     else ; this must be a point tier
          points = do ( "Get number of points...", tier )
          appendInfoLine( tab$, tab$, "there are ", points, " points.")

          # print point tier data to the info window
          for point from 1 to points
               pointName$ = do$ ( "Get label of point...", tier, point )
               time = do( "Get time of point...", tier, point )

               appendInfoLine( pointName$, tab$, time )
          endfor
     endif
endfor

# now save our output and clean up specific Objects
appendFile( "output.txt", info$())

removeObject( wav )
removeObject( tGrid )