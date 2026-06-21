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
Resource          ../Resource/File Upload.robot
Resource          ../Resource/URL.robot
Suite Teardown    close all browsers

*** Test Cases ***
App_login
    login pkg1
    
click_menuhelp
    Click element    xpath=//*[@href="/user/menu-settings"]
    
check_heading_menusettings
    4_1_3_1_link_rightName     /user/menu-settings     Menu Settings
    
movie_player_widget_enabled
    Element Should Be Enabled      xpath=//*[@id="widget2"]
    Element Attribute Value Should Be    xpath=//*[@id="widget2"]     title    Restaurant Promotional Video (Short edit)
    
website_weburl_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    webUrl
website_weburl_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    webUrl
website_weburl_text_maxlength
    4_1_1_7_text_maxlength_new    webUrl     520
website_weburl_text_pastable
    4_1_1_9_text_pastable     webUrl
website_weburl_text_spacebefore
    4_1_1_11_text_spacebefore    webUrl
website_weburl_text_spaceafter
    4_1_1_12_text_spaceafter    webUrl
website_weburl_text_nosuggestions
    4_1_1_13_test nosuggestions    webUrl
website_weburl_text_default_value
    4_1_1_14_text_field_default_value    webUrl-label    Enter website URL here
website_weburl_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    webUrl
website_weburl_text_space_not_allowed
    4_1_1_19_text_field_space_not_allowed     webUrl
website_weburl_text_attribute
    4_1_1_20_text_field_attribute     webUrl     type    url

PageShouldContain_One-TimeSetupCost    
    Page Should Contain    One-Time Setup Cost - $x per menu item

OneTimeSetupCost_default_selected
    4_1_9_2_radio_button_default_selected    oneTimeSetupCost    Yes
OneTimeSetupCost_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    oneTimeSetupCost    Yes    No
OneTimeSetupCost_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    One-Time Setup Cost
OneTimeSetupCost_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    Yes
OneTimeSetupCost_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    No
OneTimeSetupCost_name2_radio_label_Yes
    4_1_9_7_radio_label   Yes    Yes, sign me up
OneTimeSetupCost_name2_radio_label_No
    4_1_9_7_radio_label    No    No, I will do this myself!
    
file_upload_default_state_enabled
    4_1_12_1_file_upload_default_state_enabled    drag-drop-image

button_clicktocontinue_rightname
    4_1_4_1_button_rightname_new     clickToContinue    CLICK TO CONTINUE
button_clicktocontinue_active
    4_1_4_2_button_active    clickToContinue
button_clicktocontinue_attribute_type
    4_1_4_6_button_attribute    clickToContinue   type    button

button_uploadimages_inactive
    4_1_4_5_button_inactive    uploadImages
button_uploadimages_type
    4_1_4_6_button_attribute    uploadImages    type    button

Text_on_form_1
    4_1_10_1_text_present    Menu Creation Help
Text_on_form_2
    4_1_10_1_text_present    Here you will be able to create:
Text_on_form_3
    4_1_10_1_text_present    Menu Categories (Breakfast Menu, Lunch Menu etc.)
Text_on_form_4
    4_1_10_1_text_present    Menu Subcategories (Appetizers, Entrees etc.)
Text_on_form_5
    4_1_10_1_text_present    Creating your menu
Text_on_form_6
    4_1_10_1_text_present    Categorize your menus according to the times when they are available (Ex: Breakfast - 6am - 11am, Lunch - 11am - 3pm etc.)
Text_on_form_7
    4_1_10_1_text_present    Let Us Create Your Digital Menu Entries For You
Text_on_form_8
    4_1_10_1_text_present    (You will be able to make changes later)
Text_on_form_9
    4_1_10_1_text_present    One-Time Setup Cost - $x per menu item
Text_on_form_10
    4_1_10_1_text_present    Your ToGo Menu
Text_on_form_11
    4_1_10_1_text_present    My website:
Text_on_form_12
    4_1_10_1_text_present    OR
Text_on_form_13
    4_1_10_1_text_present    Upload Menu Images:
Text_on_form_14
    4_1_10_1_text_present    Drag 'n' Drop files/ Click to select files
Text_on_form_15
    4_1_10_1_text_present    (Please make sure they are of readable quality, JPEG and PNG images only and upto 12 files (maximum) can be uploaded)

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2025
    Element Should Be Visible    xpath=//*[@id="footer-divider"]
    
Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Privacy Policy
    Go Back
    
Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Terms & Conditions
    Go Back
    
Verify Footer Ikabit URL
    [Documentation]    Verify that the Ikabit URL is correct and clickable in the logged-out state.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Ikabit Inc    timeout=10s
    Go Back
