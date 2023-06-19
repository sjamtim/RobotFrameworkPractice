*** Settings ***
Documentation                    Detta är information om hela test-suiten
Resource                         ../Resources/AutomationplaygroundApp.robot
Resource                         ../Resources/Common.robot

Test Setup                        Common.Påbörjar testfallet
Test Teardown                     Common.Avslutar testfallet
#Run the script: robot -d results Tests/firstScript.robot

*** Variables ***
#Här ska jag lägga till variabler för att göra skriptet mer användbart 

*** Test Cases ***
Lägg till ny kund
    AutomationplaygroundApp.Öppnar webbsidan
    AutomationplaygroundApp.Loggar in
    AutomationplaygroundApp.Lägger till ny kund