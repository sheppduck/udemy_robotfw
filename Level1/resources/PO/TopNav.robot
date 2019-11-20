*** Settings ***
Documentation  Amazon Top Navigation

*** Variables ***
${TOP_NAV_SEARCH_BAR} =     id=twotabsearchtextbox
${TOP_NAV_SEARCH_BUTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input
${SEARCH_TERM} =            Maisto 1:24 Scale Assembly Line Ferrari 458 Italia
*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOP_NAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    Click Button  ${TOP_NAV_SEARCH_BUTTON}  # Click Search Button
