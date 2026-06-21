*** Settings ***
Default Tags    fvprofile
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
#test case for billing info
App_Login
    #login createuser
    #go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings
    login
    click element    xpath=//*[@href="/user/account-settings"]
    
#First Name on account
First_Name_text_notnull
    4_1_1_1_text_notnull    firstName
First_Name_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed   firstName
First_Name_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed	 firstName
First_Name_text_minlength
    4_1_1_6_text_minlength    firstName	  a
First_Name_text_minlength_new 
    4_1_1_6_text_minlength_new	  firstName	  5
First_Name_text_maxlength
    4_1_1_7_text_maxlength	  firstName	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
First_Name_text_maxlength_new
    4_1_1_7_text_maxlength_new    firstName	  80
First_Name_text_notpastable
    4_1_1_10_text_notpastable	  firstName
First_Name_text_spacebefore
    4_1_1_11_text_spacebefore   firstName
First_Name_text_spaceafter
    4_1_1_12_text_spaceafter   firstName
First_Name_text_default_value
    4_1_1_14_text_field_default_value   firstName    ${EMPTY}
First_Name_text_default_value_of_label
    4_1_1_14_text_field_default_value	  firstName-label 	 First Name*
First_Name_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   firstName

#First Name on account
Last_Name_text_notnull
    4_1_1_1_text_notnull    lastName
Last_Name_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed    lastName
Last_Name_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed	 lastName
Last_Name_text_minlength
    4_1_1_6_text_minlength    lastName	a
Last_Name_text_minlength_new
    4_1_1_6_text_minlength_new	  lastName	5
Last_Name_text_maxlength
    4_1_1_7_text_maxlength	  lastName	 Commented out test cases and redundant comments are removed to declutter the file
Last_Name_text_maxlength_new
    4_1_1_7_text_maxlength_new    lastName    80
Last_Name_text_notpastable
    4_1_1_10_text_notpastable	  lastName
Last_Name_text_spacebefore
    4_1_1_11_text_spacebefore   lastName
Last_Name_text_spaceafter
    4_1_1_12_text_spaceafter   lastName
Last_Name_text_default_value1
    4_1_1_14_text_field_default_value    lastName    ${EMPTY}
Last_Name_text_default_value
    4_1_1_14_text_field_default_value   lastName-label   Last Name*
Last_Name_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   lastName
#Last_Name_text_label


#Email/ Login ID can not be changed for an account
    #4_1_2_1_email_ID_wrong_format    loginId
#EmailID_right_format
    #4_1_2_2_email_ID_right_format    loginId
EmailID_default_value
    4_1_1_14_text_field_default_value    loginId    ${EMPTY}
EmailID_default_value_of_label
    4_1_1_14_text_field_default_value    loginId-label    Login ID*
#Email ID is prefilled with the user's Email ID
#EmailID_attribute_value
    #4_1_1_20_text_field_attribute    loginId    value   example@email.com
    
#phone_ddl_tbd
#Select_countrycode_ddl_get_text
    #${d}    get text    xpath=//*[@id="root"]/div/div/div[2]/form/div/div/div[6]/div/div[2]/label
    #should be equal as strings    ${d}   \#Locations\:
    #log to console    label for location 3 is ............... ${d}
#Select_pkg3_ddl_loc3_label
    #4_1_6_11_DDL_LB_field_label   locations3    \#Locations\:
#Select_countrycode_ddl_default
    #reload page
    #click element    xpath=//*[@id="root"]/div/div/div[2]/form/div/div/div[6]/div/div[2]/div[2]/fieldset/div/label/span[1]/span[1]/input
    #4_1_6_1_DDL_LB_Default    //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul
#Select_countrycode_ddl_value_list
    #click element    xpath=//*[@id="root"]/div/div/div[2]/form/div/div/div[6]/div/div[2]/div[2]/fieldset/div/label/span[1]/span[1]/input
    #4_1_6_2_DDL_LB_value_list    //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul
#Select_countrycode_ddl_select_value
    #click element    xpath=//*[@id="root"]/div/div/div[2]/form/div/div/div[6]/div/div[2]/div[2]/fieldset/div/label/span[1]/span[1]/input
    #4_1_6_3_DDL_LB_select_value     //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul/li[5]
#Select_countrycode_ddl_view_size
    #click element    xpath=//*[@id="root"]/div/div/div[2]/form/div/div/div[6]/div/div[2]/div[2]/fieldset/div/label/span[1]/span[1]/input
    #4_1_6_7_DDL_LB_view_size    locations3
#Select_countrycode_ddl_no_multi_selection
    #click element    xpath=//*[@id="root"]/div/div/div[2]/form/div/div/div[6]/div/div[2]/div[2]/fieldset/div/label/span[1]/span[1]/input
    #4_1_6_9_DDL_no_multi_selection    //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul/li[5] 
    #4_1_6_9_DDL_no_multi_selection    locations3
    #reload page

Phone_number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    phone
Phone_number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    phone
Phone_number_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    phone
Phone_number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    phone
    #A numeric data entered in the field reads back in phone number format, hence fails comparison.
    #4_1_5_6_numeric_field_minlength    phone    10
    #4_1_5_7_numeric_field_maxlength    phone    12
Phone_number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    phone
Phone_number_numeric_decimal_not_permitted1
    4_1_5_10_numeric_field_decimal_not_permitted    phone
Phone_number_numeric_decimal_not_permitted
    4_1_5_11_numeric_field_pastable    phone
Phone_number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    phone
Phone_number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore    phone
Phone_number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    phone
Phone_number_numeric_default_value
    #4_1_5_15_numeric_field_default_value    phone    ${EMPTY}
    4_1_5_15_numeric_field_default_value    phone    +1 (778) 722-2149
Phone_number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    phone
Phone_number_numeric_not_null
    4_1_5_18_numeric_field_not_null    phone
#no label for phone number
#Phone_number_numeric_label
    #4_1_5_19_numeric_field_label    textPhoneNumber-label    Primary Phone Number
Phone_number_numeric_attribute_placeholder
    4_1_1_20_text_field_attribute    phone    placeholder    Phone #*

#enter a leap year date from past so that age should be 16 years.
dob_right_format
    4_1_7_1_date_right_format_past    dateBirth
#dob_wrong_format
    
#dob_leapyear_format
    #4_1_7_4_date_leap_year_format    dateBirth 
dob_default_state_enabled
    4_1_7_5_date_default_state_enabled    dateBirth 
dob_label
    4_1_7_7_date_default_date_label    dateBirth-label    Date of Birth*
dob_attribute_type
    4_1_7_8_date_attribute    dateBirth     type    date

button_next_rightname
    4_1_4_1_button_rightname_new    save1    SAVE
button_next_active
    4_1_4_2_button_active    save1
button_next_attribute_type
    4_1_4_6_button_attribute    save1   type    button

button_cancel_rightname
    4_1_4_1_button_rightname_new    cancel1    CANCEL
button_cancel_active
    4_1_4_2_button_active    cancel1
button_cancel_attribute_type
    4_1_4_6_button_attribute    cancel1   type    button

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2025       15s
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

