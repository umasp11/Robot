*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
BrowserNavigationTest
    open browser    https://www.youtube.com/    chrome
    ${location}   get location
    log to console    ${location}
    sleep    2

    go to    https://www.prosoft-technology.com/
    ${location}   get location
    log to console    ${location}
    sleep    2

    go back
    ${location}   get location
    log to console    ${location}

    close all browsers