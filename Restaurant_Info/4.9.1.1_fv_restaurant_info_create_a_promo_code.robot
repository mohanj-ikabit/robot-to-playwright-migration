*** Settings ***
Default Tags      fvcreatepromocode
Library           SeleniumLibrary
Library           AutoItLibrary
Library           DateTime
Resource          ../Resource/radio button.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot
Resource          ../Resource/dropdown.robot
Resource          ../Resource/date.robot
Suite Teardown     Close all browsers


*** Test Cases ***
App_login
    Login
    
GoTo_restaurantinfo
    Click Element    xpath=//*[@href="/user/restaurant-info"]
Check_heading
    4_1_3_1_link_rightName     /user/restaurant-info     Restaurant Info
    
GoTo_promocodes
    Click Element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/header/div/div[1]/div/ul/a[4]
check_heading_promocodes
    4_1_3_1_link_rightName     /user/restaurant-info/create-promocodes    Promo Codes
    
promocode_name_text_notnull
    4_1_1_1_text_notnull    promoCodeName
promocode_name_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    promoCodeName
promocode_name_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    promoCodeName
promocode_name_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed   promoCodeName
promocode_name_text_minlength
    4_1_1_6_text_minlength    promoCodeName     z
promocode_name_text_maxlength_new
    4_1_1_7_text_maxlength_new    promoCodeName     100
promocode_name_text_confirm_text
    4_1_1_8_text_confirm_text     promoCodeName  promoCode  true   false  description  pc
promocode_name_text_pastable
    4_1_1_9_text_pastable    promoCodeName
promocode_name_text_notpastable
    4_1_1_10_text_notpastable    promoCodeName
promocode_name_text_spacebefore
    4_1_1_11_text_spacebefore    promoCodeName
promocode_name_text_spaceafter
    4_1_1_12_text_spaceafter    promoCodeName
promocode_name_text_nosuggestions
    4_1_1_13_test_nosuggestions    promoCodeName
promocode_name_text_default_value
    4_1_1_14_text_field_default_value    promoCodeName    ${EMPTY}
promocode_name_text_default_value
    4_1_1_14_text_field_default_value    promoCodeName-label    Ex: Christmas 2020 50% Off
promocode_name_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    promoCodeName
promocode_name_text_label
    4_1_1_17_text_field_label   promoCodeName-label   Ex: Christmas 2020 50% Off
promocode_name_text_space_allowed
    4_1_1_18_text_field_space_allowed    promoCodeName
promocode_name_text_space_not_allowed
    4_1_1_19_text_field_space_not_allowed        promoCodeName
promocode_name_text_attribute
    4_1_1_20_text_field_attribute    promoCodeName    type    text
    
promocode_text_notnull
    4_1_1_1_text_notnull    promoCode
promocode_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    promoCode
promocode_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed	promoCode
promocode_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    promoCode
promocode_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed   promoCode
promocode_text_minlength
    4_1_1_6_text_minlength    promoCode     z
promocode_text_maxlength_new
    4_1_1_7_text_maxlength_new    promoCode     100
# promocode_text_confirm_text
    # 4_1_1_8_text_confirm_text    promoCode  
promocode_text_pastable
    4_1_1_9_text_pastable    promoCode
promocode_text_notpastable
    #4_1_1_10_text_notpastable    promoCode
    sleep   2s
promocode_text_spacebefore
    4_1_1_11_text_spacebefore    promoCode
promocode_text_spaceafter
    4_1_1_12_text_spaceafter    promoCode
promocode_text_nosuggestions
    clear element text    xpath=//*[@id="description"]
    4_1_1_13_test_nosuggestions    promoCode
promocode_text_default_value
     #clear element text    xpath=//*[@id="description"]
    4_1_1_14_text_field_default_value    promoCode    ${EMPTY}
promocode_text_default_value
    4_1_1_14_text_field_default_value    promoCode-label    Ex: HOL202050OFF
promocode_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    promoCode
#promocode_text_default_state_disabled
    #4_1_1_16_text_field_default_state_disabled   promoCode
promocode_text_label
    4_1_1_17_text_field_label    promoCode-label    Ex: HOL202050OFF
promocode_text_space_allowed
    4_1_1_18_text_field_space_allowed    promoCode
promocode_text_space_not_allowed
    4_1_1_19_text_field_space_not_allowed        promoCode
promocode_text_attribute
    4_1_1_20_text_field_attribute    promoCode    type    text

promocode_desc_text_notnull
    4_1_1_1_text_notnull    description
