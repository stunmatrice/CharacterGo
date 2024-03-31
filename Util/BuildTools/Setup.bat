@echo off
setlocal enabledelayedexpansion

rem BAT script that downloads and generates
rem rpclib, gtest and boost libraries for CharacterGO
rem Run it through a cmd with the x64 Visual C++ Toolset enabled.

set LOCAL_PATH=%~dp0
set FILE_N=-[%~n0]:

rem Print batch params (debug purpose)
echo %FILE_N% [Batch params]: %*

rem ============================================================================
rem -- Check for compiler ------------------------------------------------------
rem ============================================================================

where cl 1>nul
if %errorlevel% neq 0 goto error_cl


rem ============================================================================
rem -- Parse arguments ---------------------------------------------------------
rem ============================================================================

set BOOST_VERSION=1.80.0
set INSTALLERS_DIR 