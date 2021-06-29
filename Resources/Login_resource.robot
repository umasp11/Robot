*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://admin-demo.nopcommerce.com/
${browser}  chrome


*** Keywords ***
Launch Browser
    open browser    ${url}  ${browser}
    maximize browser window

close browser
    close all browsers

input username
    [Arguments]    ${username}
    input text    id:Email  ${username}

input pwd
    [Arguments]    ${password}
    input text    id:Password   ${password}

click login button
    click element    xpath://button[@class='button-1 login-button']

click logout link
    click link    xpath://*[@id="navbarText"]/ul/li[3]/a

Error msg should display for invalid login
    page should contain    Login was unsuccessful.

Homepage should display for valid login
    page should contain    Dashboard




