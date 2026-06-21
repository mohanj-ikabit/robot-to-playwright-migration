*** Settings ***
Default tags      fvmenuhelp
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Text on form.robot 
Resource          ../Resource/radio button.robot
Suite Teardown		close all browsers

*** Test Cases ***
App_login
    Login
    Click element    xpath=//*[@href="/user/menu-help"]

#BUTTON
button_clicktocontinue_rightname
    4_1_4_1_button_rightname_new     clickToContinue    CLICK TO CONTINUE
button_clicktocontinue_active
    4_1_4_2_button_active    clickToContinue
button_clicktocontinue_attribute_type
    4_1_4_6_button_attribute    clickToContinue   type    button
#button_clicktocontinue_attribute_label
    #4_1_4_6_button_attribute    clickToContinue    label    ADD MORE

#TEXT
PickMainIngredients_text_notnull
    4_1_1_1_text_notnull    ingredFive
PickMainIngredients_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    ingredFive
PickMainIngredients_text_splchar_not_allowed
    4_1_1_3_text_splchar_not_allowed	ingredFive
PickMainIngredients_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    ingredFive
PickMainIngredients_text_numbers_not_allowed
    4_1_1_5_text_numbers_not_allowed   ingredFive
PickMainIngredients_text_minlength
    4_1_1_6_text_minlength    ingredFive     z
PickMainIngredients_text_maxlength_new
    4_1_1_7_text_maxlength_new    ingredFive     30
PickMainIngredients_text_confirm_text
    4_1_1_8_text_confirm_text    ingredFive
PickMainIngredients_text_pastable
    4_1_1_9_text_pastable    ingredFive
PickMainIngredients_text_notpastable
    4_1_1_10_text_notpastable    ingredFive
PickMainIngredients_text_spacebefore
    4_1_1_11_text_spacebefore    ingredFive
PickMainIngredients_text_spaceafter
    4_1_1_12_text_spaceafter    ingredFive
PickMainIngredients_text_nosuggestions
    4_1_1_13_test_nosuggestions    ingredFive
PickMainIngredients_text_default_value
    4_1_1_14_text_field_default_value    ingredFive    ${EMPTY}
PickMainIngredients_name_text_default_value
    4_1_1_14_text_field_default_value    promoCodeName-label    Ex: Christmas 2020 50% Off
PickMainIngredients_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    ingredFive
PickMainIngredients_text_default_state_disabled
    4_1_1_16_text_field_default_state_disabled   ingredFive
#PickMainIngredients_text_label
    #4_1_1_17_text_field_label    ingredFive    Ex: Candied Walnuts
PickMainIngredients_5_text_space_allowed
    4_1_1_18_text_field_space_allowed    ingredFive
PickMainIngredients_5_text_space_not_allowed
    4_1_1_19_text_field_space_not_allowed        ingredFive
PickMainIngredients_5_text_attribute
    4_1_1_20_text_field_attribute    ingredFive    type    text
    4_1_1_20_text_field_attribute    ingredFive    label    xyz
    
#NUMERIC
CostByPortionSize_dollars0_numeric_zero_allowed
    4_1_5_2_numeric_field_zero    costPortionDollars0
CostByPortionSize_dollars0_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    costPortionDollars0
CostByPortionSize_dollars0_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    costPortionDollars0
CostByPortionSize_dollars0_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    costPortionDollars0
CostByPortionSize_dollars0_numeric_minlength
    4_1_5_6_numeric_field_minlength    costPortionDollars0    1
CostByPortionSize_dollars0_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    costPortionDollars0    123
CostByPortionSize_dollars0_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    costPortionDollars0
CostByPortionSize_dollars0_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    costPortionDollars0
CostByPortionSize_dollars0_numeric_pastable
    4_1_5_11_numeric_field_pastable    costPortionDollars0
CostByPortionSize_dollars0_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    costPortionDollars0
CostByPortionSize_dollars0_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       costPortionDollars0
CostByPortionSize_dollars0_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    costPortionDollars0
CostByPortionSize_dollars0_numeric_default_value
    4_1_5_15_numeric_field_default_value    costPortionDollars0    ${EMPTY}
CostByPortionSize_dollars0_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    costPortionDollars0
    #4_1_5_17_numeric_field_default_state_disabled    costPortionDollars0
CostByPortionSize_dollars0_numeric_label
    #4_1_5_18_numeric_field_not_null    costPortionDollars0
    4_1_5_19_numeric_field_label    costPortionDollars0-label    $
    #4_1_1_20_text_field_attribute    costPortionDollars0    placeholder    $

#RADIO BUTTON
CanThisBeMadeOptional_radio2_default_selected
    4_1_9_2_radio_button_default_selected    ingredTwoOptional    No
CanThisBeMadeOptional_radio2_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    ingredTwoOptional    Yes    No
CanThisBeMadeOptional_radio2_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredTwoOptional
CanThisBeMadeOptional_radio2_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredTwoOptionalYes
CanThisBeMadeOptional_radio2_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredTwoOptionalNo


#WEBSITE URL Validation
website_weburl_rightname
    4_1_3_1_link_rightName    webUrl
website_weburl_clickactive
    4_1_3_4_link_clickActive    webUrl
#WEBSITE Text Validation
website_weburl_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    webUrl
website_weburl_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    webUrl
website_weburl_text_maxlength
    #4_1_1_6_text_minlength    webUrl     z
    4_1_1_7_text_maxlength_new    webUrl     260
website_weburl_text_pastable
    4_1_1_9_text_pastable     webUrl
website_weburl_text_spacebefore
    4_1_1_11_text_spacebefore    webUrl
website_weburl_text_spaceafter
    4_1_1_12_text_spaceafter    webUrl
website_weburl_text_nosuggestions
    4_1_1_13_test nosuggestions
website_weburl_text_default_value
    4_1_1_14_text_field_default_value    webUrl-label    Enter website URL here
website_weburl_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    webUrl
website_weburl_text_label
    4_1_1_17_text_field_label     webUrl
website_weburl_text_space_not_allowed
    #4_1_1_18_text_field_space_allowed    webUrl
    4_1_1_19_text_field_space_not_allowed     webUrl
website_weburl_text_attribute
    4_1_1_20_text_field_attribute     webUrl     type    url
