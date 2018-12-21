*** Settings ***
Resource  ./PO/Cart.robot
Resource  ./PO/LandingPage.robot
Resource  ./PO/Product.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/SignIn.robot
Resource  ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
    SignIn.Sign In The User As Already Registered

Do Login
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Sign In To Your Account

Do Logout
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Sign In To Your Account
    TopNav.Sign Out From Your Account

Do Registration
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Try to Register a New User Using Empty Email
    TopNav.Try to Register a New User