*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../Resources/AutomationPractiseApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/AutomationPractise.robot

*** Variables ***
${BROWSER} =  firefox
${URL} =  http://automationpractice.com/index.php

*** Test Cases ***
Logged out user can search for products
    [Documentation]  Tämä testi ...
    [Tags]  Smoke
    AutomationPractiseApp.Search for Products

Logged out user can view a product
    [Documentation]  Tämä testi ...
    [Tags]  Smoke
    AutomationPractiseApp.Search for Products
    AutomationPractiseApp.Select Product from Search Results

Logged out user can add product to cart
    [Documentation]  Tämä testi ...
    [Tags]  Smoke
    AutomationPractiseApp.Search for Products
    AutomationPractiseApp.Select Product from Search Results
    AutomationPractiseApp.Add Product to Cart

Logged out user must sign in to check out
    [Documentation]  Tämä testi ...
    [Tags]  Test
    AutomationPractiseApp.Search for Products
    AutomationPractiseApp.Select Product from Search Results
    AutomationPractiseApp.Add Product to Cart
    AutomationPractiseApp.Begin Checkout

Register User
    [Documentation]  Tämä testi kokeilee uuden käyttäjän rekisteröitymisen
    [Tags]  Test2
    AutomationPractiseApp.Do Registration

Login User
    [Documentation]  Tämä testi tekee onnistuneen kirjautumisen. Login ennen logoutia.
    [Tags]  Test2
    AutomationPractiseApp.Do Login

Logout User
    [Documentation]  Tämä testi onnistuu, jos on kirjoittautunut onnistuneesti ensin sisään.
    [Tags]  Test2
    AutomationPractiseApp.Do Logout


