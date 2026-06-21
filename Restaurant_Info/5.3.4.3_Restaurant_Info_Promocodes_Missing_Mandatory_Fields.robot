*** Settings ***
Default Tags      promocode2
Library           SeleniumLibrary
Library           String
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

*** Test Cases ***
5.3.4.3_restaurant_info_promocodes_missing_mandatory_field_Promo_Code_Name
    Login pkg1
    log to console    login successfull
    sleep  4 seconds
    log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    #log to console    Create Promo Code button is disabled
    log to console    entering promo code name as blank
    #Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
    ${promocode}    Generate Random String     4    [LOWER]
    Input text    xpath=//*[@id="promoCode"]      ${promocode}
    log to console    entering promo code value as   ${promocode}
    sleep  2 seconds
    log to console    selecting radio as value based
    Scroll Element Into View      xpath=//*[@id="takeOut"]
    click element    xpath=//*[@value="valueBased"]
    log to console    entering values as Take Ex: $5 Of The Entire Bill. When Bill > Ex: $25
    Input text    xpath=//*[@id="val"]    5
    Input text    xpath=//*[@id="valBill"]    25
    #log to console    entering promo code expiry as    12122022
    #Input text    xpath=//*[@id="expiryDate"]    12122022
    Scroll Element Into View   xpath=//*[@id="takeOut"]
    log to console    selecting single use
    click element    xpath=//*[@value="singleUse"]
    log to console    selecting take out
    Scroll Element Into View     xpath=//*[@id="createPromoCode"]
    Input text    xpath=//*[@id="maxUsage"]     200
    log to console    entering max usage as 200
    log to console    clicking create a promo code
    click element     xpath=//*[@id="createPromoCode"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    page should contain      Field cannot be Empty
       
5.3.4.3_restaurant_info_promocodes_missing_mandatory_field_Promotion_details
    Login pkg1
    log to console    login successfull
    sleep  4 seconds
    log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"] 
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    log to console    entering promo code name as halloween 50% off
    Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
   
    log to console    entering promo code value as blank
    sleep  2 seconds
    log to console    selecting radio as value based
    Scroll Element Into View      xpath=//*[@id="takeOut"]
    click element    xpath=//*[@value="valueBased"]
    log to console    entering values as Take Ex: $5 Of The Entire Bill. When Bill > Ex: $25
    Input text    xpath=//*[@id="val"]    5
    Input text    xpath=//*[@id="valBill"]    25
    #log to console    entering promo code expiry as    12122022
    #Input text    xpath=//*[@id="expiryDate"]    12122022
    Scroll Element Into View   xpath=//*[@id="takeOut"]
    log to console    selecting single use
    click element    xpath=//*[@value="singleUse"]
    log to console    selecting take out
    Scroll Element Into View     xpath=//*[@id="createPromoCode"]
    Input text    xpath=//*[@id="maxUsage"]     200
    log to console    entering max usage as 200
    log to console    clicking create a promo code
    click element     xpath=//*[@id="createPromoCode"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]    
    page should contain     Field cannot be Empty
    close browser
    
5.3.4.3_restaurant_info_promocodes_missing_mandatory_field_Promocode_expiry
    Login pkg1
    log to console    login successfull
    sleep  4 seconds
    log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    log to console    entering promo code name as halloween 50% off
    Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
    ${promocode}    Generate Random String     4    [LOWER]
    Input text    xpath=//*[@id="promoCode"]      ${promocode}
    log to console    entering promo code value as   ${promocode}
    sleep  2 seconds
    log to console    selecting radio as value based
    Scroll Element Into View      xpath=//*[@id="takeOut"]
    click element    xpath=//*[@value="valueBased"]
    log to console    entering values as Take Ex: $5 Of The Entire Bill. When Bill > Ex: $25
    Input text    xpath=//*[@id="val"]    5
    Input text    xpath=//*[@id="valBill"]    25
    scroll element into view     xpath=//*[@id="expiryDate"]
    log to console    entering promo code expiry as blank
    #Input text    xpath=//*[@id="expiryDate"]    12122022
    #clear element text      xpath=//*[@id="expiryDate"]    
    #sleep  2s
    Press Keys  xpath=//*[@id="expiryDate"]  A+BACKSPACE
    Scroll Element Into View   xpath=//*[@id="takeOut"]
    log to console    selecting single use
    click element    xpath=//*[@value="singleUse"]
    log to console    selecting take out
    Scroll Element Into View     xpath=//*[@id="createPromoCode"]
    Input text    xpath=//*[@id="maxUsage"]     200
    log to console    entering max usage as 200
    log to console    clicking create a promo code
    click element     xpath=//*[@id="createPromoCode"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]    
    page should contain     Field cannot be Empty
    close browser
    
