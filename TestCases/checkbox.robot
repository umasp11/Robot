*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Radio button and check box test
    open browser    ${url}  ${browser}
    maximize browser window
    #after every steps it will take 2 seconds
    set selenium speed    2seconds

    #to select radio button we need to pass two param 'name' and 'value'
    select radio button    sex  Female
    select radio button    exp  5

    #select checkbox
    select checkbox    BlackTea
    select checkbox    RedTea
    unselect checkbox    BlackTea
    close browser


*** Keywords ***

