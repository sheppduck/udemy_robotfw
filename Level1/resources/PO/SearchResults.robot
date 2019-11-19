*** Settings ***
Documentation
Library  SeleniumLibrary

*** Keywords ***
Click Product Link
    [Documentation]  Clicks on the first product in the search
    Wait Until Page Contains  Maisto 1:24 Scale Assembly Line Ferrari 458 Italia
    Click Element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[4]/div[1]/div[1]/div/span/div/div/div[2]/div[3]/div/div[1]/h2/a
    #Wait Until Page Contains  Back to results