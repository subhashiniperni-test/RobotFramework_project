*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}    https://www.facebook.com

*** Test Cases ***
Robot Facebook Login
    open browser    ${URL}    ${browser}
    maximize browser window
    input text    id:email    subhashini17@gmail.com
    input text    id:pass    12345678
    click button    xpath://input[@type='submit']
    close browser