promocode_desc_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    description
promocode_desc_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed	description
promocode_desc_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    description
promocode_desc_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed   description
promocode_desc_text_minlength
    4_1_1_6_text_minlength    description     z
promocode_desc_text_maxlength_new
    4_1_1_7_text_maxlength_new    description     100
promocode_desc_text_confirm_text
    4_1_1_8_text_confirm_text    description  promoCode    true   false  promoCodeName  pc
promocode_desc_text_pastable
    4_1_1_9_text_pastable    description
promocode_desc_text_spacebefore
   4_1_1_11_text_spacebefore    description
promocode_desc_text_spaceafter
   4_1_1_12_text_spaceafter     description
#promocode_desc_text_nosuggestions
     #wait until element is visible       xpath=//*[@id="description"]
    #4_1_1_13_test_nosuggestions    description 
promocode_desc_text_default_value
    4_1_1_14_text_field_default_value    description    ${empty}
promocode_desc_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    description
#promocode_desc_text_default_state_disabled
    #4_1_1_16_text_field_default_state_disabled   description
#promocode_desc_text_label
    #4_1_1_17_text_field_label    description    Ex: Christmas 2020 50% Off
promocode_desc_text_space_allowed
    4_1_1_18_text_field_space_allowed    description
#promocode_desc_text_space_not_allowed
    #4_1_1_19_text_field_space_not_allowed        description
promocode_desc_text_attribute
    4_1_1_20_text_field_attribute    description    type    textarea

#Percentage_Based_radio_

Percentage_Based_Take_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    pc
Percentage_Based_Take_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    pc
Percentage_Based_Take_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    pc
Percentage_Based_Take_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    pc
Percentage_Based_Take_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    pc    3333333333
Percentage_Based_Take_numeric_minlength
    4_1_5_6_numeric_field_minlength    pc    1234567893
Percentage_Based_Take_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    pc
Percentage_Based_Take_numeric_pastable
    4_1_5_11_numeric_field_pastable    pc
Percentage_Based_Take_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    pc
Percentage_Based_Take_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       pc
Percentage_Based_Take_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    pc
Percentage_Based_Take_numeric_default_value
    4_1_5_15_numeric_field_default_value    pc    333333333312345678933333444460000012345
Percentage_Based_Take_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    pc
Percentage_Based_Take_numeric_not_null
    4_1_5_18_numeric_field_not_null    pc
    
Percentage_Based_Off_Entire_Bill_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    pcBill
Percentage_Based_Off_Entire_Bill_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    pcBill
Percentage_Based_Off_Entire_Bill_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    pcBill
Percentage_Based_Off_Entire_Bill_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    pcBill
Percentage_Based_Off_Entire_Bill_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    pcBill    3333333333
Percentage_Based_Off_Entire_Bill_numeric_minlength
    4_1_5_6_numeric_field_minlength    pcBill    1234567893
Percentage_Based_Off_Entire_Bill_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    pcBill
Percentage_Based_Off_Entire_Bill_numeric_pastable
    4_1_5_11_numeric_field_pastable    pcBill
Percentage_Based_Off_Entire_Bill_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    pcBill
Percentage_Based_Off_Entire_Bill_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       pcBill
Percentage_Based_Off_Entire_Bill_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    pcBill
Percentage_Based_Off_Entire_Bill_numeric_default_value
    4_1_5_15_numeric_field_default_value    pcBill    ${EMPTY}
Percentage_Based_Off_Entire_Bill_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    pcBill
Percentage_Based_Off_Entire_Bill_numeric_field_not_null
    4_1_5_18_numeric_field_not_null    pcBill
    sleep  2s
    #scroll element into view      xpath=//*[@id="takeOut"]
    #wait until element is visible       xpath=//*[@id="takeOut"]
Value_Based_Take_numeric_zero_not_allowed
    click element    xpath=//*[@id="valueBased"]
#/label/span[1]/span[1]/input
    4_1_5_1_numeric_zero_not_allowed    val
Value_Based_Take_numeric_not_lt_zero
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    4_1_5_3_numeric_field_not_lt_zero    val
Value_Based_Take_numeric_no_alphabets
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    4_1_5_4_numeric_field_no_alphabets    val
Value_Based_Take_numeric_no_spl_chars
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    4_1_5_5_numeric_field_no_splchars    val
#Value_Based_Take_numeric_reloadpage
    #click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    #reload page
    #Wait Until Element Is Visible     xpath=//*[@id="createPromoCode"]    5
    
ScrollElementIntoView_createPromoCodebutton    
    Scroll Element Into View    xpath=//*[@id="createPromoCode"]
