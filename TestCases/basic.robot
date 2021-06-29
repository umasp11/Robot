#*** Settings ***
#Library  SeleniumLibrary


#*** Variables ***

#*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com/  chrome
    click link  xpath://a[@class='ico-login']
    input text  id:Email    Umasankarp93@gmail.com
    input text  id:Password     usp123
    click element   xpath://button[@class='button-1 login-button']
    close browser


#*** Keywords ***




*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    LoginToApplication
    close browser
    

*** Keywords ***

LoginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    Umasankarp93@gmail.com
    input text  id:Password     usp123
    click element   xpath://button[@class='button-1 login-button']