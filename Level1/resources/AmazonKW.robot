*** Settings ***

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    #Search Results.Verify Search Completed
Select Product from Search Results
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Click Product Link
Add product cart
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Click Product Link
    Product.Add Product To Cart
Begin Checkout
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Click Product Link
    Product.Add Product To Cart
    Signin.Begin Checkout