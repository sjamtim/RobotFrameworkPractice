*** Settings ***
Library                          SeleniumLibrary

*** Keywords ***

Öppnar webbsidan
    Log to console                  Påbörjar testfallet.. 
    Go To                           https://automationplayground.com/crm/
    Maximize Browser Window
    Wait Until Page Contains        Customers Are Priority One!
    Log To Console                  Öppnade hemsidan
Loggar in
    Click Link                      id=SignIn
    Wait Until Page Contains        Login
    Input Text                      id=email-id                                              admin@automationplayground.com
    Input Text                      id=password                                              qwe
    Click Button                    id=submit-id
    Wait Until Page Contains        Our Happy Customers
    Click link                      id=new-customer        
    Wait Until Page Contains        Add Customer
Lägger till ny kund
    Input Text                      id=EmailAddress                                          janedoi@gmail.com
    Input Text                      id=FirstName                                             Jan
    Input Text                      id=LastName                                              Felofsson
    Input Text                      id=City                                                  Malmo
    Select From List By Value       id=StateOrRegion                                         WY    
    Select Radio Button             gender                                                   male
    Select Checkbox                 name=promos-name                         
    Click Button                    xpath=//*[@id="loginform"]/div/div/div/div/form/button    
    Wait Until Page Contains        Success! New customer added.
