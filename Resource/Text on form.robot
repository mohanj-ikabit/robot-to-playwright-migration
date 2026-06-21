*** Settings ***
Library   SeleniumLibrary
#Library    FakerLibrary    locale=en_US
Library   String
Library   Collections

*** Keywords ***
4_1_10_1_text_present
    [Arguments]    ${text}
    ${status}=		Page Should Contain	     ${text}
    Run Keyword If    ${status}==True    log to console    Text present on page is.............${text}
    log to console    Text present on page is.............${text}
