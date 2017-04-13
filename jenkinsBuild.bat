rem @echo off
setlocal

set enginepath=type your unreal engine path
set msbuild=type msbuild path
set projectname=type your project name
set nowdir=type workspace directory name
set outputdir=type build output directory name

rd /s /q "%nowdir%\Binaries"
rd /s /q "%nowdir%\Intermediate"
rd /s /q "%nowdir%\Saved"

if exist "%nowdir%\Source" ("%enginepath%\Binaries\DotNet\UnrealBuildTool.exe" -projectfiles -project="%nowdir%\%projectname%.uproject" -game -rocket -progress)
if exist "%nowdir%\%projectname%.sln" ("%msbuild%" "%nowdir%\%projectname%.sln" /t:build /p:Configuration="Development Editor";Platform=Win64;verbosity=diagnostic)

"%enginepath%\Build\BatchFiles\RunUAT.bat" BuildCookRun -project="%nowdir%\%projectname%.uproject" -noP4 -platform=Win64 -clientconfig=Development -serverconfig=Development -cook -allmaps -build -stage -pak -archive -archivedirectory=%outputdir%
