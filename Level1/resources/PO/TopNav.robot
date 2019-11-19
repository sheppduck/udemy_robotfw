*** Settings ***
Documentation  Amazon Top Navigation
Library  SeleniumLibrary

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox  Maisto 1:24 Scale Assembly Line Ferrari 458 Italia

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input  # Click Search
