*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://thetestingworld.com/testings

*** Test Cases ***
Robot Registration Page Input
    open browser    ${URL}    ${Browser}
    maximize browser window
    Enter username and password    HelloSubhashini    subhashini17@gmail.com

*** Keywords ***
Enter username and password
    [arguments]    ${Username}    ${Email}
    input text    name:fld_username    ${Username}
    input text    xpath://input[@name='fld_email']    ${Email}
    #close browser

