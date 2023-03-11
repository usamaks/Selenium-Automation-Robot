*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
WaitTest
         ${speed}=    get selenium speed
         log to console    ${speed}
         open browser    https://demowebshop.tricentis.com/register    chrome
         maximize browser window
         set selenium timeout    10 seconds
         set selenium implicit wait    10 seconds
         #set selenium speed    3 seconds    #wait for 3 seconds for every statement
         wait until page contains    Register    #wait till Register text appears--default 5 seconds
         select radio button    Gender    M
         input text    name:FirstName    Dave
         input text    name:LastName     King
         ${speed}=    get selenium speed
         log to console    ${speed}

