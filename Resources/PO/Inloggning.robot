*** Settings ***
Library        SeleniumLibrary

*** Keywords ***

Logga in
    Click Link                      id=SignIn
    Wait Until Page Contains        Login
    Input Text                      id=email-id                                              admin@automationplayground.com
    Input Text                      id=password                                              qwe
    Click Button                    id=submit-id
Verifiera inloggning
    Wait Until Page Contains        Our Happy Customers