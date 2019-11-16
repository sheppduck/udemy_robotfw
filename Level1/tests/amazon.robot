*** Settings ***
Documentation  This is some basic info
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User Must sign in to check out
    [Documentation]  User Searches for product, adds to cart, foo
    [Tags]  smoke
    Open Browser  http://www.amazon.com  gc
    Wait Until Page Contains  Best Sellers
    Input Text  id=twotabsearchtextbox  Valera Explorer 90 Inch Portable Green Screen
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Valera Explorer 90 Inch Portable Green Screen"
    Click Link  css=#result_0 a.s-access-detail-page
    Wait Until Page Contains  Back to results
    Click Button  id-add-to-cart-button
    Wait Until Page Contains  1 item added to Cart

    Click Link  Proceed to Checkout
    Page Should Contain Element  ap_signin1a_pagelet_title
    Element Text Should Be  ap_signin1a_pagelet_title  Sign In
    Close Browser

*** Keywords ***


