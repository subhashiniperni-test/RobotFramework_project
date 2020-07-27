*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Userkeywordmkdir.py

*** Variables ***

*** Keywords ***
Start Browser and maximise
    open browser    http://www.thetestingworld.com/testings    Chrome
    maximize browser window

Close Browser Window
    ${Title}=    get title
    log    ${Title}
    close browser

Creating Folder
    [Arguments]    ${foldername}    ${subfoldername}
    create_Folder    ${foldername}
    create_sub_folder    ${subfoldername}
    log    "Task completed successffully"

Cancatening username and password
    [Arguments]    ${username}    ${password}
    ${result}=    concatenate_two_values    ${username}    ${password}
    log    ${result}
