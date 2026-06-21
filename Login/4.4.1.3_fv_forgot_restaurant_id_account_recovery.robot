*** Settings ***
Default Tags      fvforgotrestid
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
Suite Teardown    close all browsers

*** Test Cases ***
App_login
    [Documentation]    Navigate to the forgot restaurant ID page.
    login front
    Wait Until Element Is Visible    xpath=//*[@href="/sign-up"]    9
    Click Element                     xpath=//*[@href="/login"]
    Wait Until Element Is Visible    xpath=//*[@href="/need-help-sign-in"]    9
    Click Element                    xpath=//*[@href="/need-help-sign-in"]
    Wait Until Element Is Visible    xpath=//*[@href="/forgot-restaurant-id"]    9
    Click Element                    xpath=//*[@href="/forgot-restaurant-id"]

button_submit_right_name
    [Documentation]    Verify the 'NEXT' button has the correct name.
    4_1_4_1_button_rightname_new    submit    NEXT

button_submit_attribute_type
    [Documentation]    Verify the 'NEXT' button has the correct type attribute.
    4_1_4_6_button_attribute        submit    type    button

button_backtologin_rightname
    [Documentation]    Verify the 'BACK TO LOGIN' button has the correct name.
    4_1_4_1_button_rightname_new    back-login    arrow_back\n BACK TO LOGIN

button_backtologin_right_name2
    [Documentation]    Verify the 'BACK TO LOGIN' button has the correct alternative name.
    Page Should Contain             Login

backtologin_link1_rightname
    [Documentation]    Verify the 'Sign In' link has the correct name.
    4_1_3_1_link_rightName          /login    Sign In

backtologin_lin12_clickActive
    [Documentation]    Verify the 'Sign In' link is clickable.
    4_1_3_4_link_clickActive        /login

Primary_Phone_Number_numeric_zero_not_allowed
    [Documentation]    Verify that zero is not allowed in the phone number field.
    4_1_5_1_numeric_zero_not_allowed    phoneNumberInput

Primary_Phone_Number_numeric_field_not_lt_zero
    [Documentation]    Verify that negative numbers are not allowed in the phone number field.
    4_1_5_3_numeric_field_not_lt_zero    phoneNumberInput

Primary_Phone_Number_numeric_field_no_alphabets
    [Documentation]    Verify that alphabets are not allowed in the phone number field.
    4_1_5_4_numeric_field_no_alphabets    phoneNumberInput

Primary_Phone_Number_numeric_no_splchars
    [Documentation]    Verify that special characters are not allowed in the phone number field.
    4_1_5_5_numeric_field_no_splchars    phoneNumberInput

Primary_Phone_Number_numeric_no_spaces
    [Documentation]    Verify that spaces are not allowed in the phone number field.
    4_1_5_8_numeric_field_no_spaces    phoneNumberInput

Primary_Phone_Number_numeric_decimal_not_permitted
    [Documentation]    Verify that decimal values are not allowed in the phone number field.
    4_1_5_10_numeric_field_decimal_not_permitted    phoneNumberInput

Primary_Phone_Number_numeric_pastable
    [Documentation]    Verify that pasting is allowed in the phone number field.
    4_1_5_11_numeric_field_pastable    phoneNumberInput

Primary_Phone_Number_numeric_zeroes_stripped
    [Documentation]    Verify that leading zeroes are stripped in the phone number field.
    4_1_5_12_numeric_leading_zeroes_stripped    phoneNumberInput

Primary_Phone_Number_numeric_spacebefore
    [Documentation]    Verify that spaces before input are handled correctly in the phone number field.
    4_1_5_13_numeric_spacebefore    phoneNumberInput

Primary_Phone_Number_numeric_spaceafter
    [Documentation]    Verify that spaces after input are handled correctly in the phone number field.
    4_1_5_14_numeric_spaceafter    phoneNumberInput

Primary_Phone_Number_numeric_default_value
    [Documentation]    Verify that the phone number input field has a default value of "+" when the page loads. This ensures the field is pre-populated for international phone number entry.
    Wait Until Element Is Visible    xpath=//input[@id="phoneNumberInput"]    10s
    4_1_5_15_numeric_field_default_value    phoneNumberInput    +1 (013) 333-4444

Primary_Phone_Number_numeric_default_state_enabled
    [Documentation]    Verify that the phone number field is enabled by default.
    4_1_5_16_numeric_field_default_state_enabled    phoneNumberInput

Primary_Phone_Number_numeric_attribute_placeholder
    [Documentation]    Verify the placeholder text for the phone number field.
    4_1_5_20_numeric_field_attribute    phoneNumberInput    placeholder    Primary Phone Number

Text_on_form_1
    [Documentation]    Verify the presence of 'Account Recovery' text on the form.
    4_1_10_1_text_present    Account Recovery

Text_on_form_2
    [Documentation]    Verify the presence of 'Forgot Restaurant ID' text on the form.
    4_1_10_1_text_present    Forgot Restaurant ID

Text_on_form_3
    [Documentation]    Verify the presence of instructions for entering the phone number.
    4_1_10_1_text_present    To find your Restaurant ID, please enter the Phone number associated with your Restaurant

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains        Privacy Policy | Terms & Conditions
    Wait Until Page Contains        BUILT By Ikabit Inc | © Ikabit Inc. 2022
    Element Should Be Visible       ${FOOTER_DIVIDER}

Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View        ${FOOTER_DIVIDER}
    Wait Until Page Contains        Privacy Policy
    Go Back

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View        ${FOOTER_DIVIDER}
    Wait Until Page Contains        Terms & Conditions
    Go Back
