*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../TestData/Logindata.csv

Suite Setup    Openmybrowser
Suite Teardown    Closethebrowsers
Test Template    validLogin

*** Test Cases ***
Loginwithexcel  using   ${username}  ${password}      #testcasename and can be skipped

*** Keywords ***
validLogin
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputthePassword    ${password}
    Loginbutton
    Dashboardpage