*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    click element    xpath://button[contains(text(),'Click Me')]
    sleep    2

    #handle alert    accept    # to press ok on alert
    #handle alert    dismiss    # to close alert
    #handle alert    leave       # to keep alert open
    alert should not be present    Press a button!
    sleep    2