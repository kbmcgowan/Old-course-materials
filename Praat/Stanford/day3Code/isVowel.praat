#############################
### Anita's silly script ###########
### 20 May 2013 ###############
#
#  test if a label is in the list:
#"AO1 AA1 IY1 UW1 EH1 IH1 UH1 AH1 AX1 AE1 EY1 AY1 OW1 AW1 OY1 ER1 OW1
...AW1 OY1 ER1 AXR1 AO2 AA2 IY2 UW2 EH2 IH2 UH2 AH2 AX2 AE2 EY2 AY2
...OW2 AW2 OY2 ER2 AXR2 AO0 AA0 IY0 UW0 EH0 IH0 UH0 AH0 AX0 AE0 EY0
...AY0 OW0 AW0 OY0 ER0 AXR0"
#############################

label$ = "AW2"	
		   
if label$ = "AO1" or label$ = "AA1" or label$ = "IY1" or label$ = "UW1" or
			... label$ = "EH1" or label$ = "IH1" or label$ = "UH1" or label$ = "AH1" or
			... label$ = "AX1" or label$ = "AE1" or label$ = "EY1" or label$ = "AY1" or
			... label$ = "OW1" or label$ = "AW1" or label$ = "OY1" or label$ = "ER1" or
			... label$ = "OW1" or label$ = "AW1" or label$ = "OY1" or label$ = "ER1" or
			... label$ = "AXR1" or label$ = "AO2" or label$ = "AA2" or label$ = "IY2" or
			... label$ = "UW2" or label$ = "EH2" or label$ = "IH2" or label$ = "UH2" or
			... label$ = "AH2" or label$ = "AX2" or label$ = "AE2" or label$ = "EY2" or
			... label$ = "AY2" or label$ = "OW2" or label$ = "AW2" or label$ = "OY2" or
			... label$ = "ER2" or label$ = "AXR2" or label$ = "AO0" or label$ = "AA0" or
			... label$ = "IY0" or label$ = "UW0" or label$ = "EH0" or label$ = "IH0" or
			... label$ = "UH0" or label$ = "AH0" or label$ = "AX0" or label$ = "AE0" or
			... label$ = "EY0" or label$ = "AY0" or label$ = "OW0" or label$ = "AW0" or
			... label$ = "OY0" or label$ = "ER0" or label$ = "AXR0"
    vowel = 1
else
    vowel = 0
endif

if vowel
    writeInfoLine( label$, " is a vowel!" )
else
    writeInfoLine( label$, " is not a vowel." )
endif