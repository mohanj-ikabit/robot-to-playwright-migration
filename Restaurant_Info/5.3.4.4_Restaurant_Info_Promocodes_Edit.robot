*** Settings ***
Default Tags      promocode3
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers


*** Test Cases ***
5.3.4.4_restaurant_info_promocodes_edit
    Login pkg1
      log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    Scroll Element Into View    xpath=//*[@href="https://best8eats.com/privacy"]
    Page Should Contain Element   xpath=//*[@id="promoCode-label"]
    Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
    ${promocode}    Generate Random String     4    [LOWER]
    Input text    xpath=//*[@id="promoCode"]      ${promocode}
    log to console    entering promo code value as   ${promocode}
    sleep  2 seconds
    #Click Element    Save
    Scroll Element Into View    xpath=//*[@href="https://best8eats.com/privacy"]
    Page Should Contain Element    xpath=//*[@id="promoCodeName-label"] 
    
