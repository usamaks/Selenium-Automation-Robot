*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    https://demo.automationtesting.in/Windows.html    chrome
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window    title=Selenium

    click element    xpath://span[contains(text(),'Documentation')]
    sleep    3
