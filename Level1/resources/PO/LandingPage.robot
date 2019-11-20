*** Settings ***
Documentation  Go to the landing page
Library  SeleniumLibrary

*** Variables ***
${URL} =        https://amazon.com

*** Keywords ***
Load
    Go To  ${URL}
Verify Page Loaded
    Wait Until Page Contains  Today's Deals
