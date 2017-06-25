*** Settings ***
Library  Selenium2Library
*** Variables ***
${SIGNIN_MAIN_HEADING} =        //*[@id="a-page"]/div[1]/div[3]/div/div/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    click link  id=hlb-ptc-btn-native
    sleep  3s
    page should contain element  ${SIGNIN_MAIN_HEADING}
    ELEMENT should contain  ${SIGNIN_MAIN_HEADING}  Sign in
