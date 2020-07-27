*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource2.robot
Documentation    This file is having setup and teardown functionality
Test Setup    Start Browser and maximise
Test Teardown    Close Browser Window
#Default Tags    DFTG
#Force Tags    FT


*** Variables ***
#${Browser}    Chrome
#${URL}    http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First test case
    [Tags]    Sanity
    input text    name:fld_username    Subhashini
    input text    name:fld_email    subhashini17@gmail.com
    input text    name:fld_password    1234567

Robot Next Test Case
    [Tags]    Smoke
    select radio button    add_type    home