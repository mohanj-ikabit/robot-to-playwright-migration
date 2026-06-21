*** Settings ***
Default tags        fvhelp
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Text on form.robot
Suite teardown    close all browsers

*** Test Cases ***
App_login
    [Documentation]    Verify navigation to the help page and visibility of elements.
    Login loginpage
    Log To Console    Navigating to the help page and verifying 'Retrieve Restaurant ID' visibility.
    Click Element    xpath=//*[@id="help-page"]
    Wait Until Element Is Visible    xpath=//*[@id="retrieveRestaurantID1"]    timeout=9s
   
retrieveRestaurantID1_rightname
    [Documentation]    Verify that the 'Retrieve Restaurant ID' button has the correct label.
    4_1_4_1_button_rightname_new    retrieveRestaurantID1    PLEASE CLICK HERE TO RETRIEVE YOUR RESTAURANT ID
    
retrieveRestaurantID1_clickActive
    [Documentation]    Verify that the 'Retrieve Restaurant ID' button is enabled.
    Element Should Be Enabled    retrieveRestaurantID1
retrieveRestaurantID1_clickhref
    Click element	xpath=//*[@href="#text-buttons"][@id="retrieveRestaurantID1"]
    Go Back
 
retrieveRestaurantID2_rightname
    #4_1_3_1_link_rightName       retrieveRestaurantID2    PLEASE CLICK HERE TO RETRIEVE YOUR RESTAURANT ID
    4_1_4_1_button_rightname_new       retrieveRestaurantID2    PLEASE CLICK HERE TO RETRIEVE YOUR RESTAURANT ID
retrieveRestaurantID2_clickActive 
    #4_1_3_4_link_clickActive     retrieveRestaurantID2
    Element Should Be Enabled     retrieveRestaurantID2
retrieveRestaurantID2_clickhref
    Click element	xpath=//*[@href="#text-buttons"][@id="retrieveRestaurantID2"]
    Go Back

button_back_to_login_rightname
    4_1_4_1_button_rightname_new   button-help-page-back-login    arrow_back\nBACK TO LOGIN

button_back_to_login_active
    element should be enabled    xpath=//*[@href="/login"][@id="button-help-page-back-login"]
    4_1_4_2_button_active    button-help-page-back-login
#This is an an href
#button_back_to_login_attribute
    #4_1_4_6_button_attribute    button-help-page-back-login    type   button
    
Text_on_form_1
    4_1_10_1_text_present    Help Page
Text_on_form_2
    4_1_10_1_text_present    How Do I Find My Restaurant ID?
Text_on_form_3
    4_1_10_1_text_present    The Restaurant ID is the ID assigned to you when you first signed up. Please refer to your Welcome Email! to retrieve your ID
Text_on_form_4
    4_1_10_1_text_present    I Have Lost My Welcome Email, How Do I Find My Restaurant ID ?
Text_on_form_5
    4_1_10_1_text_present    How Do I Sign Up For My Free Month ?

Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions    timeout=10s
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2022    timeout=10s
    Element Should Be Visible    ${FOOTER_DIVIDER}

Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy    timeout=10s
    Click Link    link=Privacy Policy
    Go Back

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Terms & Conditions
    Go Back


    close all browsers
