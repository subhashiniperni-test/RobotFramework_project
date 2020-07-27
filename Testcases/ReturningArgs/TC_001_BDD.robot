*** Settings ***
Resource    ../../Resources/Resource3.robot

*** Variables ***

*** Test Cases ***
Testcase in BDD Format
    Given Start Browser and maximise
    When Creating Folder    Ashini    Venkat
    Then Cancatening username and password    Testing    Ashini

