*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigationcommands

    open browser    https://www.google.com/    chrome
    maximize browser window
    ${loc} =    get location
    log to console    ${loc}
    sleep    2

    go to    https://www.bing.com/
     ${loc} =    get location
    log to console    ${loc}
    sleep    2

    go back
    ${loc} =    get location
    log to console    ${loc}
    sleep    2
    close browser
