*** Settings ***
Default Tags    fvbilling
Library         SeleniumLibrary
Library         String
Resource        ../Resource/button.robot
Resource        ../Resource/dropdownlist.robot
Resource        ../Resource/dropdown.robot
Resource        ../Resource/genericfunctions.robot
Resource        ../Resource/numericalvalue.robot
Resource        ../Resource/textfield.robot
Resource        ../Resource/Checkbox.robot
Resource        ../Resource/Text on form.robot
Suite Teardown  close all browsers

*** Variables ***
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL_LOGGED_OUT}           http://www.ikabit.com
${FOOTER_DIVIDER}                  xpath=//*[@id="footer-divider"]

*** Test Cases ***
App_login
    login front
    wait until element is visible    xpath=//*[@href="/sign-up"]    9

goto_url
    go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/payment-and-billing

promocode_text_notnull
    4_1_1_1_text_notnull    enterPromocode

promocode_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed    enterPromocode

promocode_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed    enterPromocode

promocode_text_minlength
    4_1_1_6_text_minlength    enterPromocode    a

promocode_text_maxlength
    4_1_1_7_text_maxlength    enterPromocode    Like any other social media site Facebook has length requirements when it comes to writing on the wa

promocode_text_notpastable
    4_1_1_10_text_notpastable    enterPromocode

promocode_text_spacebefore
    4_1_1_11_text_spacebefore    enterPromocode

promocode_text_spaceafter
    4_1_1_12_text_spaceafter    enterPromocode

promocode_text_field_default_value
    4_1_1_14_text_field_default_value    enterPromocode    ${EMPTY}

promocode_text_field_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    enterPromocode

promocode_text_field_label
    4_1_1_17_text_field_label    enterPromocode-label    Enter Promo Code

button_redeem_rightname
    4_1_4_1_button_rightname_new    promocodeadd    REDEEM

button_redeem_inactive
    4_1_4_5_button_inactive    promocodeadd

button_redeem_attribute_type
    4_1_4_6_button_attribute    promocodeadd    type    button

Text_on_form_1
    4_1_10_1_text_present    Billing Information

Text_on_form_2
    4_1_10_1_text_present    (Please Enter Your Payment Details)

Text_on_form_6
    4_1_10_1_text_present    Your Cart

Text_on_form_7
    4_1_10_1_text_present    Best8Eats

Text_on_form_8
    4_1_10_1_text_present    Package selected:

Text_on_form_9
    4_1_10_1_text_present    Cost: $    

Text_on_form_10
    4_1_10_1_text_present    Promo Code

Text_on_form_11
    4_1_10_1_text_present    Total (USD): $

Text_on_form_13
    4_1_10_1_text_present    First 2 Months Free With Promo Code - 60FREE

button_goback_rightname
    4_1_4_1_button_rightname_new    goBack    GO BACK

button_goback_active
    4_1_4_2_button_active    goBack

button_goback_attribute_type
    4_1_4_6_button_attribute    goBack    type    button

button_getmestarted_rightname
    4_1_4_1_button_rightname_new    next    GET ME STARTED!

button_getmestarted_active
    4_1_4_2_button_active    next

button_getmestarted_attribute_type
    4_1_4_6_button_attribute    next    type    button



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
