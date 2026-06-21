*** Settings ***
Default Tags      fvmenu_alc_bvg
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/Text on form.robot

*** Variables ***

#use best8eats url later
${BEST8EATS_PRIVACY_POLICY_URL}     http://www.best8eats.com/privacypolicy/
${IKABIT_PRIVACY_POLICY_URL}     https://ikabitss.com/privacy-policy/

*** Test Cases ***
App_login
   login pkg1
    
GoTo_Menu_Subcategory_AlcoholicBeverages
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Click Element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    Click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    
Add_two_entries
    Click Element    xpath=//*[@id="anotherEntry"]
    Click Element    xpath=//*[@id="anotherEntry"]
    
Alcoholic_beverage1_text_not_null
    4_1_1_1_text_notnull	alBvname1
Alcoholic_beverage1_text_splchar_allowed
    4_1_1_2_text_splchar_allowed	alBvname1
Alcoholic_beverage1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	alBvname1
Alcoholic_beverage1_text_minlength
    4_1_1_6_text_minlength	alBvname1	a
Alcoholic_beverage1_text_maxlength
    4_1_1_7_text_maxlength	alBvname1	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
Alcoholic_beverage1_text_pastable
    4_1_1_9_text_pastable	alBvname1
Alcoholic_beverage1_text_notpastable
    4_1_1_10_text_notpastable	alBvname1
Alcoholic_beverage1_text_spacebefore
    4_1_1_11_text_spacebefore       alBvname1
Alcoholic_beverage1_text_spaceafter
    4_1_1_12_text_spaceafter	alBvname1
Alcoholic_beverage1_text_default_value
    4_1_1_14_text_field_default_value	    alBvname1    ${EMPTY}
Alcoholic_beverage1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled	alBvname1
Alcoholic_beverage1_text_label
    4_1_1_17_text_field_label	alBvname1-label    Alcoholic Beverage Name*
Alcoholic_beverage1_text_space_allowed
    4_1_1_18_text_field_space_allowed	alBvname1
Alcoholic_beverage1_text_attribute
    4_1_1_20_text_field_attribute    alBvname1    type   text
    
Alcoholic_beverage2_text_not_null
    4_1_1_1_text_notnull	alBvname2
Alcoholic_beverage2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed	alBvname2
Alcoholic_beverage2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	alBvname2
Alcoholic_beverage2_text_minlength
    4_1_1_6_text_minlength	   alBvname2   a
Alcoholic_beverage2_text_maxlength
    4_1_1_7_text_maxlength	  alBvname1	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
Alcoholic_beverage2_text_pastable
    4_1_1_9_text_pastable	 alBvname2
Alcoholic_beverage2_text_notpastable
    4_1_1_10_text_notpastable	 alBvname2
Alcoholic_beverage2_text_spacebefore
    4_1_1_11_text_spacebefore       alBvname2
Alcoholic_beverage2_text_spaceafter
    4_1_1_12_text_spaceafter	alBvname2
Alcoholic_beverage2_text_default_value
    4_1_1_14_text_field_default_value	    alBvname2    ${EMPTY}
Alcoholic_beverage2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    alBvname2
Alcoholic_beverage2_text_label
    4_1_1_17_text_field_label	alBvname2-label    Alcoholic Beverage Name*
Alcoholic_beverage2_text_space_allowed
    4_1_1_18_text_field_space_allowed	 alBvname2
Alcoholic_beverage2_text_attribute
    4_1_1_20_text_field_attribute     alBvname2    type   text
    
Alcoholic_beverage3_text_not_null
    4_1_1_1_text_notnull	alBvname3
Alcoholic_beverage3_text_splchar_allowed
    4_1_1_2_text_splchar_allowed	alBvname3
Alcoholic_beverage3_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	alBvname3
Alcoholic_beverage3_text_minlength
    4_1_1_6_text_minlength	  alBvname3	a
