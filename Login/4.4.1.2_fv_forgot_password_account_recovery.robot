*** Settings ***
Default Tags      fvforgotpwd
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

*** Test Cases ***
App_login
    [Documentation]    Navigate to the Forgot Password page.
    login loginpage
    Wait Until Element Is Visible    xpath=//*[@href="/need-help-sign-in"]    10
    Click Element                     xpath=//*[@href="/need-help-sign-in"]
    Wait Until Element Is Visible    xpath=//*[@id="forgot-password"]    10
    Click Element                    xpath=//*[@id="forgot-password"]

Login_ID_wrong_format
    [Documentation]    Verify that invalid email formats are rejected.
    4_1_2_1_email_ID_wrong_format    email

Login_ID_right_format
    [Documentation]    Verify that valid email formats are accepted.
    4_1_2_2_email_ID_right_format    email

Login_ID_default_value
    [Documentation]    Verify the default value of the email field.
    4_1_2_3_email_ID_default_value    email    ${EMPTY}

Login_ID_default_value_forlabel
    [Documentation]    Verify the label for the email field.
    4_1_2_3_email_ID_default_value    email-label    Login Id*

button_next_rightname
    [Documentation]    Verify the 'NEXT' button has the correct name.
    4_1_4_1_button_rightname_new    submit    NEXT

button_next_attribute_type
    [Documentation]    Verify the 'NEXT' button has the correct type attribute.
    4_1_4_6_button_attribute        submit    type    button

button_back_login_rightname
    [Documentation]    Verify the 'BACK TO LOGIN' button has the correct name.
    4_1_4_1_button_rightname_new    back-login    arrow_back\nBACK TO LOGIN

button_back_login_active
    [Documentation]    Verify the 'BACK TO LOGIN' button is active.
    4_1_4_2_button_active           back-login

Text_on_form_1
    [Documentation]    Verify the presence of 'Forgot Password' text on the form.
    4_1_10_1_text_present    Forgot Password

Text_on_form_2
    [Documentation]    Verify the presence of instructions for entering the login ID.
    4_1_10_1_text_present    To reset password, Please enter Login ID associated with your login.

Text_on_form_3
    [Documentation]    Verify the presence of 'Account Recovery' text on the form.
    4_1_10_1_text_present    Account Recovery

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
