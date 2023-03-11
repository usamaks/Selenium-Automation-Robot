*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login_url}    https://admin-demo.nopcommerce.com/    chrome
${browser}    chrome

*** Keywords ***
Openmybrowser
    open browser    ${login_url}   ${browser}
    maximize browser window

Closethebrowsers
    close all browsers

Openloginpage
    go to    ${login_url}}

InputUsername
    [Arguments]    ${username}
    input text    id:Email    ${username}

InputthePassword
    [Arguments]    ${password}
    input text    id:Password    ${password}

Loginbutton
    click element    xpath://button[contains(text(),'Log in')]

Logoutlink
    click link    Logout

ErrorMessage
    page should contain    Login was unsuccessful

Dashboardpage
    page should contain    Dashboard
