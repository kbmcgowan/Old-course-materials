# error.Praat - generates an error

variable$ = ""

if length( variable$ )
     writeInfoLine: "It exists and it is """, variable$, """"
else
     writeInfoLine: "Variable has not been set yet"
endif