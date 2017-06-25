*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    go to  ${START_URL}

Verify Page Loaded
    WAIT UNTIL PAGE CONTAINS  Your Amazon.com