*** Settings ***
Documentation  New Test about locators on a webpage
Resource  ../resources/PO/Cart.robot
Resource  ../resources/PO/Landingpage.robot
Resource  ../resources/PO/Product.robot
Resource  ../resources/PO/SearchResults.robot
Resource  ../resources/PO/SignIn.robot
Resource  ../resources/PO/TopNav.robot
Resource  ../resources/AmazonKW.robot
Resource  ../resources/CommonKW.robot

Test Setup  Begin Web Test
Test Teardown  End Web test

*** Variables ***


*** Test Cases ***
Search for Products
    [Documentation]  Search for Products
    [Tags]  Smoke
    AmazonKW.Search for products
Select Product from Search Results
    [Documentation]  This will select a product from search results
    [Tags]  Smoke
    AmazonKW.Select Product from Search Results
Add product cart
    [Documentation]  Add to cart
    [Tags]  Smoke
    AmazonKW.Add product cart
Begin Checkout
    [Documentation]  Basic test to add a thing to cart and verify must sign in to checkout
    [Tags]  Smoke
    AmazonKW.Begin Checkout