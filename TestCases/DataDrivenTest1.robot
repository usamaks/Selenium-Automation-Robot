*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Openmybrowser
Suite Teardown    Closethebrowsers
Test Template    InvalidLogin

*** Test Cases ***            username               password
#Right user empty pass      admin@yourstore.com         ${EMPTY}
#Right user wrong pass      admin@yourstore.com         xyz
#Wrong user right pass      ad@yourstore.com            admin
#Wrong user empty pass      ad@yourstore.com            ${EMPTY}
Right user right pass       admin@yourstore.com         admin

*** Keywords ***
InvalidLogin
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputthePassword    ${password}
    Loginbutton
    #ErrorMessage
    Dashboardpage