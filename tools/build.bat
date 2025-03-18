
del /f /s /q packages\*
rd packages
md packages

.\nuget pack zh-Hans.nuspec -OutputDirectory ./packages
.\nuget pack zh-Hant.nuspec -OutputDirectory ./packages

pause