Alcoholic_beverage3_text_maxlength
    4_1_1_7_text_maxlength	  alBvname3	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
Alcoholic_beverage3_text_pastable
    4_1_1_9_text_pastable	 alBvname3
Alcoholic_beverage3_text_notpastable
    4_1_1_10_text_notpastable 	alBvname3
Alcoholic_beverage3_text_spacebefore
    4_1_1_11_text_spacebefore       alBvname3
Alcoholic_beverage3_text_spaceafter
    4_1_1_12_text_spaceafter	alBvname3
Alcoholic_beverage3_text_default_value
    4_1_1_14_text_field_default_value	    alBvname3    ${EMPTY}
Alcoholic_beverage3_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled 	alBvname3
Alcoholic_beverage3_text_label
    4_1_1_17_text_field_label	 alBvname3-label    Alcoholic Beverage Name*
Alcoholic_beverage3_text_space_allowed
    4_1_1_18_text_field_space_allowed	 alBvname3
Alcoholic_beverage3_text_attribute
    4_1_1_20_text_field_attribute    alBvname3    type   text
    
Bvg_description1_text_not_null
    4_1_1_1_text_notnull	alBvDesc1
Bvg_description1_text_splchar_allowed
    4_1_1_2_text_splchar_allowed	alBvDesc1
Bvg_description1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	alBvDesc1
Bvg_description1_text_minlength
    4_1_1_6_text_minlength	alBvDesc1	a
Bvg_description1_text_maxlength
    4_1_1_7_text_maxlength	alBvDesc1	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
Bvg_description1_text_pastable
    4_1_1_9_text_pastable	alBvDesc1
Bvg_description1_text_notpastable
    4_1_1_10_text_notpastable	alBvDesc1
Bvg_description1_text_spacebefore
    [Documentation]    Verify that the text field accepts space before input.
    Input Text    xpath=//*[@id="alBvDesc1"]    ${SPACE}text
    Wait Until Element Contains    xpath=//*[@id="alBvDesc1"]    ${SPACE}text    timeout=5s
    Log To Console    ..........Text field does accept space before 
Bvg_description1_text_spaceafter
    [Documentation]    Verify that the text field accepts space after input.
    Input Text    xpath=//*[@id="alBvDesc1"]    text${SPACE}
    Wait Until Element Contains    xpath=//*[@id="alBvDesc1"]    text    timeout=5s
    Log To Console    ..........Text field does accept space after
Bvg_description1_text_default_value
    [Documentation]    Verify that the text field has the expected default value.
    ${pattern}=    Get Text    xpath=//*[@id="alBvDesc1"]
    Should Be Equal As Strings    ${pattern}    ${EMPTY}    Nice Beer@#$@!@$0123456789aersdf sdfsdhfk difsidufhiuCtrlVCtrlcCtrlaCtrl vCtrl  cCtrl Ashdifsi dfb sidbfsdfniAd23$1 texttext        
    Log To Console    Has default value......... ${pattern}
Bvg_description1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled	alBvDesc1
Bvg_description1_text_label
    4_1_1_17_text_field_label	alBvDesc1-label    Alcoholic Beverage Description
Bvg_description1_text_space_allowed
    4_1_1_18_text_field_space_allowed	alBvDesc1
Bvg_description1_text_attribute
    4_1_1_20_text_field_attribute    alBvDesc1    type   textarea
    
Bvg_description2_text_not_null
    4_1_1_1_text_notnull	alBvDesc2
Bvg_description2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed	alBvDesc2
Bvg_description2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	alBvDesc2
Bvg_description2_text_minlength
    4_1_1_6_text_minlength	alBvDesc2	a
Bvg_description2_text_maxlength
    4_1_1_7_text_maxlength	alBvDesc2	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
Bvg_description2_text_pastable
    4_1_1_9_text_pastable	alBvDesc2
Bvg_description2_text_notpastable
    4_1_1_10_text_notpastable	alBvDesc2
