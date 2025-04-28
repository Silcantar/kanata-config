:: Set or create an environment variable pointing to the root folder of the 
:: Kanata configuration (the parent of the folder containing this script).

@echo off
pushd ..
setx KANATA_PATH %cd%
popd