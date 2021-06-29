*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
MouseOperationTest
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window

    #Right click on element
    open context menu   xpath:/html/body/div/section/div/div/div/p/span

    #double click operation
    go to    http://testautomationpractice.blogspot.com/
    double click element    xpath://*[@id="HTML10"]/div[1]/button

    #drag an drop
    go to    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop    id:box6    id:box106

    close browser