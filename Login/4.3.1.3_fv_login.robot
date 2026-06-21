*** Settings ***
Default tags      fvlogin
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Suite Teardown     close all browsers

*** Variables ***
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL_LOGGED_OUT}           http://www.ikabit.com
${FOOTER_DIVIDER}                  xpath=//*[@id="footer-divider"]

*** Test Cases ***
App_login
    login loginpage
    #Open Chromefn    ${LOGIN URL}
    #log to console    clicking Sign in
    #click element    xpath=//*[@href='/login']
    
Login_ID_default_value
    4_1_2_3_email_ID_default_value    email    ${EMPTY}
Login_ID_default_value_for_label
    4_1_2_3_email_ID_default_value    email-label    Email Address *
Login_ID_wrong_format
    4_1_2_1_email_ID_wrong_format    email
Login_ID_right_format
    4_1_2_2_email_ID_right_format    email

Password_text_not_null
    4_1_1_1_text_notnull    password
Password_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      password
Password_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    password
Password_text_minlength
    4_1_1_6_text_minlength    password     zaaaaaaa
Password_text_maxlength
    4_1_1_7_text_maxlength    password     Like*any&o(*&(&*
Password_text_pastable
    4_1_1_9_text_pastable    password
Password_text_spacebefore
    4_1_1_11_text_spacebefore    password
Password_text_spaceafter
    4_1_1_12_text_spaceafter    password
Password_text_default_value
    4_1_1_14_text_field_default_value    password    ${EMPTY}
Password_text_default_value_label
    4_1_1_14_text_field_default_value    password-label    Password*
Password_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    password
    
Restaurant_id_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    company-id
Restaurant_id_field_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    company-id
Restaurant_id_field_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    company-id
Restaurant_id_field_no_splchars
    4_1_5_5_numeric_field_no_splchars    company-id
Restaurant_id_field_minlength
    4_1_5_6_numeric_field_minlength    company-id    01123456
Restaurant_id_field_maxlength
    4_1_5_7_numeric_field_maxlength    company-id    01123456
Restaurant_id_field_no_spaces
    4_1_5_8_numeric_field_no_spaces    company-id
Restaurant_id_field_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    company-id
Restaurant_id_field_pastable
    4_1_5_11_numeric_field_pastable    company-id
Restaurant_id_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    company-id
Restaurant_id_spacebefore
    4_1_5_13_numeric_spacebefore       company-id
Restaurant_id_spaceafter
    4_1_5_14_numeric_spaceafter    company-id
Restaurant_id_field_default_value
    4_1_5_15_numeric_field_default_value    company-id    01123456      
#Restaurant_id_field_default_value_for_label
    #4_1_5_15_numeric_field_default_value    company-id-label    Restaurant ID*
Restaurant_id_field_default_value_for_label
    4_1_1_14_text_field_default_value    company-id-label    Restaurant ID*
#Restaurant_id_field_default_value_for_label
    #4_1_5_20_numeric_field_attribute    company-id-label    label    Restaurant ID*
Restaurant_id_field_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    company-id
Restaurant_id_field_not_null
    4_1_5_18_numeric_field_not_null    company-id    
    
Remember_me_checkbox_default_selected
    4_1_8_2_checkbox_default_is_selected    checkRemember
Remember_me_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    rememberMe
    4_1_8_5_checkbox_default_state_enabled    checkRemember
Remember_me_checkbox_label
    4_1_8_7_checkbox_label    rememberMe    Remember me
#Remember_me_checkbox_attribute_label
    #4_1_8_8_checkbox_button_attribute    rememberMe    label    Remember me

button_Login_rightname
    4_1_4_1_button_rightname_new    submit    LOGIN
    #4_1_4_5_button_inactive    LOGIN     wont run inactive now may not be required
button_Login_active
    4_1_4_2_button_active   submit
button_Login_attribute_type
    4_1_4_6_button_attribute   submit   type   button

Need_Help_Signing_in_link_rightname
    4_1_3_1_link_rightName    /need-help-sign-in   Need Help Signing In ?
Need_Help_Signing_in_link_rightcolor
    4_1_3_2_link_right_color    /need-help-sign-in
Need_Help_Signing_in_link_clickactive
    4_1_3_4_link_clickActive    /need-help-sign-in
    
Help_Page_link_rightname
    4_1_3_1_link_rightName    /help-page    Help Page
Help_Page_link_rightcolor
    4_1_3_2_link_right_color    /help-page
Help_Page_link_clickactive
    4_1_3_4_link_clickActive    /help-page
    
Text_on_form_1
    4_1_10_1_text_present    Best8Eats
Text_on_form_2
    4_1_10_1_text_present    Login
    
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
