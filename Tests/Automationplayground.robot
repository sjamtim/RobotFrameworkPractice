*** Settings ***
Documentation                    Detta är information om hela test-suiten
Resource                         ../Resources/Automationplayground.robot
Resource                         ../Resources/Common.robot
#Run the script: robot -d results Tests/firstScript.robot

*** Variables ***
#Här ska jag lägga till variabler för att göra skriptet mer användbart 

*** Test Cases ***
Lägg till ny kund
    Påbörjar testfallet
    Öppnar webbsidan
    Loggar in
    Lägger till ny kund
    Avslutar testfallet