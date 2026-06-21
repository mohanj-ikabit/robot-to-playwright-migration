*** Settings ***
Default Tags      fvrestlogo
Library           SeleniumLibrary
Library            AutoItLibrary
Resource          ../Resource/Text on form.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Library           String
Library           Collections
Library           OperatingSystem
Library           AutoItLibrary
Suite Teardown    close all browsers

#Library           ExcelLibrary    #Library    ../../../../../../../../../Python27/Scripts/XlsxLibrary.py

*** Test Cases ***
App_Login
   login pkg1
    
GoTo_RestaurantInfo_Logo_Tagline
    click element    xpath=//*[@href="/user/restaurant-info"]
    click element    xpath=//*[@href="/user/restaurant-info/aesthetics"]
    
Text_present_on_form_1
    4_1_10_1_text_present    Restaurant Info
Text_present_on_form_2
    4_1_10_1_text_present    Please give us some details about your restaurant!
Text_present_on_form_3    
    4_1_10_1_text_present    Your Restaurant Logo
Text_present_on_form_6    
    4_1_10_1_text_present    Picture Of Your Restaurant
Text_present_on_form_9    
    4_1_10_1_text_present    Do You Have A Restaurant Tagline?
Text_present_on_form_4    
    4_1_10_1_text_present    Would you like to upload a logo for your restaurant?
Text_present_on_form_5    
    4_1_10_1_text_present    (JPEG and PNG images only, size 200px*200px dimensions)
Text_present_on_form_7    
    4_1_10_1_text_present    Would you like to upload a picture of your restaurant?
Text_present_on_form_8    
    4_1_10_1_text_present    (JPEG and PNG images only, size 200px*200px dimensions)
    
Restaurant_tagline_splchar
    4_1_1_2_text_splchar_allowed	tagline
Restaurant_tagline_numbers
    4_1_1_4_text_numbers_allowed	tagline
Restaurant_tagline_minlength
    4_1_1_6_text_minlength_new    tagline     5
#Restaurant_tagline_maxlength
    #4_1_1_7_text_maxlength    tagline     Like any other socia
Restaurant_tagline_maxlength_new
    4_1_1_7_text_maxlength_new   tagline   80
    #Max len > 80 should fail as expected and test will continue
Restaurant_tagline_maxlength_plus_one
    4_1_1_7_text_maxlength_new   tagline   81
Restaurant_tagline_pastable
    4_1_1_9_text_pastable	tagline
Restaurant_tagline_spacebefore
    4_1_1_11_text_spacebefore    tagline   
Restaurant_tagline_spaceafter
    4_1_1_12_text_spaceafter    tagline
Restaurant_tagline_default_value
    4_1_1_14_text_field_default_value    tagline    ${EMPTY}
Restaurant_tagline_default_value_enabled
    4_1_1_15_text_field_default_state_enabled    tagline
Restaurant_tagline_tagline_label
    4_1_1_17_text_field_label    tagline-label    Enter Tagline
    
button-clickToContinue_rightname_new
    4_1_4_1_button_rightname_new    clickToContinue    CLICK TO CONTINUE
button_clickToContinue_active
    4_1_4_2_button_active    clickToContinue
button_clickToContinue_attribute_type
    4_1_4_6_button_attribute    clickToContinue   type    button
    
button_goBack_rightname_new
    4_1_4_1_button_rightname_new    goBack    GO BACK
button_goBack_active
    4_1_4_2_button_active    goBack
button_goBack_attribute_type
    4_1_4_6_button_attribute    goBack   type    button

File_upload_visible
    Element Should Be Visible       xpath=//*[@id="drag-drop-image"]
File_upload_enabled
    Element Should Be Enabled       xpath=//*[@id="drag-drop-image"]

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions    timeout=10s
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2024    timeout=10s
    Element Should Be Visible    ${FOOTER_DIVIDER}

Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy    timeout=10s
    Go Back

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Terms & Conditions    timeout=10s
    Go Back

Verify Footer Ikabit URL 
    [Documentation]    Verify that the Ikabit URL is correct and clickable in the logged-out state.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Ikabit Inc    timeout=10s
    Go Back
    close all browsers
