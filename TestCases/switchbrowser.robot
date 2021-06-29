*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
MultiplebrowserTest

    open browser    https://www.prosoft-technology.com/  chrome
    maximize browser window

    open browser    https://www.youtube.com/    chrome
    maximize browser window

    switch browser    1
    ${title}    get title
    log to console    ${title}

    switch browser    2
    ${title2}    get title
    log to console    ${title2}

    close all browsers
