*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LaunchBrowser

    [Arguments]    ${Appurl}    ${Appbrowser}
    open browser   ${Appurl}    ${Appbrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}
