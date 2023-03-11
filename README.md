# Selenium-Automation-With-Python-Robot-framework

This repository contains all the basic Robot Framework Automation Test Cases to get started with the Robot Framework Automation using Selenium & Python including UI Automation,Functional Testing Automation,Data driven testing, Database testing, Page Object model.

## Requirements
 * Python (3.6 or higher)
 * Robot Framework
 * Selenium Library
 * ChromeDriver

## Installation
 1. Install Python (version 3.6 or higher) on your system.
 2. Install Robot Framework using pip:
    ```
    pip install robotframework
    ```
 3. Install Selenium Library using pip:
    ```
    pip install robotframework-seleniumlibrary
    ```
 4. Download the latest version of ChromeDriver from [here](https://sites.google.com/a/chromium.org/chromedriver/downloads) and add it to your system PATH.

## Usage
 1. Clone or download the repository to your local machine.
 2. Navigate to the project directory and open a command prompt or terminal window.
 3. To run the test suite, enter the following command:
    
##    robot tests
    
 4. To run a specific test case, enter the following command:
    ```
    robot -t "Test Case Name" tests
    

## Writing Tests
 1. Create a new test case file in the `tests` directory.
 2. Import the necessary libraries at the top of the file:
    ```
    *** Settings ***
    Library  SeleniumLibrary
    ```
 3. Create a new test case:
    ```
    *** Test Cases ***
    Test Case Name
        Open Browser    https://www.example.com    Chrome
        Input Text      xpath=//input[@name='username']    myusername
        Input Text      xpath=//input[@name='password']    mypassword
        Click Button    xpath=//button[@type='submit']
        Page Should Contain    Welcome, myusername
        Close Browser
    ```
## 4. Run the test case using the `robot` command (see Usage section).

## Resources
 * [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
 * [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
 * [ChromeDriver Download](https://sites.google.com/a/chromium.org/chromedriver/downloads)
