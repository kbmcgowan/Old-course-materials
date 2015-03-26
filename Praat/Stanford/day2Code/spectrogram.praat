# read sound file, paint publishable spectrogram
# 6-25-2014 Kevin B. McGowan <kbmcgowan@stanford.edu>

if praatVersion < 5379
     pause Warning! this script was written for v5.3.79. You should probably upgrade.
endif

sound = Read from file: "/Users/clunis/Desktop/untitled.wav"
sgram = To Spectrogram: 0.005, 8000, 0.002, 20, "Gaussian"

Erase all
Select outer viewport: 0, 6, 0, 4
Paint: 0, 0, 0, 8000, 100, "yes", 50, 6, 0, "yes"
Text top: "no", """Hello, World!"" speaker KM"

if macintosh
     Save as PDF file: "HelloWorld.pdf"
else
     Save as EPS file: "HelloWorld.png"
endif

removeObject: sound
removeObject: sgram