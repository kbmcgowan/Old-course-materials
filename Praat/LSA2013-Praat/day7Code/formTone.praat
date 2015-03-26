# formTone.praat - prompt the user for freq & gain
# from the Praat help manual (modified)

form Play a sine wave
    positive Sine_frequency_(Hz) 377
    positive Gain_(0..1) 0.3 (= not too loud)
endform

toneID = do ( "Create Sound as pure tone...",
... "sine" + string$( sine_frequency ), 1, 0, 1, 44100,
... sine_frequency, gain, 0.01, 0.01 )

do ( "Play" )
removeObject( toneID )

