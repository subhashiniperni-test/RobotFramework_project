*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings


*** Test Cases ***
Robot First test case
    open browser    ${URL}    ${Browser}
   # maximize browser window
    select from list by label    name:sex    Female
    ${Text}=    get selected list label    name:sex
    log    ${Text}
    ${Alllabels}=    get list items    name:sex
    log    ${Alllabels}


