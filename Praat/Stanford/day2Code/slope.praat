# slope.praat - use slope + intercept to draw points and line

# set up Picture window and draw x & y axes
Erase all
Select outer viewport: 0, 6, 0, 6
Axes: 0, 30, 0, 30
Draw line: 0, -30, 0, 30
Draw line: -30, 0, 30, 0

writeInfoLine()

# slope and intercept formula for a line
deltaX = 2
deltaY = 4
b = 1
x = 0
m = deltaY / deltaX
y = m * x + b

appendInfoLine: "y equals ", y, " when x is ", x

# challenge 1: can you make this plot 10 points?
Paint circle (mm): "grey", x, y, 2

# challenge 2: can you draw a line through your points?
# Draw line: startingX, startingY, endingX, endingY)

# challenge 3: what if you wanted the points and line to appear to
# continue to infinity?
