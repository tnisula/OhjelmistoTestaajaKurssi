*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${LANDING_NAVIGATION_ELEMENT} =  id=header_logo

*** Keywords ***
Load
    Go To  ${URL}
    Sleep  2s

Verify Page Loaded
    Title Should Be    My Store