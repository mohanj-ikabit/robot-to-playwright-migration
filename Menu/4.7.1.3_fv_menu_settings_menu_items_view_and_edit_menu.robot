*** Settings ***
Default Tags      fvvieweditmenu
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/radio button.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot

*** Test Cases ***
App_Login
    login pkg1

GoTo_ViewEditMenu
    Click element    xpath=//*[@href="/user/menu-settings"]
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    Click element    xpath=//*[@href="/user/menu-settings/menu-items/view-menu"]
    
    
button_finalize_view_next_menu_rightname
    4_1_4_1_button_rightname_new    finalize-next-menu    Finalize & View Next Menu
button_finalize_view_next_menu_active
    4_1_4_2_button_active    finalize-next-menu
button_finalize_view_next_menu_attribute_type
    4_1_4_6_button_attribute    finalize-next-menu   type    button
    
button_finish_ready_to_launch_rightname
    4_1_4_1_button_rightname_new    finish-ready-to-launch   Finish/Ready To Launch
button_finish_ready_to_launch_active
    4_1_4_2_button_active    finish-ready-to-launch
button_finish_ready_to_launch_attribute_type
    4_1_4_6_button_attribute   finish-ready-to-launch   type    button
    
Text_on_form_1
    4_1_10_1_text_present    View & Finalize Menu
Text_on_form_2
    4_1_10_1_text_present    Please Pick a Menu To View

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
    close all browsers

     
