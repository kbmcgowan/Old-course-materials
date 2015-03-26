# slope-key.praat : one possible solution to the
# in-class slope + intercept exercise.
maxSize = 40

# set up Picture window and draw x & y axes
Erase all
Select outer viewport: 0, 6, 0, 6
Axes: -maxSize, maxSize, -maxSize, maxSize
Draw line: -maxSize, 0, maxSize, 0 ; x axis
Draw line: 0, -maxSize, 0, maxSize ; y axis

writeInfo()

# slope and intercept formula for a line
deltaX = 9
deltaY = 4
b = 1
m = deltaY / deltaX

for x from -maxSize to maxSize
     y = m * x + b
     #appendInfoLine: "y equals ", y, " when x is ", x

     Paint circle (mm): "blue", x, y, 1

     if x = -maxSize
          # this is our first time through the loop!
          startingX = x
          startingY = y
     endif
     endingX = x
     endingY = y
endfor

# Now draw a line through the points
Draw line: startingX, startingY, endingX, endingY
