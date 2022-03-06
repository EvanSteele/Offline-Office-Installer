$ProPlus = @"
<Configuration>
  <Add OfficeClientEdition="64">
    <Product ID="O365ProPlusRetail">
      <Language ID="en-us" />
    </Product>
  </Add>  
</Configuration>
"@

$Business = @"
<Configuration>
  <Add OfficeClientEdition="64">
    <Product ID="O365BusinessRetail">
      <Language ID="en-us" />
    </Product>
  </Add>  
</Configuration>
"@

mkdir /ODT > $null

cd /ODT

Invoke-WebRequest https://download.microsoft.com/download/2/7/A/27AF1BE6-DD20-4CB4-B154-EBAB8A7D4A7E/officedeploymenttool_14729-20228.exe -UseBasicParsing -method "Get" -OutFile "/ODT/officedeploymenttool_14729-20228.exe"

& /ODT/officedeploymenttool_14729-20228.exe /extract:/ODT /quiet

$UserInput = read-host "Enter 1 for ProPlus install or 2 for Business install"

if ($UserInput -eq "1")
{
echo $ProPlus > /ODT/installOfficeProPlus64.xml
& /ODT/setup.exe /download installOfficeProPlus64.xml
& /ODT/setup.exe /configure installOfficeProPlus64.xml
}

if ($UserInput -eq "2")
{
echo $Business > /ODT/installOfficeBusRet64.xml
& /ODT/setup.exe /download installOfficeBusRet64.xml
& /ODT/setup.exe /configure installOfficeBusRet64.xml
}
