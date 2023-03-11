*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingFrames
     open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
     select frame    packageListFrame
     click link    org.openqa.selenium
     unselect frame
     sleep    2

     select frame    packageFrame
     click link      WebDriver
     unselect frame
     sleep    2

     select frame    classFrame
     click link      Help
     unselect frame
     sleep    2

     close browser