@echo off
REM Compilation script for CPU Scheduling Algorithms (Windows)

echo Compiling CPU Scheduling Algorithms...


if not exist "bin" mkdir bin


echo Compiling FCFS...
g++ -o bin/fcfs.exe fcfs.cpp
if %errorlevel% neq 0 (
    echo Error compiling FCFS
    pause
    exit /b 1
)


echo Compiling SJF...
g++ -o bin/sjf.exe sjf.cpp
if %errorlevel% neq 0 (
    echo Error compiling SJF
    pause
    exit /b 1
)

REM Compile Priority
echo Compiling Priority...
g++ -o bin/priority.exe priority.cpp
if %errorlevel% neq 0 (
    echo Error compiling Priority
    pause
    exit /b 1
)

REM Compile Round Robin
echo Compiling Round Robin...
g++ -o bin/rr.exe rr.cpp
if %errorlevel% neq 0 (
    echo Error compiling Round Robin
    pause
    exit /b 1
)

echo Compilation complete!
echo Executables are in the bin/ directory
pause
