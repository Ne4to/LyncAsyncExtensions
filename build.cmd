@echo off

mkdir src\LyncSDK\Desktop
mkdir src\LyncSDK\Silverlight
mkdir src\Microsoft.Rtc.Collaboration

echo .
echo Building LyncSDK Desktop
.\apps\AsyncCodeGenerator\x86\AsyncCodeGenerator.exe .\libs\LyncSDK\Desktop\Microsoft.Lync.Model.dll /out:.\src\LyncSDK\Desktop\Microsoft.Lync.Model.AsyncExtensions.cs.pp /ns:$rootnamespace$

echo .
echo Building LyncSDK Silverlight
.\apps\AsyncCodeGenerator\x86\AsyncCodeGenerator.exe .\libs\LyncSDK\Silverlight\Microsoft.Lync.Model.dll /out:.\src\LyncSDK\Silverlight\Microsoft.Lync.Model.AsyncExtensions.cs.pp /ns:$rootnamespace$

echo .
echo Building Microsoft.Rtc.Collaboration
.\apps\AsyncCodeGenerator\x64\AsyncCodeGenerator.exe .\libs\Microsoft.Rtc.Collaboration\Microsoft.Rtc.Collaboration.dll /out:.\src\Microsoft.Rtc.Collaboration\Microsoft.Rtc.Collaboration.AsyncExtensions.cs.pp /ns:$rootnamespace$