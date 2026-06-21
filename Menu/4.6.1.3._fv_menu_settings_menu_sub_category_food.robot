*** Settings ***
Default Tags      fvmenu_subcategoryfood
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot
Resource          ../Resource/Checkbox.robot

*** Variables ***
#use best8eats url later
${BEST8EATS_PRIVACY_POLICY_URL}     http://www.best8eats.com/privacypolicy/
${IKABIT_PRIVACY_POLICY_URL}     https://ikabitss.com/privacy-policy/

*** Test Cases ***
App_login
    login pkg1
    
GoTo_Menu_SubCategory
    Click element      xpath=//*[@href="/user/menu-settings"]
    Click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    
Click_removeAll_to_move_everything_to_left_column_if_there
     Click Element    xpath=//*[@id="removeAll-button"]
     
#Menu_Sub_Categories_in_Left_Column
    #4_1_8_7_checkbox_label    transfer-list-item-A La Carte-label    A La Carte
#Menu_Sub_Categories_in_Left_Column
    #4_1_8_7_checkbox_label    transfer-list-item-Accompaniment-label    Accompaniment
Menu_Sub_Categories_in_Left_Column
    4_1_8_7_checkbox_label    transfer-list-item-Appetizers-label    Appetizers
Menu_Sub_Categories_in_Left_Column
    4_1_8_7_checkbox_label    transfer-list-item-BBQ-label    BBQ
#Menu_Sub_Categories_in_Left_Column
    #4_1_8_7_checkbox_label    transfer-list-item-Bowls-label    Bowls
Menu_Sub_Categories_in_Left_Column
    Wait Until Element Is Visible     xpath=//*[@id="transfer-list-item-Breads-label"]
    4_1_8_7_checkbox_label    transfer-list-item-Breads-label    Breads
Menu_Sub_Categories_in_Left_Column
    4_1_8_7_checkbox_label    transfer-list-item-Burgers-label    Burgers
#Menu_Sub_Categories_in_Left_Column
    #4_1_8_7_checkbox_label    transfer-list-item-Calzones-label    Calzones
#Menu_Sub_Categories_in_Left_Column
    #4_1_8_7_checkbox_label    transfer-list-item-Chef Recommendations-label    Chef Recommendations
#Menu_Sub_Categories_in_Left_Column
    #4_1_8_7_checkbox_label    transfer-list-item-Chef's special-label    Chef's special
Menu_Sub_Categories_in_Left_Column
    4_1_8_7_checkbox_label    transfer-list-item-Chicken-label    Chicken
    
#Menu_Sub_Categories_in_Left_Column_default_not_selected
    #4_1_8_1_checkbox_default_not_selected    left-A La Carte  
#Menu_Sub_Categories_in_Left_Column_default_not_selected
    #4_1_8_1_checkbox_default_not_selected    left-Accompaniment
Menu_Sub_Categories_in_Left_Column_default_not_selected
    4_1_8_1_checkbox_default_not_selected    left-Appetizers
Menu_Sub_Categories_in_Left_Column_default_not_selected
    4_1_8_1_checkbox_default_not_selected    left-BBQ
#Menu_Sub_Categories_in_Left_Column_default_not_selected
    #4_1_8_1_checkbox_default_not_selected    left-Bowls
Menu_Sub_Categories_in_Left_Column_default_not_selected
    4_1_8_1_checkbox_default_not_selected    left-Breads
Menu_Sub_Categories_in_Left_Column_default_not_selected
    4_1_8_1_checkbox_default_not_selected    left-Burgers
#Menu_Sub_Categories_in_Left_Column_default_not_selected
    #4_1_8_1_checkbox_default_not_selected    left-Calzones
#Menu_Sub_Categories_in_Left_Column_default_not_selected
    #4_1_8_1_checkbox_default_not_selected    left-Chef Recommendations
#Menu_Sub_Categories_in_Left_Column_default_not_selected
    #4_1_8_1_checkbox_default_not_selected    left-Chef's special
Menu_Sub_Categories_in_Left_Column_default_not_selected
    4_1_8_1_checkbox_default_not_selected    left-Chicken
    
button_addall_rightname
     Scroll Element Into View    xpath=//*[@id="addAll-button"] 
     4_1_4_1_button_rightname_new    addAll-button   ADD ALL >>
button_addall_active
     4_1_4_2_button_active    addAll-button
