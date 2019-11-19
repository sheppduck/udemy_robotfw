*** Settings ***

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    Search Results.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product Link

Add product cart
    Product.Add Product To Cart

Begin Checkout
    Signin.Begin Checkout
