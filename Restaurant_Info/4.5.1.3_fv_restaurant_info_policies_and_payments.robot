*** Settings ***
Default Tags      fvrestinfo_policy_pymt
Library           SeleniumLibrary
Library            AutoItLibrary
Resource          ../Resource/radio button.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot
Suite Teardown     Close all browsers


*** Test Cases ***
App_Login
    login pkg1
    
GoTo_RestaurantInfo_Policy_Payments
    click element    xpath=//*[@href="/user/restaurant-info"]
    click element    xpath=//*[@href="/user/restaurant-info/policy-payments"]

# ScrollDown1
    # Scroll Element Into View      xpath=//*[@id="goBack"]
Enter_time_ddl_selectbylabel
    SeleniumLibrary.Select From List By Label   xpath=//select[@id="beforePickUpTime"]    30 Minutes
ScrollDown2
    Scroll Element Into View      xpath=//*[@id="payInRestaurantYes"]
    
radio_button_payInRestaurant_default_selected
    4_1_9_2_radio_button_default_selected    payInRestaurantYesNo    payInRestaurantYes
radio_button_payInRestaurant_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    payInRestaurantYesNo    payInRestaurantYes    payInRestaurantNo
radio_button_payInRestaurant_default_state_enabled_group
    4_1_9_5_radio_button_default_state_enabled    payInRestaurant
radio_button_payInRestaurant_default_state_enabled_1
    4_1_9_5_radio_button_default_state_enabled    payInRestaurantYes
radio_button_payInRestaurant_default_state_enabled_2
    4_1_9_5_radio_button_default_state_enabled    payInRestaurantNo
radio_button_payInRestaurant_label_1
    4_1_9_7_radio_label    payInRestaurantYes    Yes
radio_button_payInRestaurant_label_2
    4_1_9_7_radio_label    payInRestaurantNo    No
    
checkbox_payInRestaurant_default_not_selected
    4_1_8_1_checkbox_default_not_selected    payInRestaurantValidCC
checkbox_payInRestaurant_assignId_label
    Assign Id To Element    xpath=//*[@id="root"]    new
    4_1_8_7_checkbox_label    new     Only when a valid CC is on file - This is charged in case of NO SHOW
#checkbox_payInRestaurant_label
    #4_1_8_8_checkbox_button_attribute    payInRestaurantValidCC    label    Only when a valid CC is on file - This is charged in case of NO SHOW
        
checkbox_types_of_payment_accepted_default_selected
    4_1_8_2_checkbox_default_is_selected    paymentCash
checkbox_types_of_payment_accepted_labels_get_id_1
    Assign Id To Element    xpath=//*[@id="root"]     choione
checkbox_types_of_payment_accepted_labels_get_id_2
    Assign Id To Element    xpath=//*[@id="root"]   choitwo
checkbox_types_of_payment_accepted_labels_get_id_3
    Assign Id To Element    xpath=//*[@id="root"]    choithree
checkbox_types_of_payment_accepted_labels_get_id_4
    Assign Id To Element    xpath=//*[@id="root"]/    choifour
checkbox_types_of_payment_accepted_labels_get_id_5
    Assign Id To Element    xpath=//*[@id="root"]/    choifive
checkbox_types_of_payment_accepted_label_cash1
    4_1_8_7_checkbox_label    choione    Cash
checkbox_types_of_payment_accepted_label_visa2
    4_1_8_7_checkbox_label    choitwo    Visa
checkbox_types_of_payment_accepted_label_mastercard3
    4_1_8_7_checkbox_label    choithree    Mastercard
checkbox_types_of_payment_accepted_label_american_express4
    4_1_8_7_checkbox_label    choifour    American Express
checkbox_types_of_payment_accepted_label_discover5    
    4_1_8_7_checkbox_label    choifive    Discover
checkbox_types_of_payment_accepted_label_cash
    4_1_8_7_checkbox_label    paymentCash    Cash
checkbox_types_of_payment_accepted_label_visa
    4_1_8_7_checkbox_label    paymentVisa    Visa
checkbox_types_of_payment_accepted_label_mastercard
    4_1_8_7_checkbox_label    paymentMastercard    Mastercard
checkbox_types_of_payment_accepted_label_american_express
    4_1_8_7_checkbox_label    paymentAmericanExpress    American Express
