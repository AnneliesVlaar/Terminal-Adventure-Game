@echo off
cd /d "%~dp0"
attrib +h forest.png
attrib +h girl.bat
attrib +h "front door"
attrib +h "tower"
attrib +h "secret door"
attrib +h intro.txt
attrib +h note.txt
attrib +h ".\tower"
if EXIST "pokkie.bat" move /Y "pokkie.bat" "tower\living room\attic\"
cd "tower"
if EXIST kitchen\wizard.bat move /Y kitchen\wizard.bat "living room\"
if EXIST "living room\attic\wizard.bat" move /Y "living room\attic\wizard.bat" "living room\"
if EXIST "living room\attic\large pot" move /Y "living room\attic\large pot" "kitchen\"
attrib +h kitchen\rat.bat
attrib +h "crumbled scroll.txt"
attrib +h "living room\attic"
attrib +h "living room\glasses for reading"
attrib +h "living room\trap door"
attrib +h "kitchen\fridge post-it.txt"
SET EC_WIZARD_ATTIC=
SET EC_WIZARD_KITCHEN=
SET EC_PARROT_FREED=
SET EC_PARROT_OUTSIDE=
SET EC_RAT_MET=
cd ..
start cmd /K type intro.txt
