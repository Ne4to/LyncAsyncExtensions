@echo off

.\apps\NuGet\NuGet.exe restore .\src\dlls\dlls.sln

set msbuild=C:\Windows\Microsoft.NET\Framework\v4.0.30319\msbuild.exe
%msbuild% .\src\dlls\dlls.sln /t:Rebuild /p:Configuration=Release