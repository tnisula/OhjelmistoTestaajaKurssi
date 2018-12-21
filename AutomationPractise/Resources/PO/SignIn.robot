*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  cart_title
    Element Should Contain  cart_title  SHOPPING-CART SUMMARY  ${none}  True


Sign In The User As Already Registered
    click element  xpath=//*[@id="center_column"]/p[2]/a[1]/span
    input text  xpath=//*[@id="email"]  koenimi@gmail.com
    input text  xpath=//*[@id="passwd"]  password
    click button  xpath=//*[@id="SubmitLogin"]
    sleep  2s