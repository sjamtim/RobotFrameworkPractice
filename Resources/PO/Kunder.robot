*** Settings ***
Library        SeleniumLibrary

*** Keywords ***
Lägg till ny kund
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

Verifiera tillagd kund
     Wait Until Page Contains        Success! New customer added.