*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add to Cart
    click element  id=mbb-offeringID-1
    click button  id=add-to-cart-button