*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  1 result has been found.

Click Product Link
    [Documentation]  Clicks on the product image
    click image  //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Sleep  2s
