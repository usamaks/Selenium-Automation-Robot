*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}    ${browser}
    open browser   ${url}    ${browser}
    maximize browser window

Click Registration link
    click link    ${link_reg}

Enter First Name
    [Arguments]    ${firstname}
    input text    ${txt_firstname}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}
    input text    ${txt_lastname}    ${lastname}

Enter Phone
    [Arguments]    ${phone}
    input text    ${txt_phone}    ${phone}

Enter Address
    [Arguments]    ${address}
    input text    ${txt_address}    ${address}

Enter City
    [Arguments]    ${city}
    input text    ${txt_city}    ${city}

Enter State
    [Arguments]    ${state}
    input text    ${txt_state}    ${state}

Enter Pincode
    [Arguments]    ${pincode}
    input text    ${txt_pincode}    ${pincode}

Select Country
    [Arguments]    ${country}
    select from list by label    ${drp_country}    ${country}

Enter username
    [Arguments]    ${username}
    input text    ${txt_username}    ${username}

Enter password
    [Arguments]    ${password}
    input text    ${txt_password}    ${password}

Confirm password
    [Arguments]    ${confirmpassword}
    input text    ${txt_confirmPassword}    ${confirmpassword}

CLick the Submit button
    click button    ${btn_submit}

Verify Registration is successful
    page should contain    Register: Mercury Tours

Close the browser
    close all browsers

