*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Product successfully added to your shopping cart  2s

Proceed to Checkout
    # Click Element  xpath=/html/body/div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/a/span
    click link  xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    Sleep   2s
#    Input Text  id=ap_email  nisula.timo@gmail.com
#    Input Text  id=ap_password  password
#    Click Button  id=signInSubmit