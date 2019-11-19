*** Settings ***
Documentation  New Test about locators on a webpage
Resource  ../resources/Amazon.robot
Resource  ../resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web test

*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This tests searching only nothing else
    [Tags]  Smoke
    Amazon.Search for products

User Must Sign in to Checkout
    [Documentation]  Basic test to add a thing to cart and verify must sign in to checkout
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add product to the cart
    Amazon.Begin Checkout

