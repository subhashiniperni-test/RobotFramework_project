*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox
${URL}    http://thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser Start and Close
    open browser    ${URL}    ${browser}
    close browser

*** Keywords ***
