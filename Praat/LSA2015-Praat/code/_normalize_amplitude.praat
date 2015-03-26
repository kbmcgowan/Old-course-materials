# Written by:   Yi Xu	7/11/02
form Warning!
	integer Ifile 1
	comment Running this script will maximize the amplitude of all the .wav files in the
	comment current folder. If you do not want to change the original .wav files, click
	comment on the "Cancel" button below, make a duplicate copy of the current folder
	comment  before running the script again inside the duplicate folder.
endform

directory$ = "./"
Create Strings as file list... list 'directory$'*.wav
numberOfFiles = Get number of strings
if !numberOfFiles
	Create Strings as file list... list 'directory$'*.WAV
	numberOfFiles = Get number of strings
endif
number = ifile
for ifile from ifile to numberOfFiles
	select Strings list
	fileName$ = Get string... ifile
	call Windows 'fileName$'
	number = number + 1
endfor

procedure Windows file_name$ file_extension$
   Read from file... 'directory$''file_name$'
   name$ = selected$ ("Sound")
			Scale... 0.99996948
   call Save 'directory$' 'name$'
endproc

procedure Save directory$ name$
#   pause Current file is 'number'.					Save results?
   Write to WAV file... 'directory$''name$'.wav
   Remove
endproc
