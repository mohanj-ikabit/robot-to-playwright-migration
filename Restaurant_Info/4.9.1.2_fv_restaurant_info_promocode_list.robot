*** Settings ***
Default Tags       fvpromocodelist
Library           SeleniumLibrary
Library            AutoItLibrary
Library            DateTime
Resource          ../Resource/radio button.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot
Resource          ../Resource/dropdown.robot
Resource          ../Resource/date.robot
Suite Teardown     Close all browsers

*** Test Cases ***
App_login
    Login

GoTo_Restaurant_info
    Click Element    xpath=//*[@href="/user/restaurant-info"]
Check_heading
    4_1_3_1_link_rightName     /user/restaurant-info     Restaurant Info
    
click_promocodes
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/header/div/div[1]/div/ul/a[4]
    Click Element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
check_heading_promocode
    4_1_3_1_link_rightName     /user/restaurant-info/create-promocodes     Promo Codes
        
Text_on_form_1
    4_1_10_1_text_present    Promo Codes List
Text_on_form_2
    4_1_10_1_text_present    Promo Code
Text_on_form_3
    4_1_10_1_text_present    Expiry
Text_on_form_4
    4_1_10_1_text_present    Created By
Text_on_form_5
    4_1_10_1_text_present    Restaurant Name
Text_on_form_6
    4_1_10_1_text_present    Condition
Text_on_form_7
    4_1_10_1_text_present    Status
Text_on_form_8
    4_1_10_1_text_present    Action



Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy
    Go Back

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Terms & Conditions
    Go Back
 
    close all browsers
