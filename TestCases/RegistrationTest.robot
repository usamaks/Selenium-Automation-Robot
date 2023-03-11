*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/index.php
${browser}    chrome

*** Test Cases ***
RegistrationTest
    Open my browser    ${url}    ${browser}
    Click Registration link
    Enter First Name    David
    Enter Last Name     John
    Enter Phone      99999912
    Enter Address    NYC
    Enter City       SXR
    Enter State      ONE
    Enter Pincode    111203
    Select Country    CANADA
    Enter username    admin
    Enter password    test123
    Confirm password    test123
    CLick the Submit button
    Verify Registration is successful
    Close the browser

