*** Settings ***
Suite Setup    log to console   opening browser
Suite Teardown    log to console    closing browser

Test Setup    log to console    Execute before every test cases
Test Teardown    log to console     Execute after every test cases

*** Test Cases ***
TC1
    log to console    first test case

TC2
    log to console    Second test case

TC3
    log to console    Third test case