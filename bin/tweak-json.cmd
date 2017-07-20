@echo off

pushd %~dp0\..

for %%F in (*.json) do (
    py bin\tweak-json.py %%~dpnxF
)

popd