@echo off
if defined EC_WIZARD_ATTIC (
  goto :safe
)

echo.
echo The rat cowers under the stove, apparently afraid of something or someone.
echo.
exit /b

:safe
echo.
echo The rat cleans his whiskers and adjust his glasses.
echo.
echo "Ah, he's finally gone."
echo.
pause
echo.
echo "So, you've been poking around here.
echo Well, let me tell you, sometimes you have to look a bit closer if you want to find hidden stuff.
echo With `dir /a` you can spot things that are hidden. You should give it a try!
echo.
set EC_RAT_MET=true
exit /b