Value_Based_Take_numeric_minlength
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    clear element text     xpath=//*[@id="val"]
    Input text    xpath=//*[@id="val"]    1234
    log to console    val accepts min length....1234
Value_Based_Take_numeric_maxlength
    clear element text     xpath=//*[@id="val"]
    Input text    xpath=//*[@id="val"]    1234
    log to console    val accepts max length....1234
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_field_pastable
    4_1_5_11_numeric_field_pastable    val
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    val
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       val
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    val
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_default_value
    4_1_5_15_numeric_field_default_value    val    0000012345
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    val
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
Value_Based_Take_numeric_not_null	
    4_1_5_18_numeric_field_not_null    val
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    
Value_Based_Off_the_entire_Bill_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    valBill
Value_Based_Off_the_entire_Bill_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    valBill
Value_Based_Off_the_entire_Bill_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    valBill
Value_Based_Off_the_entire_Bill_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    valBill
    #reload page
    sleep  2s
Value_Based_Off_the_entire_Bill_numeric_minlength
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    clear element text     xpath=//*[@id="valBill"]
    Input text    xpath=//*[@id="valBill"]    1234
    log to console    val accepts min length....1234
Value_Based_Off_the_entire_Bill_numeric_maxlength
    clear element text     xpath=//*[@id="valBill"]
    Input text    xpath=//*[@id="valBill"]    1234
    log to console    val accepts max length....1234
Value_Based_Off_the_entire_Bill_numeric_pastable
    4_1_5_11_numeric_field_pastable    valBill
Value_Based_Off_the_entire_Bill_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    valBill
Value_Based_Off_the_entire_Bill_numeric_spacebefore
    4_1_5_13_numeric_spacebefore      valBill
Value_Based_Off_the_entire_Bill_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    valBill
#Value_Based_Off_the_entire_Bill_numeric_default_value
    #4_1_5_15_numeric_field_default_value    valBill    ${EMPTY}
Value_Based_Off_the_entire_Bill_numeric_default_state_enabled
    click element    xpath=//*[@id="valueBased"]/label/span[1]/span[1]/input
    4_1_5_16_numeric_field_default_state_enabled    valBill
Value_Based_Off_the_entire_Bill_numeric_not_null
    4_1_5_18_numeric_field_not_null    valBill
   
4_1_7_1_date_default
    Page Should Contain Element   xpath=//*[@id="expiryDate"]    
    
#Promo_Code_Expiry_right_format
   # 4_1_7_2_date_right_format    expiryDate
   # clear element text    xpath=//*[@id="expiryDate"]
#Promo_Code_Expiry_leap_year_format
    #4_1_7_4_date_leap_year_format    expiryDate
#Promo_Code_Expiry_default_state_enabled
    #4_1_7_5_date_default_state_enabled    expiryDate
    sleep  2s
Usability_numeric_zero_not_allowed
    scroll element into view    xpath=//*[@id="dineIn"]
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_1_numeric_zero_not_allowed    uses
Usability_numeric_not_lt_zero
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_3_numeric_field_not_lt_zero    uses
Usability_numeric_no_alphabets
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_4_numeric_field_no_alphabets    uses
Usability_numeric_no_splchars
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_5_numeric_field_no_splchars    uses
Usability_numeric_pastable
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_11_numeric_field_pastable    uses
Usability_numeric_leading_zeroes_stripped
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_12_numeric_leading_zeroes_stripped    uses
Usability_numeric_spacebefore
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_13_numeric_spacebefore       uses
Usability_numeric_spaceafter
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_14_numeric_spaceafter    uses
#Usability_numeric_default_value
    ##click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_15_numeric_field_default_value    uses    ${EMPTY}
Usability_numeric_default_state_enabled
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_16_numeric_field_default_state_enabled    uses
Usability_numeric_not_null
    click element    xpath=//*[@id="multiuse"]/label/span[1]/span[1]/input
    4_1_5_18_numeric_field_not_null    uses
    sleep  2s
   
For_Menu_ddl_default
    4_1_6_1_DL_LB_Default        select-multiple-native
For_Menu_ddl_value_list
    4_1_6_2_DL_LB_value_list     select-multiple-native 
For_Menu_ddl_select_value
    4_1_6_3_DL_LB_select_value      select-multiple-native
#For_Menu_ddl_order
   #4_1_6_5_DL_LB_order      select-multiple-native
For_Menu_ddl_view_size
    4_1_6_7_DDL_LB_view_size     select-multiple-native
For_Menu_ddl_content_wider_than_list_size
    4_1_6_8_DDL_LB_content_wider_than_list_size     select-multiple-native
