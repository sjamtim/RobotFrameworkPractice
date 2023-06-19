*** Settings ***
Resource                             ../Resources/PO/Startsida.robot
Resource                             ../Resources/PO/Inloggning.robot
Resource                             ../Resources/PO/Kunder.robot

*** Keywords ***
Öppnar webbsidan
    Startsida.Öppna Startsida
    Startsida.Verifiera Öppnad Startsida
Loggar in
    Inloggning.Logga in
    Inloggning.Verifiera inloggning
Lägger till ny kund
    Kunder.Lägg till ny kund
    Kunder.Verifiera tillagd kund