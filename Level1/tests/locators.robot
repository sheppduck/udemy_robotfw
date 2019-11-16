*** Settings ***
Documentation  New Test about locators on a webpage
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
User Must Sign in to Checkout
    [Documentation]  Basic test to add a thing to cart and verify must sign in to checkout
    [Tags]  Smoke
    #[Test 1]
    Open Browser  https://amazon.com  gc
    Wait Until Page Contains  Today's Deals
    Builtin.sleep  3s
    Input Text  id=twotabsearchtextbox  Ferrari 458 Maisto 1:24
    BuiltIn.sleep  3s
    # Click Button  css=#nav-search > form > div.nav-right > div > input
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input  # Click Search
    Wait Until Page Contains  results for "Ferrari 458 Maisto 1:24
    BuiltIn.sleep  3s
    Click Element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/div[3]/div/div[1]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Wait Until Page Contains  Proceed to checkout (1 item)
    Click Link  Proceed to checkout (1 item)
    Page Should Contain Element  ap_email
    #Element Text Should Be  ap_email
    Close Browser

*** Keywords ***


