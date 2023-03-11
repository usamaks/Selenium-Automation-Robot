*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/index.php
${browser}    chrome
${username}    tutorial
${password}    tutorial

*** Test Cases ***
LoginTest
    Open my browser    ${url}    ${browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click SignIn
    Verify Successfull Login
    Close browsers