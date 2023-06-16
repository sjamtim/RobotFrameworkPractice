*** Settings ***
Documentation                    Detta är information om hela test-suiten
Library                          SeleniumLibrary

#Run the script: robot -d results Tests/firstScript.robot

*** Variables ***
#Här ska jag lägga till variabler för att göra skriptet mer läsbart. 

*** Test Cases ***
Add new customer
    [Tags]                          AddNewCustomer

    Log to console                  Påbörjar testfallet.. 
    Open Browser                    https://automationplayground.com/crm/                    chrome
    Maximize Browser Window
    Wait Until Page Contains        Customers Are Priority One!
    Log To Console                  Öppnade hemsidan

    Click Link                      id=SignIn
    Wait Until Page Contains        Login

    Input Text                      id=email-id                                              admin@automationplayground.com
    Input Text                      id=password                                              qwe
    Click Button                    id=submit-id
    Wait Until Page Contains        Our Happy Customers

    Click link                      id=new-customer        
    Wait Until Page Contains        Add Customer

    Input Text                      id=EmailAddress                                          janedoi@gmail.com
    Input Text                      id=FirstName                                             Jan
    Input Text                      id=LastName                                              Felofsson
    Input Text                      id=City                                                  Malmo
    Select From List By Value       id=StateOrRegion                                         WY    
    Select Radio Button             gender                                                   male
    Select Checkbox                 name=promos-name                         
    Click Button                    xpath=//*[@id="loginform"]/div/div/div/div/form/button    
    Wait Until Page Contains        Success! New customer added.            
    
    Sleep                           2s            
    Close Browser


*** Keywords ***
