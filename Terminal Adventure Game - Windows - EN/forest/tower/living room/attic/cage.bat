@echo off
if defined EC_PARROT_FREED (
  goto :freed
)else if /i "%1"=="open" (
  goto :open
) else (
  goto :caged
)

:freed
echo.
echo The cage is open and empty now.
echo.
exit /b

:caged
echo.
echo Pokkie sits trapped in the cage. How are you gonna open it!?
echo.
pause
echo.
echo Maybe you need to know the right command.
echo.
exit /b

:open
echo.
echo With a zap the cage door springs open and Pokkie immediately flies out of it.
echo.
SET EC_PARROT_FREED=true >nul
pause
echo.
echo You did it! Now quickly get Pokkie and bring her outside.
echo.