*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
scrollingTest

    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,2000)  #Scroll page till 2000 pixels(vertically)
    #scroll element into view    //*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img    #Scroll till Ind flag

    execute javascript    window.scrollTo(0,document.body.scrollHeight)     #Scroll to end of the page

    sleep   2

    execute javascript    window.scrollTo(0,-document.body.scrollHeight)     #Scroll to start of the page