*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Add Product To Cart
    [Documentation]  Add the item to the cart
    Click Button  id=add-to-cart-button
