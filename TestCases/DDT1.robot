*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_resource.robot
Suite Setup     Launch Browser
Suite Teardown    close browser
Test Template    invalid login


*** Test Cases ***
Right user empty pwd    admin@yourstore.com     ${empty}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user wrong pwd    adm@yourstore.com     xyz
Wrong user right pwd    admi@yourstore.com     admin

*** Keywords ***
invalid login
    [Arguments]    ${username}  ${password}
    input username    ${username}
    input pwd    ${password}
    click login button
    error msg should display for invalid login
