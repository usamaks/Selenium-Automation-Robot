*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
BrowserCloseTests
    open browser    https://demowebshop.tricentis.com/register    chrome
    maximize browser window

    open browser    https://www.google.com    chrome
    maximize browser window

    #close browser    #closes current browser
    close all browsers    #closes all browser windows
