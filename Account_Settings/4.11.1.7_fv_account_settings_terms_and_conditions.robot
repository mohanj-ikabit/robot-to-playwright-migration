*** Settings ***
Default Tags	  fvaccountsettings
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Suite Teardown    close all browsers

*** Variables ***
${ACCOUNT_SETTINGS_URL}     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings

*** Test Cases ***
App_Login
    login
    click element    xpath=//*[@href="/user/account-settings"]
    
#Goto_Account_Settings_URL
    #Open Chromefn    ${ACCOUNT_SETTINGS_URL}
    ##Open Browser    ${LOGIN URL}     ${BROWSER}
    ##Maximize Browser Window
    #wait until element is visible        xpath=//*[@id="panel1"]    10
    #SeleniumLibrary.Scroll Element Into View    xpath=//*[@class="panel5"]

Text_on_form
    4_1_10_1_text_present    Terms & Conditions

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