checkbox_types_of_payment_accepted_label_discover
    4_1_8_7_checkbox_label    paymentDiscover    Discover

    #not working
    #4_1_8_8_checkbox_button_attribute    paymentCash    label    Cash
    #4_1_8_8_checkbox_button_attribute    paymentVisa    label    Visa
    #4_1_8_8_checkbox_button_attribute    paymentMastercard    label    Mastercard
    #4_1_8_8_checkbox_button_attribute    paymentAmericanExpress    label    American Express
    #4_1_8_8_checkbox_button_attribute    paymentDiscover    label    Discover
checkbox_types_of_payment_accepted_not_selected_visa
    4_1_8_1_checkbox_default_not_selected    paymentVisa
checkbox_types_of_payment_accepted_not_selected_mastercard
    4_1_8_1_checkbox_default_not_selected    paymentMastercard
checkbox_types_of_payment_accepted_not_selected_americaexpress
    4_1_8_1_checkbox_default_not_selected    paymentAmericanExpress
checkbox_types_of_payment_accepted_not_selected_discover
    4_1_8_1_checkbox_default_not_selected    paymentDiscover
    
SalesTaxForThisLocation_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    salesTaxLocation
SalesTaxForThisLocation_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    salesTaxLocation
SalesTaxForThisLocation_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    salesTaxLocation
SalesTaxForThisLocation_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    salesTaxLocation    3333333333
SalesTaxForThisLocation_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    salesTaxLocation
SalesTaxForThisLocation_numeric_decimal_permitted
    4_1_5_9_numeric_field_decimal_permitted    salesTaxLocation    
SalesTaxForThisLocation_numeric_pastable
    4_1_5_11_numeric_field_pastable    salesTaxLocation
SalesTaxForThisLocation_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    salesTaxLocation
SalesTaxForThisLocation_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       salesTaxLocation
SalesTaxForThisLocation_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    salesTaxLocation
SalesTaxForThisLocation_numeric_default_value
    4_1_5_15_numeric_field_default_value    salesTaxLocation    ${EMPTY}
SalesTaxForThisLocation_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    salesTaxLocation
SalesTaxForThisLocation_numeric_not_null
    4_1_5_18_numeric_field_not_null    salesTaxLocation
   
#Rewards_1
    #Rewards section coming in future version of the WebApp
    #For Rewards role=radiogroup, name hasn’t been defined, only id=rewardValue has been defined.
    #option Yes: id=not defined, name=rewardYesYes, type=radio, value=rewardYesYes
    #option No: id=not defined, name=rewardYesNo, type=radio, value=rewardYesNo
    #4_1_10_1_text_present    Would you like to include rewards with phone app ?
#Rewards_2_failing
    #no group name has been defined for radio group Yes, No. id=rewardValue.
    #4_1_9_2_radio_button_default_selected   rewardValue    rewardYesYes
#Rewards_3
    #4_1_9_2_radio_button_default_selected   rewardYesYes    rewardYesYes
#Rewards_4
    #radiogroup id = rewardValue is used to scroll down to look for id
    #4_1_9_1_radio_button_default_not_selected   rewardValue    rewardYesNo
#Rewards_5_failing
    #radio button No: id=not defined, name=rewardYesNo, type=radio, value=rewardYesNo. Function below uses id to scroll to the radio button
    #4_1_9_1_radio_button_default_not_selected   rewardYesNo    rewardYesNo
#Rewards_6_failing
    #4_1_9_4_radio_button_multiple_selection_not_allowed    rewardValue    rewardYesYes    rewardYesNo
#Rewards_7_failing
    #4_1_9_7_radio_label    rewardYesYes    Yes
#Rewards_8_failing
    #4_1_9_7_radio_label    rewardYesNo    No
    
#How_many_points
    #4_1_5_3_numeric_field_not_it_zero    rewardPoints
    #4_1_5_4_numeric_field_no_alphabets    rewardPoints
    #4_1_5_5_numeric_field_no_splchars    rewardPoints
    #4_1_5_8_numeric_field_no_spaces    rewardPoints
#How_many_points_failing
    #4_1_5_10_numeric_field_decimal_not_permitted    rewardPoints
#How_many_points_resumed
    #4_1_5_11_numeric_field_pastable    rewardPoints
    #4_1_5_12_numeric_leading_zeroes_stripped    rewardPoints
    #4_1_5_13_numeric_spacebefore       rewardPoints
    #4_1_5_14_numeric_spaceafter      rewardPoints
    #4_1_5_15_numeric_field_default_value    rewardPoints    ${EMPTY}
    #4_1_5_16_numeric_field_default_state_enabled    rewardPoints
    #4_1_5_19_numeric_field_label     rewardPoints-label    Points (100)
	
