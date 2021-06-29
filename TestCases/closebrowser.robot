*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
close browser test

    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    #close browser

    open browser    http://www.practiceselenium.com/practice-form.html  chrome
    maximize browser window

    close all browsers