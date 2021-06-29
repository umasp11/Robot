*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Radio button and check box test
    open browser    ${url}  ${browser}
    maximize browser window

    #From dropdown list one field will be seleted
    select from list by label    continents     Asia
    select from list by index    continents     5
    sleep   2

    #from listbox multiple field will be selected
    select from list by label    selenium_commands  Navigation Commands
    select from list by label    selenium_commands  Wait Commands
    unselect from list by label    selenium_commands  Navigation Commands
    sleep   3
    close browser