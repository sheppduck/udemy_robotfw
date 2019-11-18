*** Settings ***
Documentation  New Test about locators on a webpage
Resource  ../resources/Amazon.robot
Resource  ../resources/Common.robot

*** Variables ***


*** Test Cases ***
User Must Sign in to Checkout
    [Documentation]  Basic test to add a thing to cart and verify must sign in to checkout
    [Tags]  Smoke
    Common.Begin Web Test
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add product to the cart
    Amazon.Begin Checkout
    Common.End Web test

