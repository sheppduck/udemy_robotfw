*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Add Product To Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
