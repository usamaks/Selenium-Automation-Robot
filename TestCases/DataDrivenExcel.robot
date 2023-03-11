*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../TestData/Logindata.xlsx    sheet_name=Sheet1

Suite Setup    Openmybrowser
Suite Teardown    Closethebrowsers
Test Template    InvalidLogin

*** Test Cases ***
Loginwithexcel  using   ${username}  ${password}      #testcasename and can be skipped

*** Keywords ***
InvalidLogin
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputthePassword    ${password}
    Loginbutton
    ErrorMessage