*** Settings ***

*** Test Cases ***
TC1 LoginTest
    [Tags]    sanity
    log to console    This is login test

TC2 User Settings
    [Tags]    regression
    log to console    This is user settings test

TC3 Moduletesting
    [Tags]    regression
    log to console    This is testing of module

TC4 Logout Test
    [Tags]    sanity
    log to console    This is logout test

#robot -i sanity TestCases\tagging.robot    - to run sanity test cases
#robot -e sanity TestCases\tagging.robot- to exclude sanity test cases
#robot -e sanity -i regression TestCases\tagging.robot--- to include and exclude both



