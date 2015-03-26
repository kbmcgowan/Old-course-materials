# slope.praat - use slope + intercept to draw points and line

# set up Picture window and draw x & y axes
do( "Erase all" )
do ("Select outer viewport...", 0, 6, 0, 6)
do ("Axes...", -30, 30, -30, 30)
do ("Draw line...", 0, -30, 0, 30)
do ("Draw line...", -30, 0, 30, 0)

writeInfoLine()

lowerBound = -50
upperBound = 50
# slope and intercept formula for a line
for deltaX from 1 to 360

deltaY = 4
b = 1

m = deltaY / deltaX

for x from lowerBound to upperBound
      y = m * x + b

      do ("Paint circle (mm)...", "red", x, y, 1.5)

      if x = lowerBound
           startingX = x
           startingY = y
      endif

      endingX = x
      endingY = y
endfor

# can you draw a line through your points?
do ("Draw line...", startingX, startingY, endingX, endingY)
endfor
# finally... what if you wanted the points and line to appear to
# continue to infiniy?