button_addall_attribute
     4_1_4_6_button_attribute    addAll-button    type    button
     
Click_addAll_to_enable_and_test_button_removeAll
     Click Element    xpath=//*[@id="addAll-button"]
     
button_removeall_rightname
     4_1_4_1_button_rightname_new    removeAll-button  << REMOVE ALL
button_removeall_active
     4_1_4_2_button_active    removeAll-button
button_removeall_attribute
     4_1_4_6_button_attribute    removeAll-button    type    button

Click_removeAll
     Click Element    xpath=//*[@id="removeAll-button"]
Select_entry_Appetizers
     Click Element    xpath=//*[@id="transfer-list-item-Bagels-label"]
     Sleep  2s
     
button_add_rightname
     4_1_4_1_button_rightname_new    add-button    ADD >
button_add_active
     4_1_4_2_button_active    add-button
button_add_attribute
     4_1_4_6_button_attribute    add-button    type    button

Click_add
     Click Element    xpath=//*[@id="add-button"]
     Click Element    xpath=//*[@id="transfer-list-item-Breakfast-label"]
     Sleep  2s

button_remove_rightname
     4_1_4_1_button_rightname_new    remove-button    < REMOVE
button_remove_active
     4_1_4_5_button_inactive    remove-button
# button_goback_attribute
     # 4_1_4_6_button_attribute   remove-button    type    button

#bring selections to the left column to test again.

     
Scroll_element
     Scroll Element Into View    xpath=//*[@id="clickToContinue"] 
#button_goback_rightname
     #4_1_4_1_button_rightname_new    goBack    GO BACK
#button_goback_active
 # 4_1_4_2_button_active    goBack
button_goback_attribute
     4_1_4_6_button_attribute    goBack    type    button

button_clickToContinue_rightname
     4_1_4_1_button_rightname_new    clickToContinue    CLICK TO CONTINUE
button_clickToContinue_active
     4_1_4_2_button_active    clickToContinue
button_clickToContinue_attribute
     4_1_4_6_button_attribute    clickToContinue    type    button

button_addToMenu_rightname
     4_1_4_1_button_rightname_new    addToMenu    ADD TO MENU
button_addToMenu_active
     4_1_4_2_button_active    addToMenu
button_addToMenu_attribute
     4_1_4_6_button_attribute    addToMenu    type    button

Enter_menuitem_text_not_null
    4_1_1_1_text_notnull	enterMenuItem
Enter_menuitem_text_splchar
    4_1_1_2_text_splchar_allowed	enterMenuItem
Enter_menuitem_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	enterMenuItem
Enter_menuitem_text_minlength
    4_1_1_6_text_minlength	enterMenuItem	a
Enter_menuitem_text_maxlength
    4_1_1_7_text_maxlength	enterMenuItem	ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni
Enter_menuitem_text_pastable
    4_1_1_9_text_pastable	enterMenuItem
Enter_menuitem_text_notpastable
    4_1_1_10_text_notpastable	enterMenuItem
Enter_menuitem_text_spacebefore
    4_1_1_11_text_spacebefore    enterMenuItem
Enter_menuitem_text_spaceafter
    4_1_1_12_text_spaceafter	enterMenuItem
Enter_menuitem_text_default_value
    4_1_1_14_text_field_default_value	enterMenuItem    ${EMPTY}
Enter_menuitem_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled	enterMenuItem
Enter_menuitem_text_field_label
    #4_1_1_17_text_field_label  	enterMenuItem-label    Enter Menu Name Manually
    4_1_1_17_text_field_label      enterMenuItem-label    Enter Menu Name Manually
Enter_menuitem_text_space_allowed
    4_1_1_18_text_field_space_allowed	enterMenuItem
    
Text_on_form_1
    4_1_10_1_text_present    Menu Sub-Categories
Text_on_form_2
    4_1_10_1_text_present    FOOD - Please Select The Different Sub-Categories Of Food In Your Menus*
Text_on_form_3
    4_1_10_1_text_present    Some popular food categories in your cuisine
Text_on_form_4
    4_1_10_1_text_present    Food Sub-Categories Chosen
    
# Scroll_element_into_view_footer
    # SeleniumLibrary.Scroll Element Into View    xpath=//*[@href="${IKABIT_PRIVACY_POLICY_URL}"]
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
