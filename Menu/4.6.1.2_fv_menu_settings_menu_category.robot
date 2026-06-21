*** Settings ***
Default Tags      fvmenu_menu
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Text on form.robot
Resource          ../Resource/Checkbox.robot

*** Variables ***
# Use best8eats URL later
${BEST8EATS_PRIVACY_POLICY_URL}     http://www.best8eats.com/privacypolicy/
${IKABIT_PRIVACY_POLICY_URL}        https://ikabitss.com/privacy-policy/

*** Test Cases ***
App Login
    [Documentation]    Log in using the credentials for pkg1.
    login pkg1

Go To Menu Category
    [Documentation]    Navigate to the Menu Category section from the Menu Settings page.
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Click Element    xpath=//*[@href="/user/menu-settings/menu-category"]

Text On Form 1
    [Documentation]    Verify that the text "Menu Categories" is present on the form.
    4_1_10_1_text_present    Menu Categories

Text On Form 2
    [Documentation]    Verify that the text "Please Tell Us The Different Menus You Have In Your Restaurant*" is present on the form.
    4_1_10_1_text_present    Please Tell Us The Different Menus You Have In Your Restaurant*

Click Remove All To Move Everything To Left Column If There
    [Documentation]    If the "Remove All" button is visible, click it to move all items to the left column.
    Sleep   2s
    ${button_removalall_present}    Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="Remove-All"]
    Run Keyword If    ${button_removalall_present}    Click Element    xpath=//*[@id="Remove-All"]

Add All Button Right Name New
    [Documentation]    Verify that the "Add All" button has the correct name.
    4_1_4_1_button_rightname_new    Add-All    ADD ALL >>

Add All Button Active
    [Documentation]    Verify that the "Add All" button is active.
    4_1_4_2_button_active    Add-All

Add All Button Attribute Type
    [Documentation]    Verify that the "Add All" button has the correct attribute type.
    4_1_4_6_button_attribute    Add-All    type    button

Click Add All To Enable Remove All
    [Documentation]    Click the "Add All" button to enable the "Remove All" button.
    Click Element    xpath=//*[@id="Add-All"]

Remove All Button Right Name New
    [Documentation]    Verify that the "Remove All" button has the correct name.
    4_1_4_1_button_rightname_new    Remove-All    << REMOVE ALL

Remove All Button Active
    [Documentation]    Verify that the "Remove All" button is active.
    4_1_4_2_button_active    Remove-All

Remove All Button Attribute Type
    [Documentation]    Verify that the "Remove All" button has the correct attribute type.
    4_1_4_6_button_attribute    Remove-All    type    button

Click Remove All
    [Documentation]    Click the "Remove All" button.
    Click Element    xpath=//*[@id="Remove-All"]

Select Breakfast To Enable Add
    [Documentation]    Select "Breakfast" to enable the "Add" button.
    Click Element    xpath=//*[@id="transfer-list-item-Breakfast-label"]

Add Button Right Name New
    [Documentation]    Verify that the "Add" button has the correct name.
    4_1_4_1_button_rightname_new    Add    ADD >

Add Button Active
    [Documentation]    Verify that the "Add" button is active.
    4_1_4_2_button_active    Add

Add Button Attribute Type
    [Documentation]    Verify that the "Add" button has the correct attribute type.
    4_1_4_6_button_attribute    Add    type    button


    
Click Add To Add Breakfast
    [Documentation]    Click the "Add" button to add "Breakfast".
    Click Element    xpath=//*[@id="Add"]

Select Breakfast To Enable Remove
    [Documentation]    Select "Breakfast" to enable the "Remove" button.
    Click Element    xpath=//*[@id="transfer-list-item-Breakfast-label"]

Remove Button Right Name New
    [Documentation]    Verify that the "Remove" button has the correct name.
    4_1_4_1_button_rightname_new    remove    < REMOVE

Remove Button Active
    [Documentation]    Verify that the "Remove" button is active.
    4_1_4_2_button_active    remove

