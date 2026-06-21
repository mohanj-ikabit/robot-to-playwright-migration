*** Settings ***
Default Tags	  fvsubnbilling
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
Resource          ../Resource/radio button.robot
Resource          ../Resource/date.robot

Suite Teardown    close all browsers

*** Variables ***
${ADMIN_SETTINGS_SUBS_BILL_URL}     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/admin-settings/subscription-billing

*** Test Cases ***
App_login
    Login
    Page Should Contain Element    xpath=//*[@href="/user/restaurant-info"]    10s
click_Admin_Settings
    Click element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain       Admin Settings
    
goto_Subscription_Billing
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    
radio_button_creditcard1_visible
    Element Should Be Visible      xpath=//*[@id="card_discover1117"]  [@role="radiogroup"]
radio_button_creditcard1_enabled
    4_1_9_5_radio_button_default_state_enabled     discover1117

radio_button_creditcard2_visible  
    Element Should Be Visible      xpath=//*[@id="card_visa4242"]  [@role="radiogroup"]
radio_button_creditcard2_enabled
    4_1_9_5_radio_button_default_state_enabled    visa4242

button_delete1_active
    4_1_4_2_button_active    deletecard_x1117
button_delete1_attribute_type
    4_1_4_6_button_attribute    deletecard_x1117   type    button
    

button_delete2_active
    4_1_4_2_button_active    deletecard_x4242
button_delete2_attribute_type
    4_1_4_6_button_attribute    deletecard_x4242   type    button
    

button_edit1_active
    4_1_4_2_button_active    editcard_x1117
button_edit1_attribute_type
    4_1_4_6_button_attribute    editcard_x1117   type    button


button_edit2_active
    4_1_4_2_button_active    editcard_x4242
button_edit2_attribute_type
    4_1_4_6_button_attribute    editcard_x4242   type    button   



button_unsubscribe_rightname_name
    4_1_4_1_button_rightname_new    unsubscribe   UNSUBSCRIBE FROM BEST8EATS
button_unsubscribe_active
    4_1_4_2_button_active     unsubscribe
button_unsubscribe_attribute_type
    4_1_4_6_button_attribute     unsubscribe    type    button

Scroll_to_Payment_Info_section_cancel_button
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="cancel1"]

Text_on_form_2
    4_1_10_1_text_present    Payment Info*
Text_on_form_3
    4_1_10_1_text_present    Currently Using Card Ending
Text_on_form_4
    4_1_10_1_text_present    OR

    
Scroll_to_Unsubscribe_section
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="unsubscribe"]
Text_on_form_5
    4_1_10_1_text_present    Unsubscribe & Delete All Data
Text_on_form_6
    4_1_10_1_text_present    If you wish to unsubscribe please select the option below. All your restaurant info and menu data will be deleted and all your logins will be deactivated
    
   

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
