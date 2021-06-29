*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register


*** Test Cases ***
Regression test

    open browser    ${url}  ${browser}
    maximize browser window

    ${"implicit"}   get selenium implicit wait          #default implicit wait is 5 sec
    log to console    ${"implicit"}

    set selenium implicit wait    10 seconds

    ${"implicit"}   get selenium implicit wait          #here implicit wait is 10 sec
    log to console    ${"implicit"}

    select radio button    Gender   M
    input text    name:FirstNamexx    uma       #it will wait for 10 sec here to find this element and then throw error
    input text    name:LastName     sankar
    input text    name:Email    umasankarp93@gmail.com
    input text    name:Password     usp123
    input text    name:ConfirmPassword     usp123

    ${"time"}   get selenium timeout
    log to console    ${"time"}