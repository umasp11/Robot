*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
ScreenshotTest
    open browser    https://www.prosoft-technology.com/     chrome
    maximize browser window

    capture element screenshot    xpath://*[@id="div_logo"]     logo.png    #in default project location SS will be stored
    capture page screenshot     homepage.png        #in default project location SS will be stored

    #capture element screenshot    xpath://*[@id="div_logo"]     C:/Users/umasankar.panigrahy/PycharmProjects/Robo/logo.png
    #capture page screenshot     homepage.png    C:/Users/umasankar.panigrahy/PycharmProjects/Robo/homepage.png  #in given path SS will be stored

