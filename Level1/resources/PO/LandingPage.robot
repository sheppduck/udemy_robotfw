*** Settings ***
Documentation  Go to the landing page
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  https://amazon.com

Verify Page Loaded
    Wait Until Page Contains  Today's Deals
