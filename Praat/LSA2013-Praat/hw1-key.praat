# hw1-key.praat Paint a publishable spectrogram
# 
# Reads a sound from a wav file, creates and paints a spectrogram of that
# sound, adds a meaningful title, and saves a PDF file.
#
# 6-25-2013 Kevin B. McGowan <kbmcgowan@stanford.edu>

sound = do ("Read from file...", "/Users/clunis/Desktop/untitled.wav")
sgram = do ("To Spectrogram...", 0.005, 8000, 0.002, 20, "Gaussian")

do ("Paint...", 0, 0, 0, 8000, 100, "yes", 50, 6, 0, "yes")
do ("Text top...", "no", """Hello, world!"" in Irish spoken by Kevin McGowan")

do ("Save as PDF file...", "/Users/clunis/Desktop/praat.pdf")

removeObject( sound )
removeObject( sgram )
