@echo off
if defined EC_PARROT_OUTSIDE (
  goto :outside
) else if defined EC_PARROT_FREED (
  goto :onlyfreed
) else (
  goto :kidnapped
)

:kidnapped
echo.
echo You approach the girl and ask her what's wrong.
echo.
pause
echo.
echo "Help! He took my parrot Pokkie into his magical tower!"
echo.
pause
echo.
echo "Years ago, when I was secretly picking flowers here, he put a spell on me.
echo Now I can't leave the grounds, and if I step over the tower's threshold, I'll turn to stone."
echo.
pause
echo.
echo "I found Pokkie in the crown of the bubblegum tree. She had beautiful colored feathers and a tiny parrot beak.
echo And now he's taken her inside.
echo Quick, you must save Pokkie before he turns her into parrot soup!"
echo.
pause
echo.
echo She hands you a little note. "Here, I wrote down some tips for you."
echo.
pause
start notepad note.txt
echo.
echo I hope you can save Pokkie! Good luck!"
echo.
attrib -h forest.png
attrib -h girl.bat
attrib -h "front door"
attrib -h tower
exit /b

:onlyfreed
echo.
echo "Ah, you're back. Did it work? Where's Pokkie?"
echo.
pause
echo.
echo You realize that Pokkie is still inside. Maybe you should talk to Pokkie.
echo.
exit /b

:outside
echo.
echo The girl is dancing around happily.
echo.
pause
echo.
echo "You saved Pokkie! Thank you so much!"
echo.
exit /b