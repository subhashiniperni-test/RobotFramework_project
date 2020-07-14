*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Start Browser
    [Arguments]    ${UserURL}    ${UserBrowser}
    open browser    ${UserURL}    ${UserBrowser}
    maximize browser window
    ${Title}=    get title
    [Return]    ${Title}