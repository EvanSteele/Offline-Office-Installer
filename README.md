# Offline-Office-Installer
Automated Installation script for Office 365 offline install

## Usage

Download script and run on target machine. When prompted select the correct version for this install.  Installation will hang during the initial setup for each version. Allow the program to continue until the office confirmation message appears.  

## Issues

Some machines may not allow for running arbitrary powershell scripts. If this is the case you will need to use **set-executionpolicy** to allow the script to run. More information on this cmdlet can be found here https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.2

## Modification

This is a basic script built to serve an immediate purpose. Anyone is welcome to improve the scripts functionality and submit pull requests. Possible areas to improve are noted below: 

- Change the version selection to use flags instead of a user prompt. 
- Provide support for 32-bit instillations
- Update the download link if microsoft changes how the offline installer tool is hosted. 
- Include error handling, logging, and verbosity
