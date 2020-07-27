*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First test case
    open browser    ${URL}    ${Browser}
    maximize browser window
    ${PageTitle}=    get title
    log    ${PageTitle}
    ${Speed}=    get selenium speed
    log    ${Speed}
    ${Value}=    get value    xpath://input[@type='submit']
    log    ${Value}