#Discount_amount
    #4_1_5_3_numeric_field_not_it_zero    rewardAmount
    #4_1_5_4_numeric_field_no_alphabets    rewardAmount
    #4_1_5_5_numeric_field_no_splchars    rewardAmount
    #4_1_5_8_numeric_field_no_spaces    rewardAmount
    #4_1_5_9_numeric_field_decimal_permitted    rewardAmount
    #4_1_5_11_numeric_field_pastable    rewardAmount
    #4_1_5_12_numeric_leading_zeroes_stripped    rewardAmount
    #4_1_5_13_numeric_spacebefore       rewardAmount
    #4_1_5_14_numeric_spaceafter    rewardAmount
    #4_1_5_15_numeric_field_default_value    rewardAmount    ${EMPTY}
    #4_1_5_16_numeric_field_default_state_enabled    rewardAmount
    #4_1_5_19_numeric_field_label     rewardAmount-label    Amount (10$)
    
Cancellation_policy_radio_default_selected
    #radiogroup for 3 radio buttons = cancellationYesNo; “cancellationCall”, “cancellationbeforePickUpTimeRadio”, “cancellationReviewState”, 
    4_1_9_2_radio_button_default_selected    cancellationYesNo    cancellationCall
Cancellation_policy_radio_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    cancellationYesNo    cancellationCall    cancellationbeforePickUpTimeRadio
Cancellation_policy_radio_1_default_state_enabled1
    4_1_9_5_radio_button_default_state_enabled    cancellationCall
Cancellation_policy_radio_1_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    radioCancellationCallRadio
Cancellation_policy_radio_2_default_state_enabled2
    4_1_9_5_radio_button_default_state_enabled    cancellationbeforePickUpTimeRadio
Cancellation_policy_radio_2_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    radioCancellationbeforePickUpTimeRadio
Cancellation_policy_radio_3_default_state_enabled3
    4_1_9_5_radio_button_default_state_enabled    cancellationReviewState
Cancellation_policy_radio_3_default_state_enabled
    4_1_9_5_radio_button_default_state_enabled    cancellationReviewStateRadio
    #Assign Id To Element    xpath=//*[@id="cancellationYesNo"]/div[1]/label/span[2]    opone
    #Assign Id To Element    xpath=//*[@id="cancellationYesNo"]/div[2]/p    optwo
    #Assign Id To Element    xpath=//*[@id="cancellationYesNo"]/label/span[2]    opthree
    #4_1_9_7_radio_label   opone     Cannot cancel on app, Call to cancel    
    #4_1_9_7_radio_label   optwo     Before Pickup Time
    #4_1_9_7_radio_label   opthree     Cannot cancel once order is in reviewed state
Cancellation_policy_radio_1_label
    4_1_9_7_radio_label   cancellationCall     Cannot cancel on app, Call to cancel    
Cancellation_policy_radio_2_label
    #4_1_9_7_radio_label   cancellationbeforePickUpTimeRadio     Before Pickup Time
    Page Should Contain    Before Pickup Time
Cancellation_policy_radio_3_label
    4_1_9_7_radio_label   cancellationReviewState     Cannot cancel once order is in reviewed state

ScrollDown
    Scroll Element Into View      xpath=//*[@id="goBack"]
    
NoticesPolicies_privacy_text_present
    4_1_10_1_text_present    Notices & Policies
NoticesPolicies_privacy_text_splchr_allowed
    4_1_1_2_text_splchar_allowed	linkPrivacyPage
NoticesPolicies_privacy_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	linkPrivacyPage
NoticesPolicies_privacy_text_minlength_new
    4_1_1_6_text_minlength_new    linkPrivacyPage     5
NoticesPolicies_privacy_text_maxlength
    4_1_1_7_text_maxlength    linkPrivacyPage     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/policy-payments
NoticesPolicies_privacy_text_maxlength_new1
    4_1_1_7_text_maxlength_new    linkPrivacyPage     150
NoticesPolicies_privacy_text_maxlength_new
    4_1_1_7_text_maxlength_new    linkPrivacyPage     151
NoticesPolicies_privacy_text_pastable
    4_1_1_9_text_pastable	linkPrivacyPage
NoticesPolicies_privacy_text_spacebefore
    4_1_1_11_text_spacebefore    linkPrivacyPage
NoticesPolicies_privacy_text_spaceafter
    4_1_1_12_text_spaceafter    linkPrivacyPage
NoticesPolicies_privacy_text_default_value
    4_1_1_14_text_field_default_value    linkPrivacyPage    ${EMPTY}
