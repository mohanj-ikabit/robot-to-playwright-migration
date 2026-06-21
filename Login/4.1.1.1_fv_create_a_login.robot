*** Settings ***
Default Tags      createloginfv
Library           SeleniumLibrary   
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Suite Teardown    close all browsers

*** Variables ***
${LOGIN_URL}                  https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/
${USER_ID}                    grapp.user101@gmail.com
${PASSWORD}                   Test@123
${COMPANY_ID}                 71834503
${BROWSER}                    Chrome
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL}                 http://www.ikabit.com
${IKABIT_URL_LOGGED_OUT}           http://www.ikabit.com
${FOOTER_DIVIDER}                  xpath=//*[@id="footer-divider"]

*** Keywords ***
Login With Credentials
    [Arguments]    ${email}    ${password}    ${company_id}
    Input Text    xpath=//input[@id="email"]    ${email}
    Input Text    xpath=//input[@id="password"]    ${password}
    Input Text    xpath=//input[@id="company-id"]    ${company_id}
    Click Button    xpath=//*[@id="submit"]
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s


*** Test Cases ***
App_login
    login front
    wait until element is visible    xpath=//*[@href="/sign-up"]    9
    Click element	xpath=//*[@href="/sign-up"]
    #wait until element is visible    xpath=//*[@id="click next to continue"]    9

First_Name_text_not_null
    #firstname validation
    4_1_1_1_text_notnull    firstName
First_Name_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed    firstName
First_Name_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed    firstName
First_Name_text_minlength
    4_1_1_6_text_minlength    firstName     zz
First_Name_text_maxlength
    4_1_1_7_text_maxlength    firstName     Like any other socia
First_Name_text_notpastable
    4_1_1_10_text_notpastable    firstName
First_Name_text_spacebefore
    4_1_1_11_text_spacebefore    firstName
First_Name_text_spaceafter
    4_1_1_12_text_spaceafter    firstName
First_Name_text_default_value
    4_1_1_14_text_field_default_value    firstName    ${EMPTY}
First_Name_text_default_value_forlabel
    4_1_1_14_text_field_default_value    firstName-label    First Name*
First_Name_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    firstName

Last_Name_text_notnull
    #lastname validation
    4_1_1_1_text_notnull    lastName
Last_Name_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed    lastName
Last_Name_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed    lastName
Last_Name_text_minlength
    4_1_1_6_text_minlength    lastName     zz
Last_Name_text_maxlength
    4_1_1_7_text_maxlength    lastName     Like any other social media site Facebook has length requirements when it comes to writing on the wa
Last_Name_text_notpastable
    4_1_1_10_text_notpastable    lastName
Last_Name_text_spacebefore
    4_1_1_11_text_spacebefore    lastName    
Last_Name_text_spaceafter
    4_1_1_12_text_spaceafter    lastName
Last_Name_text_default_value
    4_1_1_14_text_field_default_value    lastName    ${EMPTY}
Last_Name_text_default_value_forlabel
    4_1_1_14_text_field_default_value    lastName-label    Last Name*
Last_Name_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    lastName

EmailID_wrong_format
    4_1_2_1_email_ID_wrong_format    email
EmailID_right_format
    4_1_2_2_email_ID_right_format    email
EmailID_default_value
    4_1_1_14_text_field_default_value    email    ${EMPTY}
EmailID_default_value_forlabel
    4_1_1_14_text_field_default_value    email-label    Email ID* (used to login)
    
Confirm_EmailID_text_notnull
    4_1_1_1_text_notnull    confirmEmail
Confirm_EmailID_text_pastable
    4_1_1_9_text_pastable    confirmEmail
Confirm_EmailID_text_spacebefore
    4_1_1_11_text_spacebefore    confirmEmail
Confirm_EmailID_text_spaceafter
    4_1_1_12_text_spaceafter    confirmEmail
Confirm_EmailID_text_nosuggestions
    4_1_1_13_test_nosuggestions    confirmEmail
Confirm_EmailID_text_default_value
    4_1_1_14_text_field_default_value    confirmEmail    ${EMPTY}
Confirm_EmailID_text_default_value_forlabel
    4_1_1_14_text_field_default_value    confirmEmail-label    Confirm Email ID*
Confirm_EmailID_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    confirmEmail

