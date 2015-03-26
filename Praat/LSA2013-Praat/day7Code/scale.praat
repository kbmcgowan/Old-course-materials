# scale.praat - prompt the user for freq & gain
# then play a major scale: WWHWWWH

form Play a major scale
    positive Sine_frequency_(Hz) 377
    positive Gain_(0..1) 0.5 (= not too loud)
    positive Duration_(seconds) 0.5
endform

for step from 1 to 8
     if step = 1
          freq = sine_frequency
     elsif step = 4 or step = 8
          freq = freq * 2^(1/12)
     else
          freq = freq * 2^(1/6)
     endif

     toneID = do ( "Create Sound as pure tone...",
     ... "sine" + string$( freq ), 1, 0, duration, 44100,
     ... freq, gain, 0.01, 0.01 )

     do ( "Play" )
endfor

for tone from 1 to 8
     selectObject( toneID )
     do ( "Play" )
     removeObject( toneID )
     toneID = toneID - 1
endfor