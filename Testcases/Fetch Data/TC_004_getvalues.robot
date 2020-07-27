*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First test case

    open browser    ${URL}    ${Browser}
    ${Location}=    get location
    log    ${Location}
    ${pagehtml}=    get source
    log    ${pagehtml}
    ${attr}    get element attribute    name:fld_username    class
    log    ${attr}
    ${count}    get element count    class:field
    log    ${count}
    close browser