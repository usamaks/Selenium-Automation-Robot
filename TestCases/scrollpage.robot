*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,2500)    #horizontal and verticalscroll pixels


    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[35]/td[1]/img    #scroll till canada
    execute javascript    window.scrollTo(0,document.body.scrollHeight)    #scroll till bottom
    sleep    3
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    #top of the page
    sleep    3

