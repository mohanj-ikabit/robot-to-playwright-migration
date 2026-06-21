*** Settings ***
Default Tags    fvacctsettings_addresses
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

*** Variables ***
#use best8eats url later
${BEST8EATS_PRIVACY_POLICY_URL}     http://www.best8eats.com/privacypolicy/
${IKABIT_PRIVACY_POLICY_URL}     https://ikabitss.com/privacy-policy/

*** Test Cases ***
App_Login
    #login createuser
    #go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings
    login
    click element    xpath=//*[@href="/user/account-settings"]
    
Open_panel3
    #Close default Panel1 - Profile. Open Panel3 for addresses
    click element    xpath=//*[@id="panel1"]
    click element    xpath=//*[@id="panel3"]

Wait_until_BillingAddressLine1_is_visble
    wait until element is visible    xpath=//*[@id="textAddressline1"]

BillingStateLabel_1
    4_1_6_11_DDL_LB_field_label     labelBillingState selectState     State*
MailingStateLabel_1
    4_1_6_11_DDL_LB_field_label     LabelMailingState selectMailingState    State*

BillingStateLabel_2
    4_1_6_12_DDL_LB_attribute     selectState    label     State*
MailingStateLabel_2
    4_1_6_12_DDL_LB_attribute     selectMailingState    label     State*

BillingAddress_Line1_text_notnull
    4_1_1_1_text_notnull    textAddressline1
BillingAddress_Line1_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      textAddressline1
BillingAddress_Line1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    textAddressline1
BillingAddress_Line1_text_minlength
    4_1_1_6_text_minlength    textAddressline1     zaaaaaaa
BillingAddress_Line1_text_minlength_new
    4_1_1_6_text_minlength_new    textAddressline1     5