For_Menu_ddl_allow_multiple_selection
    4_1_6_10_DDL_LB_allow_multiple_selection     select-multiple-native
    
#Create_This_Promo_Code_For_ddl_default
   #4_1_6_1_DL_LB_Default    restaurantNames  
Create_This_Promo_Code_For_ddl_value_list
    4_1_6_2_DL_LB_value_list    restaurantNames
Create_This_Promo_Code_For_ddl_select_value
    4_1_6_3_DL_LB_select_value     restaurantNames
Create_This_Promo_Code_For_ddl_order
    4_1_6_5_DL_LB_order     restaurantNames
Create_This_Promo_Code_For_ddl_view_size
    4_1_6_7_DL_LB_view_size    restaurantNames
Create_This_Promo_Code_For_ddl_wider_than_list_size
    4_1_6_8_DL_LB_content_wider_than_list_size    restaurantNames
#Create_This_Promo_Code_For_ddl_allow_multiple_selection
#    4_1_6_10_DL_LB_allow_multiple_selection    restaurantNames
    
Can_Be_Used_For_checkbox_default_selected
    4_1_8_2_checkbox_default_is_selected    takeOut
    click element    xpath=//*[@id="takeOut"]
Can_Be_Used_For_checkbox_multiple_Selection_allowed
    4_1_8_3_checkbox_multiple_selection_allowed    takeOut    dineIn
Can_Be_Used_For_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    takeOut
    
Cannot_Be_Combined_With_Other_Offers_checkbox_default_not_selected
    4_1_8_1_checkbox_default_not_selected    conditions1
Cannot_Be_Combined_With_Other_Offers_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    conditions1
    
How_Do_You_Want_To_Inform_Your_Customers_About_The_Offer_checkbox_default_not_selected
    4_1_8_1_checkbox_default_not_selected    appNotification
How_Do_You_Want_To_Inform_Your_Customers_About_The_Offer_checkbox_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    appNotification
      
Percentage_Based_Value_Based_radio_button_default_selected
    sleep   2s
    Radio Button Should Be set to    promotionDetails    valueBased
Percentage_Based_Value_Based_radio_button_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    promotionDetails     pcBased    valueBased
Percentage_Based_Value_Based_radio_button_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    pcBased
Percentage_Based_Value_Based_radio_button_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    valueBased
    sleep  2s
	
Usability_radio
    4_1_9_4_radio_button_multiple_selection_not_allowed    usability     singleUse    multiUse

button_create_promocode_rightname
    4_1_4_1_button_rightname_new    createPromoCode    CREATE PROMO CODE
button_create_promocode_active
    4_1_4_2_button_active    createPromoCode
button_create_promocode_attribute_type
    4_1_4_6_button_attribute    createPromoCode   type    button

Text_on_form_1
    4_1_10_1_text_present    Restaurant Info - Promo Code Management
Text_on_form_2
    4_1_10_1_text_present    Manage Your Promo Codes Here
Text_on_form_3
    4_1_10_1_text_present    Create New Promo Code
Text_on_form_4
    4_1_10_1_text_present    Promo Code Name*
Text_on_form_5
    4_1_10_1_text_present    Promo Code*
Text_on_form_6
    4_1_10_1_text_present    Promo Code Description
Text_on_form_7
    4_1_10_1_text_present    Promotion Details*
Text_on_form_8
    4_1_10_1_text_present    Take
Text_on_form_9
    4_1_10_1_text_present    Off The Entire Bill. When Bill >
Text_on_form_10
    4_1_10_1_text_present    Promo Code Expiry*
Text_on_form_11
    4_1_10_1_text_present    Usability*
Text_on_form_12
    4_1_10_1_text_present    Can be Used For*
Text_on_form_13
    4_1_10_1_text_present    For Menus
Text_on_form_14
    4_1_10_1_text_present    Conditions
Text_on_form_15
    4_1_10_1_text_present    Max Usage Allowed* (Number of Customers Who Can Use The Promo Code Before It's Auto-Disabled)
Text_on_form_16
    4_1_10_1_text_present    Notification - How Do You Want To Inform Your Customers About The Offer?
Text_on_form_17
    4_1_10_1_text_present    Create This Promo Code For -

#verify_footer_text
 #verify_footer_text
#verify_footer_privacy_policy_url
#    verify_footer_privacy_policy_url
#verify_footer_terms_conditions_url
#    verify_footer_terms_conditions_url
#verify_footer_ikabit_url
#    verify_footer_ikabit_url

    close all browsers
	
