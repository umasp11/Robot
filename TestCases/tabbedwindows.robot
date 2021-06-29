*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
TabbedWindowsTest
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    click element    xpath://*[@id="Tabbed"]/a/button
    switch window   title=SeleniumHQ Browser Automation
    click element    xpath://*[@id="navbar"]/a[5]
