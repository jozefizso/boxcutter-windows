@echo off
setlocal enabledelayedexpansion

set BOX_VERSION=0.0.1
for /f "delims=" %%i in ('type VERSION') do set BOX_VERSION=%%i

set BUILD_TYPE=vmware
set VMWARE_BUILDER=vmware-iso
set TEMPLATE=win2012r2-standard.json
set ISOPATH=file:///e:/technet

set PACKER_LOG=0
set PACKER_VARS=-var "cm=nocm" -var "version=!BOX_VERSION!" -var "update=false" -var "headless=false" -var "iso_url=!ISOPATH!"

set COMMAND=packer.exe build -only=!VMWARE_BUILDER! !PACKER_VARS! !TEMPLATE!
echo %COMMAND%

%COMMAND%
