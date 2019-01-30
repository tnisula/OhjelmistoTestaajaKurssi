*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOP_NAV_SEARCH_EDIT} =  id=search_query_top
${TOP_NAV_SEARCH_BUTTON} =  xpath=//*[@id="searchbox"]/button
${TOP_NAV_LOGIN_BUTTON} =  css=#header > div.nav > div > div > nav > div.header_user_info > a

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOP_NAV_SEARCH_EDIT}  shirt

Submit Search
    Sleep   2s
    Click Button  ${TOP_NAV_SEARCH_BUTTON}

Try to Register a New User Using Empty Email
    click element  ${TOP_NAV_LOGIN_BUTTON}
    page should contain  Authentication
    Input Text  xpath=//*[@id="email_create"]  ${EMPTY}
    Click Button  xpath=//*[@id="SubmitCreate"]
    Sleep  1s
    Page Should Contain  Invalid email address.

Try to Register a New User
    Input Text  xpath=//*[@id="email_create"]  koenimi2@gmail.com
    Log  xpath=//*[@id="SubmitCreate"]
    Click Button  xpath=//*[@id="SubmitCreate"]
    Sleep  2s
    Page Should Contain Element  xpath=//*[@id="account-creation_form"]

Sign In To Your Account
    Click Link  xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Page Should Contain  Already registered?
    input text  xpath=//*[@id="email"]  koenimi@gmail.com
    input text  xpath=//*[@id="passwd"]  password
    click button  xpath=//*[@id="SubmitLogin"]
    Sleep  2s

Sign Out From Your Account
    Click Link  xpath=//*[@id="header"]/div[2]/div/div/nav/div[2]/a
    Title Should Be  Login - My Store