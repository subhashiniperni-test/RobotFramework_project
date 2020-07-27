*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource1.robot
#test timeout    15seconds

*** Variables ***
${URL}    http://thetestingworld.com/testings
${Browser}    Chrome

*** Test Cases ***
With Return Value
    [Documentation]    This testcases illustrates return value
    #[timeout]    50seconds
    ${Res}=    Start Browser    ${URL}  ${Browser}
    Log    ${Res}
    input text    name:fld_username    ${Res}
    close browser