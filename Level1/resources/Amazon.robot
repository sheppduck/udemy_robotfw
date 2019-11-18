*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for products
    Go To  https://amazon.com
    Wait Until Page Contains  Today's Deals
    #Builtin.sleep  3s
    Input Text  id=twotabsearchtextbox  Maisto 1:24 Scale Assembly Line Ferrari 458 Italia
    BuiltIn.sleep  3s
    # Click Button  css=#nav-search > form > div.nav-right > div > input
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input  # Click Search
    Wait Until Page Contains  Maisto 1:24 Scale Assembly Line Ferrari 458 Italia
Select Product from Search Results
    #BuiltIn.sleep  3s
    Click Element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/div[3]/div/div[1]/h2/a
    Wait Until Page Contains  Back to results
Add product to the cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    #Wait Until Page Contains  Proceed to checkout (1 item)
Begin Checkout
    Click Link  Proceed to checkout (1 item)
    Page Should Contain Element  ap_email
    #Element Text Should Be  ap_email