*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TableRowColumnValidation

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${rowcount}     get element count    xpath://table[@name='BookTable']/tbody/tr          #No of row count
    ${colcount}     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th    #No of column count
    log to console    ${rowcount}
    log to console    ${colcount}

    ${data}     get text    xpath://table[@name='BookTable']/tbody/tr[4]/td[2]              #Get text data from row4 col2
    log to console    ${data}

    table column should contain    xpath://table[@name='BookTable']     2   Author      #Column2 should Author
    table row should contain    xpath://table[@name='BookTable']    3   Learn Java      #row3 should Learn java
    table cell should contain    xpath://table[@name='BookTable']   5   2   Mukesh
    table header should contain    xpath://table[@name='BookTable']     BookName
