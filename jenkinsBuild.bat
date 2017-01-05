rem @echo off
rem %1 : project name
rem %2 : unreal engine path
rem %3 : MSBuild path

rd /s /q "%WORKSPACE%/Binaries"
rd /s /q "%WORKSPACE%/Intermediate"
rd /s /q "%WORKSPACE%/Saved"
"%~2/Engine/Binaries/DotNet/UnrealBuildTool.exe" -projectfiles -project="%WORKSPACE%/%~1.uproject" -game -rocket -progress
"%~3/Bin/MSBuild.exe" "%WORKSPACE%/%~1.sln" /t:build /p:Configuration="Development Editor";Platform=Win64;verbosity=diagnostic
"%~2/Engine/Build/BatchFiles/RunUAT.bat" BuildCookRun -project="%WORKSPACE%/%~1.uproject" -noP4 -platform=Win64 -clientconfig=Development -serverconfig=Development -cook -allmaps -build -stage -pak -archive -archivedirectory="%WORKSPACE%/%~1/temp/Development/x64"