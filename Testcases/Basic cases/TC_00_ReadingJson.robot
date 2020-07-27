*** Settings ***
Library    SeleniumLibrary
Library    ../../ExternalKeywords/Locators.py


*** Variables ***
${Browser}    Chrome
${URL}    http://thetestingworld.com/testings


*** Test Cases ***
Robot Json Page Reading
    ${username} =    Read Element locator    Registration.username_textbox_name
    input text    name:${username}    HelloSubhashini
    input text    xpath://input[@name='fld_email']    subhashini@gmail.com
    input text    name:fld_password    HelloSubhashini

*** Keywords ***
Read Element locator
    [Arguments]    ${JsonPath}
    ${result} =    read_locator_json    ${JsonPath}
    [Return]    ${result}

