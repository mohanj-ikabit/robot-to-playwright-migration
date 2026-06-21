*** Settings ***
Default Tags    fvacctsettings_pymtpref
Library    SeleniumLibrary
Library    String
Resource   ../Resource/button.robot
Resource   ../Resource/dropdownlist.robot
Resource    ../Resource/dropdown.robot
Resource   ../Resource/genericfunctions.robot
Resource   ../Resource/numericalvalue.robot
Resource   ../Resource/textfield.robot
Resource   ../Resource/Checkbox.robot
Resource    ../Resource/Text on form.robot
Resource    ../Resource/date.robot
Resource    ../Resource/Email ID.robot

Suite Teardown    close all browsers

*** Test Cases ***
App_Login
    #login createuser
    #go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings
    login
    click element    xpath=//*[@href="/user/account-settings"]

Open_panel4
    #Close default Panel1 - Profile. Open Panel for payment preferences
    click element    xpath=//*[@id="panel1"]
    click element    xpath=//*[@id="panel4"]
    
ClearElementText_cardName
    Clear Element Text    xpath=//*[@id="cardName"]
#Name_on_card_text_notnull
    #4_1_1_1_text_notnull    cardName
Name_on_card_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      cardName
Name_on_card_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    cardName
Name_on_card_text_minlength
    4_1_1_6_text_minlength    cardName     zaaaaaaa
Name_on_card_text_minlength_new
    4_1_1_6_text_minlength_new    cardName     5
Name_on_card_text_maxlength
    4_1_1_7_text_maxlength    cardName     Like*any&o(*&(&*
Name_on_card_text_maxlength_new
    4_1_1_7_text_maxlength_new    cardName     80
Name_on_card_text_pastable
    4_1_1_9_text_pastable    cardName
Name_on_card_text_spacebefore
    4_1_1_11_text_spacebefore    cardName
Name_on_card_text_spaceafter
    4_1_1_12_text_spaceafter    cardName
Name_on_card_text_default_value
    4_1_1_14_text_field_default_value    cardName    ${EMPTY}
Name_on_card_text_default_value_of_label
    4_1_1_14_text_field_default_value    cardName-label    Name on the Card
Name_on_card_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    cardName
    
Card_number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    cardNo
Card_number_numeric_field_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    cardNo
Card_number_numeric_field_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    cardNo
Card_number_numeric_field_no_splchars
    4_1_5_5_numeric_field_no_splchars    cardNo
Card_number_numeric_field_minlength
    4_1_5_6_numeric_field_minlength    cardNo    1234567890122528
Card_number_numeric_field_maxlength
    4_1_5_7_numeric_field_maxlength    cardNo    9876543210987654
Card_number_numeric_field_no_spaces
    4_1_5_8_numeric_field_no_spaces    cardNo
Card_number_numeric_field_pastable
    4_1_5_11_numeric_field_pastable    cardNo
#Card_number_numeric_leading_zeroes_stripped
    #wait until element is visible    xpath=//*[@id="cardNo"]
    #4_1_5_12_numeric_leading_zeroes_stripped    cardNo
Card_number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       cardNo
Card_number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    cardNo
Card_number_numeric_field_default_value
    4_1_5_15_numeric_field_default_value    cardNo    ${EMPTY}
Card_number_numeric_field_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    cardNo
Card_number_numeric_field_not_null
    4_1_5_18_numeric_field_not_null    cardNo
Card_number_numeric_field_label
    4_1_5_19_numeric_field_label    cardNo-label    Card Number
Card_number_failing_field_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    cardNo
Card_number_numeric_field_attribute
    4_1_5_20_numeric_field_attribute    cardNo   number   number
    
dob_right_format
    4_1_7_2_date_right_format_mmyy    exp

dob_default_state_enabled
    4_1_7_5_date_default_state_enabled    exp
dob_label
    4_1_7_7_date_default_date_label    exp-label    MM/YY
dob_attribute_type
    4_1_7_8_date_attribute    exp     type    date

cvv_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    cvv
cvv_numeric_field_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    cvv
cvv_numeric_field_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    cvv
cvv_numeric_field_no_splchars
    4_1_5_5_numeric_field_no_splchars    cvv
cvv_numeric_field_maxlength
    4_1_5_7_numeric_field_maxlength    cvv    543
cvv_numeric_field_minlength
    4_1_5_6_numeric_field_minlength    cvv    123
cvv_numeric_field_no_spaces
    4_1_5_8_numeric_field_no_spaces    cvv
cvv_numeric_field_pastable
    4_1_5_11_numeric_field_pastable    cvv
#cvv_numeric_leading_zeroes_stripped
    #wait until element is visible    xpath=//*[@id="cvv"]
    #4_1_5_12_numeric_leading_zeroes_stripped    cvv
cvv_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       cvv
cvv_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    cvv
cvv_numeric_field_default_value
    4_1_5_15_numeric_field_default_value    cvv    ${EMPTY}
cvv_numeric_field_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    cvv
#cvv_numeric_field_not_null
    #4_1_5_18_numeric_field_not_null    cvv
cvv_numeric_field_label
    4_1_5_19_numeric_field_label    cvv-label    CVV
cvv_numeric_field_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    cvv
cvv_numeric_field_attribute
    4_1_5_20_numeric_field_attribute    cvv   type  number

button_save_rightname_new
    4_1_4_1_button_rightname_new    save4    SAVE
button_save_active
    4_1_4_2_button_active    save4
button_save_attribute_type
    4_1_4_6_button_attribute    save4    type    button
#button_save_attribute_label
    #4_1_4_6_button_attribute    save4    label     SAVE

button_cancel_rightname_new
    4_1_4_1_button_rightname_new    cancel4    CANCEL
button_cancel_active
    4_1_4_2_button_active    cancel4
button_cancel_attribute_type
    4_1_4_6_button_attribute    cancel4    type    button
#button_cancel_attribute_label
    #4_1_4_6_button_attribute    cancel4    label    CANCEL
    
Text_on_form_1
    4_1_10_1_text_present    OR
Text_on_form_2
    4_1_10_1_text_present    Enter New Card Details
    
Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2022
    Element Should Be Visible    ${FOOTER_DIVIDER}

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
