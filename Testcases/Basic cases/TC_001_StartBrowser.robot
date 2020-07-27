*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    http://thetestingworld.com/testings

*** Test Cases ***
Robot Registration Page Input
    open browser    ${URL}    ${Browser}
    maximize browser window
    set selenium speed    2seconds
    input text    name:fld_username    HelloSubhashini
    input text    xpath://input[@name='fld_email']    subhashini17@gmail.com
    select radio button    add_type    office
    select from list by value    name:sex    2
    select from list by label    name:country    India
    select from list by value    name:state    2
    select from list by label    name:city    Chirala
    select checkbox    name:terms
    click link    xpath://a[text()='Read Detail']
    #clear element text    name:fld_username
    #close browser