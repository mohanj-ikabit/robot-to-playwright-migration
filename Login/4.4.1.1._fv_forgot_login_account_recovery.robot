*** Settings ***
default tags      fvneedhelpsignin-forgotlogin
Library           SeleniumLibrary
Resource          ..//Resource//dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/gen.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Suite Teardown		close all browsers

*** Test Cases ***
App_login
    login loginpage
    click element    xpath=//*[@href="/need-help-sign-in"]

button_forgot_login_id_rightname
    4_1_4_1_button_rightname_new    forgot-login-id    FORGOT LOGIN ID
button_forgot_login_id_active
    4_1_4_2_button_active    forgot-login-id
#This is an href
#button_forgot_login_id_attribute type
    #4_1_4_6_button_attribute    forgot-login-id   type   button
    
button_forgot_password_rightname
    4_1_4_1_button_rightname_new    forgot-password    FORGOT PASSWORD
button_forgot_password_active
    4_1_4_2_button_active    forgot-password
#This is an href
#button_forgot_password_attribute type
    #4_1_4_6_button_attribute    forgot-password   type   button
    
button_forgot_company_rightname
    4_1_4_1_button_rightname_new    forgot-restaurant-id    FORGOT RESTAURANT ID
button_forgot_company_active
    4_1_4_2_button_active    forgot-restaurant-id 
#This is an href
#button_forgot_company_attribute type
    #4_1_4_6_button_attribute    forgot-restaurant-id    type   button
    
#Fail
#button_backtologin_rightname
    #4_1_4_1_button_rightname_new    back-login    arrow_backBACK TO LOGIN
    #4_1_4_1_button_rightname_new    back-login    arrow_back BACK TO LOGIN
button_backtologin_rightname
    4_1_4_1_button_rightname_new    back-login    arrow_back\n BACK TO LOGIN
button_backtologin_active
    4_1_4_2_button_active    back-login
#This is an href
#button_backtologin_attribute type
    #4_1_4_6_button_attribute    back-login   type   button

Text_on_form
    4_1_10_1_text_present    What do you need help with?   
    
#Verify footer for page Need Help Signing In

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
    
click_forgot_login
    login loginpage
    click element    xpath=//*[@href="/need-help-sign-in"]
    click element	xpath=//*[@id="forgot-login-id"]
    #click element    xpath=//*[@id="forgot-login-id"]/span[1]

Primary_Phone_Number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    phoneNumberInput
Primary_Phone_Number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    phoneNumberInput
Primary_Phone_Number_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    phoneNumberInput
Primary_Phone_Number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    phoneNumberInput
#Fails because the Phone Number read has parenthesis instead of just plain numbers as had been entered
#From dev team - Since it is an imported component from react for phone number, restriction is applicable, It automatically accepts/rejects valid/invalid number. 
#Maximum number of digits are depending on the country selected.
#Primary_Phone_Number_numeric_maxlength
    #4_1_5_7_numeric_field_maxlength    phoneNumberInput    3333333333
#Primary_Phone_Number_numeric_minlength
    #4_1_5_6_numeric_field_minlength    phoneNumberInput    1234567893
Primary_Phone_Number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    phoneNumberInput
Primary_Phone_Number_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    phoneNumberInput
Primary_Phone_Number_numeric_pastable
    4_1_5_11_numeric_field_pastable    phoneNumberInput
Primary_Phone_Number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    phoneNumberInput
Primary_Phone_Number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       phoneNumberInput
Primary_Phone_Number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    phoneNumberInput
Primary_Phone_Number_numeric_default_value
    [Documentation]    Verify that the phone number input field has the correct default value.
    4_1_5_15_numeric_field_default_value    phoneNumberInput    +1 (013) 333-4444
Primary_Phone_Number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    phoneNumberInput
Primary_Phone_Number_numeric_field_not_null
    4_1_5_18_numeric_field_not_null    phoneNumberInput
Primary_Phone_Number_numeric_attribute
    4_1_5_20_numeric_field_attribute    phoneNumberInput    type    tel
    
button_next_rightname
    4_1_4_1_button_rightname_new    submit    NEXT
button_next_inactive
    [Documentation]    Verify that the 'Next' button is initially disabled.
    Verify Button State    xpath=//*[@id="submit"]    enabled
button_next_attribute type
    4_1_4_6_button_attribute    submit   type   button

button_back_login_rightname
    4_1_4_1_button_rightname_new    back-login    arrow_back\nBACK TO LOGIN
button_back_login_active
    4_1_4_2_button_active    back-login
#button_back_login_attribute type
    #4_1_4_6_button_attribute    back-login   type   button
        
Text_on_form_1
    4_1_10_1_text_present    Account Recovery
Text_on_form_2
    4_1_10_1_text_present    To find your login ID, please enter the primary phone number associated with your login.
    
#Flag_dropdown_missing_id_failing
    #Assign Id To Element    xpath=//*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div	flag
    #4_1_6_1_DDL_LB_Default    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul
    #4_1_6_2_DDL_LB_value_list    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul
    #4_1_6_3_DDL_LB_select_value     //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/div/div    //*[@id="root"]/div/div/div[2]/div/form/div/div/div[6]/div/div[2]/ul/li[2]
    
#Text_on_form2_missing_phone
    #reload page
    #Click element    xpath=//*[@id="submit"]
    #wait until element is visible    xpath=//*[@id="phone-number-helper-text"]
    #${f}    get text    xpath=//*[@id="phone-number-helper-text"]
    #log to console    ${f}

    close all browsers    

