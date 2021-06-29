*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
Regression test

    ${"speed"}  get selenium speed
    log to console    ${"speed"}
    open browser    ${url}  ${browser}
    maximize browser window

    set selenium speed    2 seconds
    select radio button    Gender   M
    input text    name:FirstName    uma
    input text    name:LastName     sankar
    input text    name:Email    umasankarp93@gmail.com
    input text    name:Password     usp123
    input text    name:ConfirmPassword     usp123
    ${"speed"}  get selenium speed
    log to console    ${"speed"}