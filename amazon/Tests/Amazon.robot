*** Settings ***
Documentation  This is the basic infor about the whole suite
Resource  ../Resources/AmazonGUI.robot
Resource  ../Resources/Common.robot


*** Variables ***






*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic infor about the test
    [Tags]  Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    Begin Check Out
    End Web Test