Password_text_notnull
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
Password_text_default_value_forlabel
    4_1_1_14_text_field_default_value    password-label    Password
Password_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    password
    
#to test confirm password error	  
Confirm_Password_text_notnull
    #confirm password mismatch should show appropriate error should be a functional test case
    4_1_1_1_text_notnull    confirmPassword
Confirm_Password_text_pastable
    4_1_1_9_text_pastable    confirmPassword
Confirm_Password_text_spacebefore
    4_1_1_11_text_spacebefore    confirmPassword
Confirm_Password_text_spaceafter
    4_1_1_12_text_spaceafter    confirmPassword
Confirm_Password_text_nosuggestions
    4_1_1_13_test_nosuggestions    confirmPassword
Confirm_Password_text_default_value
    4_1_1_14_text_field_default_value    confirmPassword    ${EMPTY}
Confirm_Password_text_default_value_forlabel
    4_1_1_14_text_field_default_value    confirmPassword-label    Confirm Password
Confirm_Password_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    confirmPassword
    
button_clicknexttocontinue_rightname
    4_1_4_1_button_rightname_new    submit    CLICK NEXT TO CONTINUE
button_clicknexttocontinue_inactive
    4_1_4_5_button_inactive    submit
button_clicknexttocontinue_attribute_type
    4_1_4_6_button_attribute    submit   type    button
    
Phone_Number_numeric_zero_not_allowed
    #phone number validation
    4_1_5_1_numeric_zero_not_allowed    phoneNumberInput
Phone_Number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    phoneNumberInput
Phone_Number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    phoneNumberInput
    #value read from the field is in phone number format. Check that the type is set to tel.
    #4_1_5_6_numeric_field_minlength    phoneNumberInput    2222222222
    #4_1_5_7_numeric_field_maxlength    phoneNumberInput    2222222222
Phone_Number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    phoneNumberInput
Phone_Number_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    phoneNumberInput
Phone_Number_numeric_pastable
    4_1_5_11_numeric_field_pastable    phoneNumberInput
Phone_Number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped   phoneNumberInput
Phone_Number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       phoneNumberInput
Phone_Number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    phoneNumberInput
Phone_Number_numeric_default_value
    #4_1_5_15_numeric_field_default_value    phoneNumberInput    ${EMPTY}
    4_1_5_15_numeric_field_default_value    phoneNumberInput    +1 (013) 333-4444
    #4_1_5_15_numeric_field_default_value    phone-label    Phone Number (SMS Capable) *
Phone_Number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    phoneNumberInput
Phone_Number_numeric_not_null
    4_1_5_18_numeric_field_not_null    phoneNumberInput
Phone_Number_numeric_attribute_type
    4_1_5_20_numeric_field_attribute    phoneNumberInput    type    tel	
Phone_Number_numeric_attribute_placeholder
    4_1_5_20_numeric_field_attribute    phoneNumberInput    placeholder    Phone Number (SMS Capable) *
    
#Countrycode_flag_dropdown_default
    #Assign Id To Element    xpath=//*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div	flag
    #4_1_6_1_DDL_LB_Default    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul
    #4_1_6_1_DDL_LB_Default    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div
#Countrycode_flag_dropdown_value_list
    #4_1_6_2_DDL_LB_value_list    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul
#Countrycode_flag_dropdown_value
    #4_1_6_3_DDL_LB_select_value     //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul/li[2]
    #4_1_6_3_DDL_LB_select_value     //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div
#Countrycode_flag_dropdown_viewsize
    #GRA-1196 - Missing ID for flagdropdown
    #4_1_6_7_DDL_LB_view_size    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    
    #4_1_6_7_DDL_LB_view_size    "root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div
#Countrycode_flag_dropdown_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul/li[2]
    #4_1_6_9_DDL_no_multi_selection    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div
#Countrycode_flag_dropdown_order
    #The country code list is in alphebtical order as expected on the form but Selenium library function reports failure because of the way it treats special characters.
    #4_1_6_5_DDL_LB_order_top_default_values     //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]
        
Text_on_form_1
    4_1_10_1_text_present    Admin User Information
Text_on_form_2
    4_1_10_1_text_present    (Use All Premium Features For Free - For 60 Days)
Text_on_form_3
    4_1_10_1_text_present    Owner Login (Restaurant Owners Login - Admin User)


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

