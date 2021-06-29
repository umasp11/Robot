*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
alert test

    open browser    http://testautomationpractice.blogspot.com/   chrome
    maximize browser window
    click element    xpath://button[@onclick='myFunction()']
    sleep   2
    #handle alert    dismiss
    #handle alert    accept
    #handle alert    leave
    alert should be present    Press a button!


