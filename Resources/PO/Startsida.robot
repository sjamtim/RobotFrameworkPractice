*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Öppna Startsida
    Log to console                  Påbörjar testfallet.. 
    Go To                           https://automationplayground.com/crm/
    Maximize Browser Window
Verifiera Öppnad Startsida
    Wait Until Page Contains        Customers Are Priority One!