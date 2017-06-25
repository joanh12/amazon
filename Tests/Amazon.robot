*** Settings ***
Documentation  This is the basic infor about the whole suite
Resource  ../Resources/AmazonGUI.robot
Resource  ../Resources/Common.robot
Suite Setup  Common.Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Common.Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458



*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic infor about the test
    [Tags]  Smoke

    AmazonGUI.Search for Products
    AmazonGUI.Select Product from Search Results
    AmazonGUI.Add Product to Cart
    AmazonGUI.Begin Check Out






