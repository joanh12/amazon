*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    open browser  about:blank  ${BROWSER}

End Web Test
    close browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    log  I am cleaning up the testing data

Custom Keyword 1
    Log  Doing Keyword 1

Custom Keyword 2
    Log  Doing Keyword 2