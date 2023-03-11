*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetLinkCount
    open browser    https://demo.guru99.com/test/newtours/    chrome
    maximize browser window
    ${getlinkscount} =    get element count    xpath://a
    log to console    ${getlinkscount}

    @{linkitems}    create list
    FOR    ${i}    IN RANGE    1    ${getlinkscount}
       ${linkText} =    get text    xpath:(//a)[${i}]
       log to console    ${linkText}
    END

