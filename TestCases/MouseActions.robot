*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    #right click

    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu    xpath://span[contains(text(),'right click me')]
    sleep    2

    #doubleclick

    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath: //button[contains(text(),'Copy Text')]
    sleep    2

    #drag and drop

    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box4    id:box101
    sleep    3
    close browser