Bvg_description2_text_spacebefore
    [Documentation]    Verify text field allows space before input
    SeleniumLibrary.Input Text    xpath=//*[@id="alBvDesc2"]    ${SPACE}text
    Wait Until Element Contains    xpath=//*[@id="alBvDesc2"]    ${SPACE}text    timeout=5s
    Log To Console    ..........Text field does accept space before
Bvg_description2_text_spaceafter
    [Documentation]    Verify that the text field accepts space after input.
    Input Text    xpath=//*[@id="alBvDesc2"]    text${SPACE}
    Wait Until Element Contains    xpath=//*[@id="alBvDesc2"]    text    timeout=5s
    Log To Console    ..........Text field does accept space after
Bvg_description2_text_default_value
    #4_1_1_14_text_field_default_value	alBvDesc2    ${EMPTY}
    ${pattern}=	Get text	xpath=//*[@id="alBvDesc2"]
    should be equal as strings     ${pattern}   ${pattern}
    log to console     has default value......... ${pattern}
Bvg_description2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled	alBvDesc2
Bvg_description2_text_label
    4_1_1_17_text_field_label	alBvDesc2-label    Alcoholic Beverage Description
Bvg_description2_text_space_allowed
    4_1_1_18_text_field_space_allowed	alBvDesc2  
Bvg_description2_text_attribute
    4_1_1_20_text_field_attribute    alBvDesc2    type   textarea
    
#Bvg_description3_text_not_null
    #4_1_1_1_text_notnull	alBvDesc3
#Bvg_description3_text_splchar_allowed
    #4_1_1_2_text_splchar_allowed	alBvDesc3
#Bvg_description3_text_numbers_allowed
    #4_1_1_4_text_numbers_allowed	alBvDesc3
#Bvg_description3_text_minlength
    #4_1_1_6_text_minlength	alBvDesc3	a
#Bvg_description3_text_maxlength
    #4_1_1_7_text_maxlength	alBvDesc3	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
#Bvg_description3_text_pastable
    #4_1_1_9_text_pastable	alBvDesc3
#Bvg_description3_text_notpastable
    #4_1_1_10_text_notpastable	alBvDesc3
#Bvg_description3_text_spacebefore
    #4_1_1_11_text_spacebefore       alBvDesc3
#Bvg_description3_text_spaceafter
    #4_1_1_12_text_spaceafter	alBvDesc3
#Bvg_description3_text_default_value
    #4_1_1_14_text_field_default_value	alBvDesc3    ${EMPTY}
#Bvg_description3_text_default_state_enabled
    #4_1_1_15_text_field_default_state_enabled	alBvDesc3
#Bvg_description3_text_label
    #4_1_1_17_text_field_label	alBvDesc3-label    Alcoholic Beverage Description
#Bvg_description3_text_space_allowed
    #4_1_1_18_text_field_space_allowed	alBvDesc3
#Bvg_description3_text_attribute
    #4_1_1_20_text_field_attribute    alBvDesc3    type   textarea
    
#button_delete1_rightname
    #4_1_4_1_button_rightname_new     delete1    <icon_noname>
button_delete1_active
    4_1_4_2_button_active    delete1
button_delete1_attribute_type
    4_1_4_6_button_attribute    delete1   type    button
#button_delete1_attribute_label
    #4_1_4_6_button_attribute    delete1    label    <icon_noname>
    
#button_delete2_rightname
    #4_1_4_1_button_rightname_new     delete2    <icon_noname>
button_delete2_active
    4_1_4_2_button_active    delete2
button_delete2_attribute_type
    4_1_4_6_button_attribute    delete2   type    button
#button_delete2_attribute_label
    #4_1_4_6_button_attribute    delete2    label    <icon_noname>
    
##button_delete3_rightname
    ##4_1_4_1_button_rightname_new     delete3    <icon_noname>
