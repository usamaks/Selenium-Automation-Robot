*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=    get element count    xpath://*[@name="BookTable"]/tbody/tr
    ${cols}=    get element count    xpath://*[@name="BookTable"]/tbody/tr[1]/th

    log to console    ${rows}
    log to console    ${cols}

    ${data}=    get text    xpath://td[contains(text(),'Learn Java')]
    log to console    ${data}

    table column should contain    xpath://*[@name="BookTable"]    2    Mukesh
    table row should contain    xpath://*[@name="BookTable"]    3    Java
    table cell should contain   xpath://*[@name="BookTable"]    5    3    Selenium
    table header should contain    xpath://*[@name="BookTable"]    BookName
    close browser