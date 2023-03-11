*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Capturescreenshot
     open browser    https://www.google.com/    chrome
     maximize browser window
     capture element screenshot    xpath:/html/body/div[1]/div[2]/div/img    logo.png
     capture page screenshot    page.png