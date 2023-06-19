*** Settings ***
Library                          SeleniumLibrary

*** Keywords ***

Påbörjar testfallet
    Open Browser                    about:blank        chrome
Avslutar testfallet
    Sleep                           2s            
    Close Browser