BillingAddress_Line1_text_maxlength
    4_1_1_7_text_maxlength    textAddressline1     Like*any&o(*&(&*
BillingAddress_Line1_text_maxlength_new
    4_1_1_7_text_maxlength_new    textAddressline1     80
BillingAddress_Line1_text_pastable
    4_1_1_9_text_pastable    textAddressline1
BillingAddress_Line1_text_spacebefore
    4_1_1_11_text_spacebefore    textAddressline1
BillingAddress_Line1_text_spaceafter
    4_1_1_12_text_spaceafter    textAddressline1
BillingAddress_Line1_text_default_value
    4_1_1_14_text_field_default_value    textAddressline1    ${EMPTY}
BillingAddress_Line1_text_default_value_forlabel
    4_1_1_14_text_field_default_value    textAddressline1-label    Address Line1* 
BillingAddress_Line1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textAddressline1

#BillingAddress_Line2_text_notnull
    #4_1_1_1_text_notnull    textAddressline2
BillingAddress_Line2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      textAddressline2
BillingAddress_Line2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    textAddressline2
BillingAddress_Line2_text_minlength
    4_1_1_6_text_minlength    textAddressline2     zaaaaaaa
BillingAddress_Line2_text_minlength_new
    4_1_1_6_text_minlength_new    textAddressline2     5
BillingAddress_Line2_text_maxlength
    4_1_1_7_text_maxlength    textAddressline2     Like*any&o(*&(&*
BillingAddress_Line2_text_maxlength_new
    4_1_1_7_text_maxlength_new    textAddressline2     80
BillingAddress_Line2_text_pastable
    4_1_1_9_text_pastable    textAddressline2
BillingAddress_Line2_text_spacebefore
    4_1_1_11_text_spacebefore    textAddressline2
BillingAddress_Line2_text_spaceafter
    4_1_1_12_text_spaceafter    textAddressline2
BillingAddress_Line2_text_default_value
    4_1_1_14_text_field_default_value    textAddressline2    ${EMPTY}
BillingAddress_Line2_text_default_value_forlabel
    4_1_1_14_text_field_default_value    textAddressline2-label    Address Line2 (Ste, Level etc.)
BillingAddress_Line2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textAddressline2

BillingCity_text_minlength
    4_1_1_6_text_minlength    textCity     zz
    #Field can be less than 5 letters also. Faker input text generates minimum 5 chars text. Hence test it with 2 letter value.
    #4_1_1_6_text_minlength_new    textCity     5
BillingCity_text_maxlength_new
    4_1_1_7_text_maxlength_new    textCity     100
BillingCity_text_spacebefore
    4_1_1_11_text_spacebefore    textCity
BillingCity_text_spaceafter
    4_1_1_12_text_spaceafter    textCity
BillingCity_text_field_default_value
    4_1_1_14_text_field_default_value    textCity    ${EMPTY}
BillingCity_text_field_default_value_forlabel
    4_1_1_14_text_field_default_value     textCity-label    City*
BillingCity_text_field_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textCity

BillingZipcode_text_notnull
    4_1_1_1_text_notnull    textZipcode
BillingZipcode_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      textZipcode
BillingZipcode_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    textZipcode
#BillingZipcode_text_minlength
    #4_1_1_6_text_minlength    textZipcode     zaaaaaaa
BillingZipcode_text_minlength_new
    4_1_1_6_text_minlength_new    textZipcode     10
#BillingZipcode_text_maxlength
    #4_1_1_7_text_maxlength    textZipcode     
BillingZipcode_text_maxlength_new
    4_1_1_7_text_maxlength_new    textZipcode     10
BillingZipcode_text_pastable
    4_1_1_9_text_pastable    textZipcode
BillingZipcode_text_spacebefore
    4_1_1_11_text_spacebefore    textZipcode
BillingZipcode_text_spaceafter
    4_1_1_12_text_spaceafter    textZipcode
BillingZipcode_text_default_value
    4_1_1_14_text_field_default_value    textZipcode    ${EMPTY}
BillingZipcode_text_default_value_forlabel
    4_1_1_14_text_field_default_value    textZipcode-label    Zip Code*
BillingZipcode_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textZipcode

Scrolldown_to_see_save_button
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save3"]

SameAsBillingAddress_checkbox_default_not_selected
    4_1_8_1_checkbox_default_not_selected    check-same-address
    #4_1_8_2_checkbox_default_is_selected    check-same-address
SameAsBillingAddress_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    check-same-address
    #4_1_8_6_checkbox_default_state_disabled    check-same-address
SameAsBillingAddress_checkbox_label
    4_1_8_7_checkbox_label    check-same-address-label    Same As Billing Address
#SameAsBillingAddress_checkbox_attribute_label
    #4_1_8_8_checkbox_button_attribute    check-same-address    label    Same As Billing Address

MailingAddress_Line1_text_notnull
    click element     xpath=//*[@id="textMailingAddressline1"]
    4_1_1_1_text_notnull    textMailingAddressline1
MailingAddress_Line1_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      textMailingAddressline1
MailingAddress_Line1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    textMailingAddressline1
MailingAddress_Line1_text_minlength
    4_1_1_6_text_minlength    textMailingAddressline1     zaaaaaaa
MailingAddress_Line1_text_minlength_new
    4_1_1_6_text_minlength_new    textMailingAddressline1     5
MailingAddress_Line1_text_maxlength
    4_1_1_7_text_maxlength    textMailingAddressline1     Like*any&o(*&(&*
MailingAddress_Line1_text_maxlength_new
    4_1_1_7_text_maxlength_new    textMailingAddressline1     80
MailingAddress_Line1_text_pastable
    4_1_1_9_text_pastable    textMailingAddressline1
MailingAddress_Line1_text_spacebefore
    4_1_1_11_text_spacebefore    textMailingAddressline1
MailingAddress_Line1_text_spaceafter
    4_1_1_12_text_spaceafter    textMailingAddressline1
MailingAddress_Line1_text_default_value
    4_1_1_14_text_field_default_value    textMailingAddressline1    ${EMPTY}
MailingAddress_Line1_text_default_value_forlabel
    4_1_1_14_text_field_default_value    textMailingAddressline1-label    Address Line1* 
MailingAddress_Line1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textMailingAddressline1

#MailingAddress_Line2_text_notnull
    #4_1_1_1_text_notnull    textMailingAddressline2
MailingAddress_Line2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      textMailingAddressline2
MailingAddress_Line2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    textMailingAddressline2
MailingAddress_Line2_text_minlength
    4_1_1_6_text_minlength    textMailingAddressline2     zaaaaaaa
MailingAddress_Line2_text_minlength_new
    4_1_1_6_text_minlength_new    textMailingAddressline2     5
MailingAddress_Line2_text_maxlength
    4_1_1_7_text_maxlength    textMailingAddressline2     Like*any&o(*&(&*
MailingAddress_Line2_text_maxlength_new
    4_1_1_7_text_maxlength_new    textMailingAddressline2     80
MailingAddress_Line2_text_pastable
    4_1_1_9_text_pastable    textMailingAddressline2
MailingAddress_Line2_text_spacebefore
    4_1_1_11_text_spacebefore    textMailingAddressline2
MailingAddress_Line2_text_spaceafter
    4_1_1_12_text_spaceafter    textMailingAddressline2
MailingAddress_Line2_text_default_value
    4_1_1_14_text_field_default_value    textMailingAddressline2    ${EMPTY}
MailingAddress_Line2_text_default_value_forlabel
    4_1_1_14_text_field_default_value    textMailingAddressline2-label    Address Line2 (Ste, Level etc.)
MailingAddress_Line2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textMailingAddressline2

Mailing_City_text_minlength
    4_1_1_6_text_minlength    textMailingCity     zz
    #Field can be less than 5 letters also. Faker input text generates minimum 5 chars text. Hence test it with 2 letter value.
    #4_1_1_6_text_minlength_new    textMailingCity     5
Mailing_City_text_maxlength_new
    4_1_1_7_text_maxlength_new    textMailingCity     100
Mailing_City_text_spacebefore
    4_1_1_11_text_spacebefore    textMailingCity
Mailing_City_text_spaceafter
    4_1_1_12_text_spaceafter    textMailingCity
Mailing_City_text_field_default_value
    4_1_1_14_text_field_default_value    textMailingCity    ${EMPTY}
Mailing_City_text_field_default_value_forlabel
    4_1_1_14_text_field_default_value    textMailingCity-label    City*
Mailing_City_text_field_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textMailingCity

MailingZipcode_text_notnull
    4_1_1_1_text_notnull    textMailingZipcode
MailingZipcode_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      textMailingZipcode
MailingZipcode_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    textMailingZipcode
#MailingZipcode_text_minlength
    #4_1_1_6_text_minlength    textMailingZipcode     zaaaaaaa
MailingZipcode_text_minlength_new
    4_1_1_6_text_minlength_new    textMailingZipcode     10
#MailingZipcode_text_maxlength
    #4_1_1_7_text_maxlength    textMailingZipcode     
MailingZipcode_text_maxlength_new
    4_1_1_7_text_maxlength_new    textMailingZipcode     10
MailingZipcode_text_pastable
    4_1_1_9_text_pastable    textMailingZipcode
MailingZipcode_text_spacebefore
    4_1_1_11_text_spacebefore    textMailingZipcode
MailingZipcode_text_spaceafter
    4_1_1_12_text_spaceafter    textMailingZipcode
MailingZipcode_text_default_value
    4_1_1_14_text_field_default_value    textMailingZipcode    ${EMPTY}
MailingZipcode_text_default_value_forlabel
    4_1_1_14_text_field_default_value    textMailingZipcode-label    Zip Code*
MailingZipcode_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    textMailingZipcode
        
#SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save3"]
button_save_rightname_new
    4_1_4_1_button_rightname_new    save3    SAVE
button_save_active
    4_1_4_2_button_active    save3
button_save_attribute_type
    4_1_4_6_button_attribute    save3    type    button
#button_save_attribute_label
    #4_1_4_6_button_attribute    save3    label     SAVE

button_cancel_rightname_new
    4_1_4_1_button_rightname_new    cancel3    CANCEL
button_cancel_active
    4_1_4_2_button_active    cancel3
button_cancel_attribute_type
    4_1_4_6_button_attribute    cancel3    type    button
#button_cancel_attribute_label
    #4_1_4_6_button_attribute    cancel3    label    CANCEL

BillingState_DDL_LB_default
    #4_1_6_1_DDL_LB_Default     //*[@id="selectState"]    //*[@id="menu-selectState"]/div[3]/ul
    4_1_6_1_DDL_LB_Default     //*[@id="selectState"]
BillingState_DDL_LB_value_list
    4_1_6_2_DDL_LB_value_list    //*[@id="selectState"]    //*[@id="menu-selectState"]/div[3]/ul
ClickElement_panel3_to_open_addresses1
    Click Element    xpath=//*[@id="panel3"]
    Click Element    xpath=//*[@id="panel1"]
BillingState_DDL_LB_select_value
    #4_1_6_3_DDL_LB_select_value     //*[@id="selectState"]    //*[@id="menu-selectState"]/div[3]/ul/li[8]
    4_1_6_3_DDL_LB_select_value     selectState
BillingState_DDL_LB_view_size
    4_1_6_7_DDL_LB_view_size    selectState
BillingState_DDL_LB_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    //*[@id="selectState"]    //*[@id="menu-selectState"]/div[3]/ul/li[8]
    4_1_6_9_DDL_no_multi_selection    selectState
BillingState_DDL_LB_field_label
    #4_1_6_11_DDL_LB_field_label    //*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[11]/div[3]/div/label    State*
    4_1_6_11_DDL_LB_field_label    selectState    State*
ClickElement_panel3_to_open_addresses2
    Click Element    xpath=//*[@id="panel1"]
    Click Element    xpath=//*[@id="panel3"]
BillingState_DDL_LB_order_top_default_values
    4_1_6_5_DDL_LB_order_top_default_values    //*[@id="selectState"]    //*[@id="menu-selectState"]/div[3]/ul
    reload page

ClickElement_panel3_to_open_addresses3
    Click Element    xpath=//*[@id="panel1"]
    Click Element    xpath=//*[@id="panel3"]
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save3"]
    
MailingState_DDL_LB_default
    #4_1_6_1_DDL_LB_Default     //*[@id="selectMailingState"]    //*[@id="menu-selectState"]/div[3]/ul
    4_1_6_1_DDL_LB_Default     //*[@id="selectMailingState"]
MailingState_DDL_LB_value_list
    4_1_6_2_DDL_LB_value_list    //*[@id="selectMailingState"]    //*[@id="menu-selectState"]/div[3]/ul
ClickElement_panel3_to_open_addresses4
    Click Element    xpath=//*[@id="panel3"]
    Click Element    xpath=//*[@id="panel1"]
MailingState_DDL_LB_select_value
    #4_1_6_3_DDL_LB_select_value     //*[@id="selectMailingState"]    //*[@id="menu-selectState"]/div[3]/ul/li[8]
    4_1_6_3_DDL_LB_select_value     selectMailingState
MailingState_DDL_LB_view_size
    4_1_6_7_DDL_LB_view_size    selectMailingState
MailingState_DDL_LB_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    //*[@id="selectMailingState"]    //*[@id="menu-selectState"]/div[3]/ul/li[8]
    4_1_6_9_DDL_no_multi_selection    selectMailingState
MailingState_DDL_LB_field_label
    #4_1_6_11_DDL_LB_field_label    //*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[11]/div[3]/div/label    State*
    4_1_6_11_DDL_LB_field_label    selectMailingState    State*
ClickElement_panel3_to_open_addresses5
    Click Element    xpath=//*[@id="panel3"]
    Click Element    xpath=//*[@id="panel1"]
MailingState_DDL_LB_order_top_default_values
    4_1_6_5_DDL_LB_order_top_default_values    //*[@id="selectMailingState"]    //*[@id="menu-selectState"]/div[3]/ul
    reload page
ClickElement_panel3_to_open_addresses6
    Click Element    xpath=//*[@id="panel1"]
    Click Element    xpath=//*[@id="panel3"]
    
Text_on_form_1
    4_1_10_1_text_present    Billing Address
Text_on_form_2
    4_1_10_1_text_present    Mailing Address*
    
Scrolldown_to_see_footer
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@href="${IKABIT_PRIVACY_POLICY_URL}"]
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
