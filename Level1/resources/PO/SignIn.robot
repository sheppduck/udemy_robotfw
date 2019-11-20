*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MAIN_HEADING} =       ap_email

*** Keywords ***
Begin Checkout
    Click Link  Proceed to checkout (1 item)
    Page Should Contain Element  ${MAIN_HEADING}