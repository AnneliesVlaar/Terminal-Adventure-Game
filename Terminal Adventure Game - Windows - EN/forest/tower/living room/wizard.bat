@echo off
if defined EC_PARROT_FREED (
  goto :freed
) else if defined EC_WIZARD_ATTIC (
  goto :in_attic
) else if defined EC_WIZARD_KITCHEN (
  goto :in_kitchen
) else (
  goto :in_living_room
)

:in_living_room
echo.
echo You boldly approach the wizard. He's wearing an apron with blue stars on it and a pointy hat. He's studying a cooking book.
echo.
pause
echo.
echo "What!? How did you get in here?" The wizard stomps his feet.
echo.
echo. "I am Snerk the Extremely Magnificent. What do you want in my tower?"
echo.
pause
echo.
echo You tell him you're gonna save Pokkie.
echo.
echo "Oh no no, that's not gonna happen. I'm gonna make delicious parrot soup from that squawking beast.
echo.
echo Now go away. You'll never find Pokkie in my tower anyway. Mwahaha!"
echo.
pause
echo.
echo "Hahaha! Ha ha ha!"
echo.
pause
echo.
echo "Hah!"
echo.
echo. And with this, the wizard disappears in a puff of smoke that smells faintly of burnt iron and sulfur.
echo.
SET EC_WIZARD_KITCHEN=true >nul
:: (goto 2>nul) crashes the batch file and suppresses the error (exit /b will not work). This is so we don't get a missing batch file message.
:: /Y is for overriding
:: "%~f0" is the current file
:: >nul suppresses outputting any move messages
(goto) 2>nul & move /Y "%~f0" "..\kitchen\" >nul

:in_kitchen
echo.
echo The wizard is stirring a large pot of soup. When he notices you, he whirls around.
echo.
pause
echo.
echo "You again! How did you get past my gnome anyway?
echo.
echo It doesn't matter. The soup is ready now, I only need the final ingredient. Parrot!"
echo.
pause
echo.
echo "I will now retreat to my super secret chamber, which you will never find, because it's really well hidden. Ho ho yum!"
echo.
pause
echo.
echo With a loud poof the wizard and the pot of soup disappear.
echo.
pause
echo.
echo A moment later, a rat wearing a little hat and glasses comes crawling out from under the stove. You can even see it with `dir`.
echo.

attrib -h rat.bat
SET EC_WIZARD_KITCHEN= >nul
SET EC_WIZARD_ATTIC=true >nul
move /Y "large pot" "..\living room\attic\" >nul
:: (goto 2>nul) crashes the batch file and suppresses the error (exit /b will not work). This is so we don't get a missing batch file message.
:: /Y is for overriding
:: "%~f0" is the current file
:: >nul suppresses outputting any move messages
(goto) 2>nul & move /Y "%~f0" "..\living room\attic\" >nul

:in_attic
echo.
echo The wizard is standing in the middle of the room, with the pot of soup floating in front of him. He's holding a large ladle.
echo.
pause
echo.
echo When he notices you, he stomps his feet. "How did YOU get in here?"
echo.
pause
echo.
echo He sees your eyes dart to the parrot's cage.
echo.
echo "Oh no, hands off the cage. That parrot is my dinner!"
echo.
exit /b

:freed
echo.
echo The wizard waves his arms frantically. "No! You freed my dinner! How ever shall I eat my soup now!?"
echo.
pause
echo.
echo The wizard slumps down in a corner, defeated.
echo.
exit /b