5.3.4.3_restaurant_info_promocodes_missing_mandatory_field_Usability
    Login pkg1
    log to console    login successfull
    sleep  4 seconds
    log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    log to console    entering promo code name as halloween 50% off
    Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
    ${promocode}    Generate Random String     4    [LOWER]
    Input text    xpath=//*[@id="promoCode"]      ${promocode}
    log to console    entering promo code value as   ${promocode}
    sleep  2 seconds
    log to console    selecting radio as value based
    Scroll Element Into View      xpath=//*[@id="takeOut"]
    click element    xpath=//*[@value="valueBased"]
    log to console    entering values as Take Ex: $5 Of The Entire Bill. When Bill > Ex: $25
    Input text    xpath=//*[@id="val"]    5
    Input text    xpath=//*[@id="valBill"]    25
    #log to console    entering promo code expiry as    12122022
    #Input text    xpath=//*[@id="expiryDate"]    12122022
    Scroll Element Into View   xpath=//*[@id="takeOut"]
    log to console    selecting multiUse as blank
    click element    xpath=//*[@value="multiUse"]
    log to console    selecting take out
    Scroll Element Into View     xpath=//*[@id="createPromoCode"]
    Input text    xpath=//*[@id="maxUsage"]     200
    log to console    entering max usage as 200
    log to console    clicking create a promo code
    click element     xpath=//*[@id="createPromoCode"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]    
    page should contain     Field cannot be Empty
    close browser
    
    
5.3.4.3_restaurant_info_promocodes_missing_mandatory_field_Can_be_used_for
    Login pkg1
    log to console    login successfull
    sleep  4 seconds
    log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    log to console    entering promo code name as halloween 50% off
    Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
    ${promocode}    Generate Random String     4    [LOWER]
    Input text    xpath=//*[@id="promoCode"]      ${promocode}
    log to console    entering promo code value as   ${promocode}
    sleep  2 seconds
    log to console    selecting radio as value based
    Scroll Element Into View      xpath=//*[@id="takeOut"]
    click element    xpath=//*[@value="valueBased"]
    log to console    entering values as Take Ex: $5 Of The Entire Bill. When Bill > Ex: $25
    Input text    xpath=//*[@id="val"]    5
    Input text    xpath=//*[@id="valBill"]    25
    #log to console    entering promo code expiry as    12122022
    #Input text    xpath=//*[@id="expiryDate"]    12122022
    Scroll Element Into View   xpath=//*[@id="takeOut"]
    click element    xpath=//*[@id="takeOut"]
    log to console  Can be Used For* blank
    log to console    selecting single use
    click element    xpath=//*[@value="singleUse"]
    log to console    selecting take out
    Scroll Element Into View     xpath=//*[@id="createPromoCode"]
    Input text    xpath=//*[@id="maxUsage"]     200
    log to console    entering max usage as 200
    log to console    clicking create a promo code
    click element     xpath=//*[@id="createPromoCode"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    page should contain   Atlease one of the options must be checked
    close browser
    
5.3.4.3_restaurant_info_promocodes_missing_mandatory_field_Max_allowed_Usage
    Login pkg1
    log to console    login successfull
    sleep  4 seconds
    log to console    going to restaurant accounts
    click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2 seconds
    click element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    log to console    entering promo code name as halloween 50% off
    Input text    xpath=//*[@id="promoCodeName"]    halloween 50% off
    ${promocode}    Generate Random String     4    [LOWER]
    Input text    xpath=//*[@id="promoCode"]      ${promocode}
    log to console    entering promo code value as   ${promocode}
    sleep  2 seconds
    log to console    selecting radio as value based
    Scroll Element Into View      xpath=//*[@id="takeOut"]
    click element    xpath=//*[@value="valueBased"]
    log to console    entering values as Take Ex: $5 Of The Entire Bill. When Bill > Ex: $25
    Input text    xpath=//*[@id="val"]    5
    Input text    xpath=//*[@id="valBill"]    25
    #log to console    entering promo code expiry as    12122022
    #Input text    xpath=//*[@id="expiryDate"]    12122022
    Scroll Element Into View   xpath=//*[@id="takeOut"]
    log to console    selecting single use
    click element    xpath=//*[@value="singleUse"]
    log to console    selecting take out
    Scroll Element Into View     xpath=//*[@id="createPromoCode"]
    #Input text    xpath=//*[@id="maxUsage"]     200
    log to console    entering max usage as blank
    log to console    clicking create a promo code
    click element     xpath=//*[@id="createPromoCode"]
    Wait Until Element Is Visible      xpath=//*[@id="promoCodeName"]  
    page should contain   Field cannot be Empty
    close browser
    
