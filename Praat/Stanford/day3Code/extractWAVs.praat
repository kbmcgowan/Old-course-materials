# extractWAVs.praat : read TextGrid file, report some attributes,
# save any labeled intervals on the "words" tier as wav files

wav = Read from file: "tobi/tobi.wav"
tGrid = Read from file: "tobi/tobi.TextGrid"

totalDuration = Get total duration
writeInfoLine: "Total duration: ", fixed$( totalDuration, 2 ), " s"

nTiers = Get number of tiers
appendInfoLine: "Number of tiers is: ", nTiers

for tier to nTiers
     tierName$ = Get tier name: tier
     appendInfoLine: tab$, "Tier ", tier, ": """, tierName$, """"

     if do ( "Is interval tier...", tier )
          nIntervals = Get number of intervals: tier
          appendInfoLine: tab$, tab$, "there are ", nIntervals, " intervals."

          if tierName$ = "words"
                for interval from 1 to nIntervals
                     intervalName$ = Get label of interval: tier, interval
                     
                     if intervalName$ <> ""
					       start = Get start point: tier, interval
					       end = Get end point: tier, interval
               
					       appendInfoLine: intervalName$, tab$, start, tab$, end
 
					       selectObject: wav
                          part = Extract part: start, end, "rectangular", 1, "no"
                          Save as WAV file: "tobi/" + intervalName$ + "-" + string$( interval ) + ".wav"
                          removeObject: part  
                          selectObject: tGrid
                     endif
                endfor
          endif
     else ; this must be a point tier
          points = Get number of points: tier
          appendInfoLine: tab$, tab$, "there are ", points, " points."
          for point from 1 to points
               pointName$ = Get label of point: tier, point
               time = Get time of point: tier, point

               appendInfoLine: pointName$, tab$, time
          endfor
     endif
endfor

removeObject: wav
removeObject: tGrid