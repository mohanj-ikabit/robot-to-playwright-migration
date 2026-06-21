*** Settings ***
Default Tags	  fvsubscription
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
    Page Should Contain       Permissions & Approvals
    
goto_Subscription_Billing
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    
pricingPlan_visible
    Element Should Be Visible       xpath=//*[@id="pricingPlan"]
pricingPlan_should_be_enabled
    Element Should Be Enabled      xpath=//*[@id="pricingPlan"]
    
pricing_visble
    Element Should Be Visible       xpath=//*[@id="pricing"]
pricing_should_be_enabled
    Element Should Be Enabled      xpath=//*[@id="pricing"]
    
subscriptionStartDate_visible
    Element Should Be Visible       xpath=//*[@id="subscriptionStartDate"]
subscriptionStartDate_should_be_disabled
    Element Should Be Disabled      xpath=//*[@id="subscriptionStartDate"]
subscriptionStartDate_attribute_type
    4_1_7_8_date_attribute    subscriptionStartDate   type   date
#pricingPlan_attribute_placeholder
    #4_1_7_8_date_attribute    subscriptionStartDate   placeholder   mm/dd/yyyy
#pricingPlan_attribute_label
    #4_1_7_7_date_default_date_label    subscriptionStartDate  label   mm/dd/yyyy
    
subscriptionExpiryDate_visible
    Element Should Be Visible       xpath=//*[@id="subscriptionExpiryDate"]
subscriptionExpiryDate_should_be_disabled
    Element Should Be Disabled      xpath=//*[@id="subscriptionExpiryDate"]
subscriptionExpiryDate_attribute_type
    4_1_7_8_date_attribute    subscriptionExpiryDate   type   date
#subscriptionExpiryDate_attribute_placeholder   
    #4_1_7_8_date_attribute    subscriptionExpiryDate   placeholder    mm/dd/yyyy
    #4_1_7_7_date_default_date_label    subscriptionExpiryDate  label    mm/dd/yyyy
    
logins_visible
    Element Should Be Visible       xpath=//*[@id="logins"]
logins_should_be_enabled
    Element Should Be Enabled       xpath=//*[@id="logins"]     #listbox
    
loginCount_visible
    Element Should Be Visible       xpath=//*[@id="loginCount"]
loginCount_should_be_enabled
    Element Should Be Enabled       xpath=//*[@id="loginCount"]

billingAccount_visible
    Element Should Be Visible       xpath=//*[@id="billingAccount"]
billingAccount_should_be_disabled
    Element Should Be Disabled      xpath=//*[@id="billingAccount"]
    
Scroll_element_into_view_saveChanges1
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="saveChanges1"]
    
button_saveChanges_rightname_new
    4_1_4_1_button_rightname_new    saveChanges1     SAVE CHANGES
button_saveChanges_active
    4_1_4_2_button_active    saveChanges1
button_saveChanges_attribute_type
    4_1_4_6_button_attribute    saveChanges1    type    button
    
button_cancel_rightname_new
    4_1_4_1_button_rightname_new    cancel1    CANCEL
button_cancel_active
    4_1_4_2_button_active    cancel1
button_cancel_attribute_type
    4_1_4_6_button_attribute     cancel1    type    button
    
Scroll_element_into_view_logins
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="logins"]
    #Click Element    xpath=//*[@id="logins"]
noOfUserLogins_ddl_view_size
    4_1_6_7_DDL_LB_view_size    logins
#noOfUserLogins_ddl_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    logins
    
Scroll_element_into_view_saveChanges.1
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="saveChanges1"]
#No_of_locations2_ddl_click_element
    #Click Element    xpath=//*[@id="package2"]
No_of_locations2_ddl_view_size
    4_1_6_7_DDL_LB_view_size    locations2
#No_of_locations2_ddl_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    locations2
No_of_locations2_ddl_visible
    Element Should Be Visible       xpath=//*[@id="locations2"]
No_of_locations2_ddl_enabled
    Element Should Be Enabled       xpath=//*[@id="locations2"]     #listbox
    
No_of_locations3_ddl_click_element
    Click Element    xpath=//*[@id="package3"]
No_of_locations3_ddl_view_size
    4_1_6_7_DDL_LB_view_size    locations3
#No_of_locations3_ddl_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    locations3
No_of_locations3_ddl_visible
    Element Should Be Visible       xpath=//*[@id="locations3"]
No_of_locations3_ddl_enabled
    Element Should Be Enabled       xpath=//*[@id="locations3"]     #listbox

#Select_Package_radio_button_default_selected
    #4_1_9_2_radio_button_default_selected    <can be anything depending on restaurant's choice. Will be tested un FT
Select_Package_radio_button_pkg1_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    package1
Select_Package_radio_button_pkg2_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    package2
Select_Package_radio_button_pkg3_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    package3
Select_Package_radio_button_attribute_pkg1_label
    4_1_9_7_radio_label    package1    Select Package 1
    #attribute label doesn't fetch the text associated with the radio button
    ##4_1_9_8_radio_button_attribute    package1    label   Select Package 1
Select_Package_radio_button_attribute_pkg2_label
    4_1_9_7_radio_label    package2    Select Package 2
    #attribute label doesn't fetch the text associated with the radio button
    ##4_1_9_8_radio_button_attribute    package2    label   Select Package 2    
Select_Package_radio_button_attribute_pkg3_label
    4_1_9_7_radio_label    package3    Select Package 3
    #attribute label doesn't fetch the text associated with the radio button
    ##4_1_9_8_radio_button_attribute    package3    label   Select Package 3

Text_on_form_1
    4_1_10_1_text_present    Your Best8Eats Admin Settings
Text_on_form_2
    4_1_10_1_text_present    Subscription & Billing
#Not reading the heading h6
#Text_on_form_3
    #4_1_10_1_text_present    SUBSCRIPTION
Text_on_form_3
    4_1_10_1_text_present    Pricing Plan
Text_on_form_4
    4_1_10_1_text_present    Pricing
Text_on_form_5
    4_1_10_1_text_present    Subscription Start Date
Text_on_form_6
    4_1_10_1_text_present    Subscription Expiry
Text_on_form_7
    4_1_10_1_text_present    \# of users logins
Text_on_form_8
    4_1_10_1_text_present    Being Used
Text_on_form_9
    4_1_10_1_text_present    Billing Account
Text_on_form_10
    4_1_10_1_text_present    Current Subscription
Text_on_form_11
    4_1_10_1_text_present    PACKAGE 1
Text_on_form_12
    4_1_10_1_text_present    Best suited for restaurant with a single location
Text_on_form_13
    4_1_10_1_text_present    *Upto 4 phone app logins free
Text_on_form_14
    4_1_10_1_text_present    PACKAGE 2
Text_on_form_15
    4_1_10_1_text_present    Restaurant With Multiple Locations (Same Menus, Different Locations)
Text_on_form_16
    4_1_10_1_text_present    Pick The Number Of Locations Below To See Pricing
Text_on_form_17
    4_1_10_1_text_present    Upto 4 phone app logins free per location*
Text_on_form_18
    4_1_10_1_text_present    PACKAGE 3
Text_on_form_19
    4_1_10_1_text_present    Group Of Restaurants - Multiple Restaurants Under One Ownership (Different Locations, Different Menus)
Text_on_form_20
    4_1_10_1_text_present    Pick The Number Of Locations Below To See Pricing
Text_on_form_21
    4_1_10_1_text_present    Upto 4 phone app logins free per location*

#cover footer under FV for Billing section on the same form

    close all browsers
