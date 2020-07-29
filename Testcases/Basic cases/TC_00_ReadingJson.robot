*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/Locators.py

*** Variables ***
${Browser}    Chrome
${URL}    http://thetestingworld.com/testings


*** Test Cases ***
Robot Json Page Reading
    open browser    ${URL}    ${Browser}
    maximize browser window

    ${username} =    Read Element locator    Registration.username_textbox_name
    input text    name:${username}    HelloSubhashini

    ${password} =    Read Element locator    Registration.password_textbox_name
    input text    name:${password}    HelloSubhashini

    ${email} =    Read Element locator    Registration.email_textbox_name
    input text    name:${email}    subhashini@gmail.com


*** Keywords ***
Read Element locator
    [Arguments]    ${JsonPath}
    ${result} =    read_locator_json    ${JsonPath}
    [Return]    ${result}

