# robot --include=sanity  TestCases\Grouptest.robot     to run only sanity test cases
# robot -i sanity -i FutureTest TestCases\Grouptest.robot   to run multiple group test cases
# robot --exclude=sanity TestCases\Grouptest.robot      Except that group other group tcs will run

*** Test Cases ***
TC1
    [Tags]    sanity
    log to console    first test case

TC2
    [Tags]    regression
    log to console    Second test case

TC3
    [Tags]    regression
    log to console    Third test case

TC4
    [Tags]    regression
    log to console    4th test case

TC5
    [Tags]    FutureTest
    log to console    5th test case

TC6
    [Tags]    FutureTest
    log to console    6th test case

TC7
    [Tags]    sanity
    log to console    7th test case

