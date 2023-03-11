*** Settings ***
Library   SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Testing Dropdown and List box
    open browser  ${url}  ${browser}
    maximize browser window

    #selecting from dropdown and list boxes
    select from list by label    continents    Australia
    sleep    2
    select from list by index    continents    5

    select from list by label    selenium_commands    Browser Commands
