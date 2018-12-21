*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    # Sleep   2s
    Wait Until Page Contains  Faded Short Sleeve T-shirts

Add to Cart
    Click Element  css=#add_to_cart > button
    # Click Button  css=#add_to_cart > button
    Sleep   2s