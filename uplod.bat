@echo off
:: Add all changes to staging

cd "C:\bahan edit\folder baru buat upload"

git add .

:: Get the current date and time
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set curDate=%%a-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set curTime=%%a-%%b

:: Read the current value of iterator from iterator.txt
set /p i=<iterator.txt

:: Increment the iterator
set /a i+=1

:: Save the updated iterator back to iterator.txt
echo %i% > iterator.txt

:: Commit with the date, time, and iterator as the message
git commit -m "%curDate% %curTime% #%i%"

:: Push changes
git push

:: Pause before closing
echo rill sudah upload cuyy
pause > nul
