# plays Blue Monday by New Order, sort of.
# 27 June 2014, Kevin B. McGowan <kbmcgowan@stanford.edu>

include split.proc.praat

song$ = "349.23, 261.63, 293.66, 293.66, 392.00, 261.63, 293.66, 293.66"

for reps from 1 to 2
     @split: ",", song$

     for note from 1 to split.length
         @playPairs: number( split.array$[note] )
     endfor
endfor

procedure playPairs( .note )
    # first generate one octave below our note
    .octaveID = Create Sound as pure tone: "note", 1, 0, 0.075,
            ...10000, .note / 2, 0.5, 0.01, 0.09

    .noteID = Create Sound as pure tone: "note", 1, 0, 0.075,
            ...10000, .note, 0.5, 0.01, 0.09

    for i from 1 to 2
        # play each octave pair twice
        selectObject: .octaveID
        Play

        selectObject: .noteID
        Play
    endfor

    removeObject: .octaveID
    removeObject: .noteID 
endproc
