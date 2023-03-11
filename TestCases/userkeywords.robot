*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
UserKeywords
    ${pagetitle}=    launchBrowser    ${url}    ${browser}
    log to console    ${pagetitle}
    input text    name: userName    mercury
    input text    name:password     mercury



