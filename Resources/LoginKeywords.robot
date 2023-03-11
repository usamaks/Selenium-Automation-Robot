*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}    ${browser}
    open browser   ${url}    ${browser}
    maximize browser window

Enter Username
    [Arguments]    ${username}
    input text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}    ${password}

Click SignIn
    click button    ${btn_loginButton}

Verify Successfull Login
    title should be    Login: Mercury Tours

Close browsers
    close all browsers