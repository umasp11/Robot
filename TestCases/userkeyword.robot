*** Settings ***
Library  SeleniumLibrary
Resource    ../TestCases/Resources/Resource.robot


*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/
${browser}  chrome


*** Test Cases ***
UserKeyword and resource test

    ${pagetitle}    LaunchBrowser    ${url}    ${browser}
    log to console    ${pagetitle}
    input text    name:txtUsername  Admin
    input text    name:txtPassword  admin123
    click element    xpath://*[@id="btnLogin"]