*** Settings ***
Default Tags    fvnotpref
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
    
Open_panel5
    #Close default Panel1 - Profile. Open Panel for notification preferences
    click element    xpath=//*[@id="panel1"]
    click element    xpath=//*[@id="panel5"]

Email_promotions_checkbox_default_selected
    4_1_8_2_checkbox_default_is_selected     promotionCheck
Email_promotions_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled     promotionCheck
Email_promotions_checkbox_label
    4_1_8_7_checkbox_label    promotionLabelCheck    Emails with promotions/offers & events
    #4_1_8_7_checkbox_label    promotionLabelCheck    Emails with promotions/offers &amp; events
                              
#Email_promotions_checkbox_attribute_label
    #4_1_8_8_checkbox_button_attribute   promotionLabelCheck   label   Emails with promotions/offers & events
Email_promotions_checkbox_attribute_type
    4_1_8_8_checkbox_button_attribute   promotionCheck   type   checkbox

News_letter_checkbox_default_selected
    4_1_8_2_checkbox_default_is_selected     newsletterCheck
News_letter_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled     newsletterCheck
News_letter_checkbox_label
    4_1_8_7_checkbox_label    newsletterLabelCheck    News Letter
#News_letter_checkbox_attribute_label
    #4_1_8_8_checkbox_button_attribute   newsletterLabelCheck   label   News Letter
News_letter_checkbox_attribute_type
    4_1_8_8_checkbox_button_attribute   newsletterCheck   type   checkbox

Best8Eats_Policy_checkbox_default_not_selected
    4_1_8_2_checkbox_default_is_selected     policyUpdates
Best8Eats_Policy_checkbox_default_state_disabled
    4_1_8_6_checkbox_default_state_disabled    policyUpdates
Best8Eats_Policy_checkbox_label
    4_1_8_7_checkbox_label    best8EatsCheckLabel    Best8Eats Policy Updates
#Best8Eats_Policy_checkbox_attribute_label
    #4_1_8_8_checkbox_button_attribute   policyUpdates   label   Best8Eats Policy Updates
Best8Eats_Policy_checkbox_attribute_type
    4_1_8_8_checkbox_button_attribute   policyUpdates   type   checkbox

button_save_rightname_new
    4_1_4_1_button_rightname_new    save5    SAVE
button_save_active
    4_1_4_2_button_active    save5
button_save_attribute_type
    4_1_4_6_button_attribute    save5    type    button
#button_save_attribute_label
    #4_1_4_6_button_attribute    save5    label     SAVE

button_cancel_rightname_new
    4_1_4_1_button_rightname_new    cancel5    CANCEL
button_cancel_active
    4_1_4_2_button_active    cancel5
button_cancel_attribute_type
    4_1_4_6_button_attribute    cancel5    type    button
#button_cancel_attribute_label
    #4_1_4_6_button_attribute    cancel5    label    CANCEL
    


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
