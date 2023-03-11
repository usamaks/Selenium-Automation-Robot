*** Settings ***

#1. Test Setup-- will run before every test case
#3. Test Teardown -- will run after every test *** test cases ***

#3. Suite Setup-- will run  before Test Suite
#4. Suite Teardown-- will run  after Test Suite

Suite Setup    log to console       Opening browser
Suite Teardown    log to console    Closing browser

Test Setup    log to console    login to application
Test Teardown    log to console    Logout from application

*** Test Cases ***
TC1
    log to console    First Test case

TC2
    log to console    Second test case

TC3
    log to console    Third test case