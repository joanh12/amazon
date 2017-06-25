*** Settings ***
Library  Selenium2Library

*** Keywords ***

Search for Products
    go to  http://www.amazon.com
    WAIT UNTIL PAGE CONTAINS  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for "Ferrari 458"

Select Product from Search Results
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results

Add Product to Cart
    click element  id=mbb-offeringID-1
    click button  id=add-to-cart-button
    wait until page contains element  id=hlb-ptc-btn-native

Begin Check Out
    click link  id=hlb-ptc-btn-native
    sleep  3s
    page should contain element  id=signInSubmit
    ELEMENT should contain  css=#a-autoid-0-announce  Sign in