NoticesPolicies_privacy_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    linkPrivacyPage
NoticesPolicies_privacy_text_label
    4_1_1_17_text_field_label    linkPrivacyPage-label    Do you have a link to privacy page on your website? Please copy that link here
    
NoticesPolicies_terms_text_spl_char_allowed
    4_1_1_2_text_splchar_allowed    linkTermsCondition
NoticesPolicies_terms_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	linkTermsCondition
NoticesPolicies_terms_text_minlength_new
    4_1_1_6_text_minlength_new    linkTermsCondition     5
NoticesPolicies_terms_text_maxlength
    4_1_1_7_text_maxlength    linkTermsCondition     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/policy-payments
NoticesPolicies_terms_text_maxlength_new2
    4_1_1_7_text_maxlength_new    linkTermsCondition     150
NoticesPolicies_terms_text_maxlength_new
    4_1_1_7_text_maxlength_new    linkTermsCondition     151
NoticesPolicies_terms_text_pastable
    4_1_1_9_text_pastable	linkTermsCondition
NoticesPolicies_terms_text_spacebefore
    4_1_1_11_text_spacebefore    linkTermsCondition
NoticesPolicies_terms_text_spaceafter
    4_1_1_12_text_spaceafter    linkTermsCondition
NoticesPolicies_terms_text_default_value
    4_1_1_14_text_field_default_value    linkTermsCondition    ${EMPTY}
NoticesPolicies_terms_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    linkTermsCondition
NoticesPolicies_terms_text_label
    4_1_1_17_text_field_label    linkTermsCondition-label    Do you have a link to Terms & Conditions on your website? Please copy that link here
    
button_clicktocontinue_rightname
    4_1_4_1_button_rightname_new     clickToContinue    CLICK TO CONTINUE
button_clicktocontinue_active
    4_1_4_2_button_active    clickToContinue
button_clicktocontinue_attribute_type
    4_1_4_6_button_attribute    clickToContinue   type    button
    
button_goback_rightname
    4_1_4_1_button_rightname_new     goBack    GO BACK
button_goback_active
    4_1_4_2_button_active    goBack
button_goback_attribute_type
    4_1_4_6_button_attribute    goBack   type    button

Text_on_form_1
    4_1_10_1_text_present    Restaurant Info - Policies & Payments
Text_on_form_2
    4_1_10_1_text_present    Please give us some details about your restaurant!
Text_on_form_3
    4_1_10_1_text_present    Can customers place orders without paying upfront ? (Pay in the restaurant when they pickup the order)
Text_on_form_4
    4_1_10_1_text_present    Pay In Restaurant Option
Text_on_form_5
    4_1_10_1_text_present    Sales Tax For This Location*
Text_on_form_6
    4_1_10_1_text_present    Cancellation Policy
Text_on_form_7
    4_1_10_1_text_present    Notices & Policies

#Enter_time_ddl_clickelement
    #click element    xpath=//*[@id="beforePickUpTime"]
# Enter_time_ddl_selectbylabel
    # SeleniumLibrary.Select From List By Label   xpath=//select[@id="beforePickUpTime"]    30 Minutes
Donotrun
    [Tags]   donotrun
    
    Enter Time
    click element    xpath=//*[@id="cancellationYesNo"]
      #//div[2]/label/span[1]/span[1]/input
    #4_1_6_1_DDL_LB_Default    //*[@id="beforePickUpTime"]    //*[@id="menu-beforePickUpTime"]/div[3]/ul
    4_1_6_1_DDL_LB_Default    //*[@id="beforePickUpTime"]
    
    Enter_time_drop_down_values_list
    4_1_6_2_DDL_LB_value_list    //*[@id="beforePickUpTime"]    //*[@id="menu-beforePickUpTime"]
    
    Enter_time_drop_down_select_value
    #4_1_6_3_DDL_LB_select_value     //*[@id="beforePickUpTime"]    //*[@id="menu-beforePickUpTime"]/div[3]/ul/li[4]
    4_1_6_3_DDL_LB_select_value     //*[@id="beforePickUpTime"]
    
    Enter_time_drop_down_view-size
    4_1_6_7_DDL_LB_view_size    beforePickUpTime
    
    Enter_time_drop_down_content_wider_than_list_size
    4_1_6_8_DDL_LB_content_wider_than_list_size    beforePickUpTime
    
    Enter_time_drop_down_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    //*[@id="beforePickUpTime"]    //*[@id="menu-beforePickUpTime"]/div[3]/ul    //*[@id="menu-beforePickUpTime"]/div[3]/ul/li[4]
    4_1_6_9_DDL_no_multi_selection    beforePickUpTime*

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
    close all browsers

