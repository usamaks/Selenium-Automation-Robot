*** Settings ***
Library   SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Testing Radio Buttons and Checkboxes
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds    #waits 2 seconds before executing

    #selecting radio buttons & checkboxes
    select radio button  sex  Female
    select radio button  exp   2

    select checkbox    Manual Tester
    select checkbox    QTP
    unselect checkbox    Manual Tester

*** Keywords ***

