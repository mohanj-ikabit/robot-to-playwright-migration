*** Settings ***
Default tags      fvviewallmenuitems
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
App_login
    login pkg1
    
GoTo_ViewAllMenuItems
   
    [Documentation]    Navigate to All Menu Items page.
    click element    xpath=//a[@id='viewAllMenuItems']
    

Text_on_form_1
    4_1_10_1_text_present    (Click On the Menu Item To View Details)
Text_on_form_2
    4_1_10_1_text_present    ALCOHOLIC BEVERAGES
Text_on_form_3
    4_1_10_1_text_present    NON-ALCOHOLIC BEVERAGES

#Dishes appearing here vary according to the data added in the tests

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2022
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
