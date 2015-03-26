# error.Praat - generates an error

if variable$ = ""
     writeInfoLine( "Variable has not been set yet" )
else
     writeInfoLine( "It exists and it is """, variable$, """" )
endif
