*** Settings ***
Documentation  Go to the landing page
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}
Verify Page Loaded
    Wait Until Page Contains  Today's Deals
