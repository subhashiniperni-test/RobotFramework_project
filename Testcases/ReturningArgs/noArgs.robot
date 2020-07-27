*** Settings ***
Library    SeleniumLibrary
Resource   ../../Resources/Resource3.robot


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First test case
    Cancatening username and passowrd    Hi    Hi
    open browser    ${URL}    ${Browser}
    close browser