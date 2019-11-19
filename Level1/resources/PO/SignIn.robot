*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Checkout
    Click Link  Proceed to checkout (1 item)
    Page Should Contain Element  ap_email