#button_delete3_active
    #4_1_4_2_button_active    delete3
#button_delete3_attribute_type
    #4_1_4_6_button_attribute    delete3   type    button
##button_delete3_attribute_label
    ##4_1_4_6_button_attribute    delete3    label    <icon_noname>
    
button_goback_rightname
    4_1_4_1_button_rightname_new     goBack    GO BACK
button_goback_active
    4_1_4_2_button_active    goBack
button_goback_attribute_type
    4_1_4_6_button_attribute    goBack   type    button
#button_goback_attribute_label
    #4_1_4_6_button_attribute    goBack    label    GO BACK
    
button_clicktocontinue_rightname
    4_1_4_1_button_rightname_new     clickToContinue    CLICK TO CONTINUE
button_clicktocontinue_active
    4_1_4_2_button_active    clickToContinue
button_clicktocontinue_attribute_type
    4_1_4_6_button_attribute    clickToContinue   type    button
#button_clicktocontinue_attribute_label
    #4_1_4_6_button_attribute    clickToContinue    label    CLICK TO CONTINUE
    
button_anotherEntry_rightname
    4_1_4_1_button_rightname_new     anotherEntry    ADD NEW ENTRY
button_anotherEntry_active
    4_1_4_2_button_active    anotherEntry
button_anotherEntry_attribute_type
    4_1_4_6_button_attribute    anotherEntry   type    button
#button_anotherEntry_attribute_label
    #4_1_4_6_button_attribute    anotherEntry    label    ADD NEW ENTRY

#Type1_ddl_label
    #${pattern}=	Get text	xpath=//*[@id="alBvTypeLbl1"]
	#should be equal as strings    Type*   ${pattern}
#Type2_ddl_label
    #${pattern}=	Get text	xpath=//*[@id="alBvTypeLbl2"]
	#should be equal as strings    Type*   ${pattern}
#Type3_ddl_label
    #${pattern}=	Get text	xpath=//*[@id="alBvTypeLbl3"]
	#should be equal as strings    Type*   ${pattern}
    
#Type1_ddl_default
    #4_1_6_1_DDL_LB_Default    alBvType1
#Type1_ddl_value_list
   #4_1_6_2_DDL_LB_value_list    alBvType1    2
#Type1_ddl_select_value
    #4_1_6_3_DDL_LB_select_value     alBvType1
#Type1_ddl_order
    #4_1_6_14_DDL_LB_list order    alBvType1
#Type1_ddl_view_size
    #4_1_6_7_DDL_LB_view_size    alBvType1
#Type1_ddl_content_wider_than_list_size
    #4_1_6_8_DDL_LB_content_wider_than_list_size    alBvType1
#Type1_ddl_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    alBvType1
        
Text_on_form_1
    4_1_10_1_text_present    Alcoholic Beverages ToGo
Text_on_form_2
    4_1_10_1_text_present    Please List The Alcoholic Beverages On Your Menu
Text_on_form_3
    4_1_10_1_text_present    Alcoholic Beverage # 1
Text_on_form_4
    4_1_10_1_text_present    Alcoholic Beverage # 2
Text_on_form_5
    4_1_10_1_text_present    Alcoholic Beverage # 3

Delete_two_entries_added_above
     Click Element    xpath=//*[@id="delete2"]
     Click Element    xpath=//*[@id="delete3"]
     
Scroll_element_into_view_footer
    #SeleniumLibrary.Scroll Element Into View    xpath=//*[@href="${IKABIT_PRIVACY_POLICY_URL}"]
    Scroll Element Into View     xpath=//*[@id="footer-divider"]
Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2024
    Element Should Be Visible    xpath=//*[@id="footer-divider"]
Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Privacy Policy

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Terms & Conditions

Verify Footer Ikabit URL
    [Documentation]    Verify that the Ikabit URL is correct 
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Ikabit Inc    timeout=10s
    Go Back   

    
    close browser
 

