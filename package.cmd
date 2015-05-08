@echo off

mkdir nuget\packages

echo .
echo Packaging LyncSDK.AsyncExtensions
.\apps\NuGet\NuGet.exe pack nuget\LyncSDK\LyncSDK.AsyncExtensions.nuspec -OutputDirectory .\nuget\packages\

echo .
echo Packaging LyncSDK.AsyncExtensions.Sources
.\apps\NuGet\NuGet.exe pack nuget\LyncSDK.AsyncExtensions.Sources\LyncSDK.AsyncExtensions.Sources.nuspec -OutputDirectory .\nuget\packages\

echo .
echo Packaging LyncSDK.AsyncExtensions
.\apps\NuGet\NuGet.exe pack nuget\Microsoft.Rtc.Collaboration.AsyncExtensions\Microsoft.Rtc.Collaboration.AsyncExtensions.nuspec -OutputDirectory .\nuget\packages\

echo .
echo Packaging LyncSDK.AsyncExtensions.Sources
.\apps\NuGet\NuGet.exe pack nuget\Microsoft.Rtc.Collaboration.AsyncExtensions.Sources\Microsoft.Rtc.Collaboration.AsyncExtensions.Sources.nuspec -OutputDirectory .\nuget\packages\