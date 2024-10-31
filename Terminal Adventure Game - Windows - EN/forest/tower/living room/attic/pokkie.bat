@echo off
if defined EC_PARROT_OUTSIDE (
  goto :outside
) else if defined EC_PARROT_FREED (
  goto :freed
) else (
  goto :caged
)

:freed
echo.
echo The parrot flies in circles around the room, pecking at the wizard.
echo.
echo "CWAAAAK! You freed me! CWAAAAK! Pokkie outside!"
echo.
pause
echo.
echo Pokkie sits down on your shoulder.
echo.
SET EC_PARROT_OUTSIDE=true >nul
:: (goto 2>nul) crashes the batch file and suppresses the error (exit /b will not work). This is so we don't get a missing batch file message.
:: /Y is for overriding
:: "%~f0" is the current file
:: >nul suppresses outputting any move messages
(goto) 2>nul & move /Y "%~f0" "..\..\..\" >nul

:outside
echo.
echo Pokkie gives you a long stare, before she begins to speak.
echo.
pause
echo.
echo "This game was developed by Extra Nice in Leeuwarden in association with VU.
echo.
echo.
echo `curl parrot.live`! `curl parrot.live`!"
echo.
exit /b

:caged
echo.
echo The parrot sits in the cage and shakes, eyeing the wizard.
echo.
pause
echo.
echo As you come closer, she looks at you.
echo.
echo "CWAAAK! `cage open`!
echo.
pause
echo.
echo "CWAAAK! `cage open`!
echo.
if not defined EC_WIZARD_ATTIC (
  goto :end
)
echo The wizard looks at you with a red face. "Don't you dare type `cage open`!"
echo.
exit /b

:end