Remove Button Attribute Type
    [Documentation]    Verify that the "Remove" button has the correct attribute type.
    4_1_4_6_button_attribute    remove    type    button

Scroll To Element Click To Continue
    [Documentation]    Scroll to the "Click To Continue" button.
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]

# Go Back Button Active
    # [Documentation]    Verify that the "Go Back" button is active.
    # 4_1_4_1_button_rightname    goBack
    # 4_1_4_2_button_active    goBack

# Go Back Button Attribute Type
    # [Documentation]    Verify that the "Go Back" button has the correct attribute type.
    # 4_1_4_6_button_attribute    goBack    type    button

Click To Continue Button Right Name
    [Documentation]    Verify that the "Click To Continue" button has the correct name.
    4_1_4_1_button_rightname    clickToContinue

Click To Continue Button Active
    [Documentation]    Verify that the "Click To Continue" button is active.
    4_1_4_2_button_active    clickToContinue

Click To Continue Button Attribute Type
    [Documentation]    Verify that the "Click To Continue" button has the correct attribute type.
    4_1_4_6_button_attribute    clickToContinue    type    button

Add To Menu Button Right Name
    [Documentation]    Verify that the "Add To Menu" button has the correct name.
    4_1_4_1_button_rightname    addToMenu

Add To Menu Button Active
    [Documentation]    Verify that the "Add To Menu" button is active.
    4_1_4_2_button_active    addToMenu

Add To Menu Button Attribute Type
    [Documentation]    Verify that the "Add To Menu" button has the correct attribute type.
    4_1_4_6_button_attribute    addToMenu    type    button

Enter Menu Item Text Not Null
    [Documentation]    Verify that the menu item text field does not accept null values.
    4_1_1_1_text_notnull    enterMenuItem

Enter Menu Item Text Special Characters Allowed
    [Documentation]    Verify that the menu item text field allows special characters.
    4_1_1_2_text_splchar_allowed    enterMenuItem

Enter Menu Item Text Numbers Allowed
    [Documentation]    Verify that the menu item text field allows numbers.
    4_1_1_4_text_numbers_allowed    enterMenuItem

Enter Menu Item Text Min Length
    [Documentation]    Verify that the menu item text field enforces the minimum length.
    4_1_1_6_text_minlength    enterMenuItem    a

Enter Menu Item Text Max Length
    [Documentation]    Verify that the menu item text field enforces the maximum length.
    4_1_1_7_text_maxlength    enterMenuItem    ersdf sdfsdhfk difsidufhiushdifsi dfb sidbfsdfni

Enter Menu Item Text Pastable
    [Documentation]    Verify that the menu item text field allows pasting text.
    4_1_1_9_text_pastable    enterMenuItem

Enter Menu Item Text Space Before
    [Documentation]    Verify that the menu item text field allows spaces before the text.
    4_1_1_11_text_spacebefore    enterMenuItem

Enter Menu Item Text Space After
    [Documentation]    Verify that the menu item text field allows spaces after the text.
    4_1_1_12_text_spaceafter    enterMenuItem

Enter Menu Item Text Default Value
    [Documentation]    Verify that the menu item text field has the correct default value.
    4_1_1_14_text_field_default_value    enterMenuItem    ${EMPTY}

Enter Menu Item Text Default State Enabled
    [Documentation]    Verify that the menu item text field is enabled by default.
    4_1_1_15_text_field_default_state_enabled    enterMenuItem

Enter Menu Item Text Field Label
    [Documentation]    Verify that the menu item text field has the correct label.
    4_1_1_17_text_field_label    Enter-Menu-Name-Manually    Enter Menu Name Manually

Enter Menu Item Text Space Allowed
    [Documentation]    Verify that the menu item text field allows spaces.
    4_1_1_18_text_field_space_allowed    enterMenuItem

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    #Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    Privacy Policy | Terms & Conditions   BUILT By Ikabit Inc | © Ikabit Inc. 2025
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

Close Browser
    [Documentation]    Close the browser after the test execution.
    Close Browser
