*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Start Browser and maximise
    open browser    http://www.thetestingworld.com/testings    Chrome
    maximize browser window

Close Browser Window
    ${Title}=    get title
    log    ${Title}
    close browser