*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_resource.robot
Library    DataDriver   ../TestData/login.xlsx     sheet_name=Sheet1

Suite Setup    Launch browser
Suite Teardown    close browser
Test Template    invalid login


*** Test Cases ***
TestCaseExecutionUsingExcelSheet ${username}  ${password}

*** Keywords ***
invalid login
    [Arguments]    ${username}  ${password}
    input username    ${username}
    input pwd    ${password}
    click login button
    error msg should display for invalid login
