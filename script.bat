@echo off
setlocal enabledelayedexpansion

REM Output file path
set outputFile="password_attempts.txt"

REM Clear the output file if it exists
if exist %outputFile% del %outputFile%

REM Initialize digits
set a=0
set b=0
set c=0
set d=0

:brute_force

REM Construct the current PIN
set pin=000!a!!b!!c!!d!
set pin=!pin:~-4!

REM Output the current PIN to the output file and print it
echo !pin! >> %outputFile%

REM Increment the digits
set /a d+=1

REM Handle digit overflow
if !d!==10 (
    set d=0
    set /a c+=1
    if !c!==10 (
        set c=0
        set /a b+=1
        if !b!==10 (
            set b=0
            set /a a+=1
            if !a!==10 goto end
        )
    )
)

REM Repeat the process
goto brute_force

:end
echo All attempts completed.
@echo off
setlocal enabledelayedexpansion

REM Output file path
set outputFile="password_attempts.txt"

REM Clear the output file if it exists
if exist %outputFile% del %outputFile%

REM Initialize digits
set a=0
set b=0
set c=0
set d=0

:brute_force

REM Construct the current PIN
set pin=000!a!!b!!c!!d!
set pin=!pin:~-4!

REM Output the current PIN to the output file and print it
echo !pin! >> %outputFile%

REM Increment the digits
set /a d+=1

REM Handle digit overflow
if !d!==10 (
    set d=0
    set /a c+=1
    if !c!==10 (
        set c=0
        set /a b+=1
        if !b!==10 (
            set b=0
            set /a a+=1
            if !a!==10 goto end
        )
    )
)

REM Repeat the process
goto brute_force

:end
echo All attempts completed.
