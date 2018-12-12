clear
# Load the Selenium .Net library
Add-Type -Path "C:\Users\CARDENAS MEZA\Documents\Web\selenium\lib\net45\WebDriver.dll" # or wherever your WebDriver.dll is
# https://www.seleniumhq.org/download/ C# dotnet 
# Set the PATH to ensure IEDriverServer.exe can found
$env:PATH += ";C:\Users\CARDENAS MEZA\Documents\Web\selenium\lib\net45"

$chrome_options = New-Object "OpenQA.Selenium.Chrome.ChromeOptions()"
$chrome_options= $chrome_options.AddArguments("headless","disable-gpu")
$chrome_object = New-Object "OpenQA.Selenium.Chrome.ChromeDriver($chrome_options)"
$chrome_object.Navigate().GoToURL("https://app.asapconnected.com/asa.aspx" )
$InputOrg = $chrome_object.FindElementById("ContentPlaceHolder1_txtOrgID")
$InputOrg.SendKeys("3448")
$InputUsr = $chrome_object.FindElementById("ContentPlaceHolder1_Username")
$InputUsr.SendKeys("cruz.cardenas")
$InputPwd = $chrome_object.FindElementById("ContentPlaceHolder1_Password")
$InputPWd.SendKeys("Bash0503")
$LoginButton = $chrome_object.FindElementById('ContentPlaceHolder1_Login') # Finding the search button
$LoginButton.Submit() # Sending 'submit' method as .click() doesn't work
