
del /f /s /q packages\*
rd packages
md packages

.\nuget pack zh-Hans.nuspec -OutputDirectory ./packages

pause