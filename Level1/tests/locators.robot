*** Settings ***
Documentation  New Test about locators on a webpage
Library  SeleniumLibrary


*** Variables ***



*** Test Cases ***
Should be able to search for products
    Open Browser  https://amazon.com  gc
    Builtin.sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458
    BuiltIn.sleep  3s
    # Click Button  css=#nav-search > form > div.nav-right > div > input
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    BuiltIn.sleep  3s
    Click Link  //*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[33]/div/span/div/div/div[2]/div[3]/div/div[1]/h2/a


*** Keywords ***



