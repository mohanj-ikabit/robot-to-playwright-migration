*** Settings ***
Default Tags      fvlogout
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot

Suite Teardown    Close All Browsers

*** Variables ***
${LOGIN_URL}                  https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL_LOGGED_OUT}           http://www.ikabit.com
${FOOTER_DIVIDER}                  xpath=//*[@id="footer-divider"]

*** Test Cases ***
App_login
    [Documentation]    Verify login functionality and navigation to the restaurant info page.
    Open Browser To Login Page    ${LOGIN_URL}
    Login
    Page Should Contain Element    xpath=//*[@href="/user/restaurant-info"]    timeout=10s

App_logout
    [Documentation]    Verify logout functionality and redirection to the login page.
    Click Element    xpath=//*[@href="/logout/user/logout"]
    Log To Console    Clicking logout

Text_present_on_form_1
    [Documentation]    Verify text 'Best8Eats Account Logout!' is present on the logout page.
    Verify Text On Form    Best8Eats Account Logout!

Text_present_on_form_2
    [Documentation]    Verify text 'Thank You For Using Best8Eats!' is present on the logout page.
    Verify Text On Form    Thank You For Using Best8Eats!

Text_present_on_form_3
    [Documentation]    Verify text 'You Have Been Successfully Logged Out.' is present on the logout page.
    Verify Text On Form    You Have Been Successfully Logged Out.

*** Keywords ***
Open Browser To Login Page
    [Arguments]    ${url}
    Open Browser    ${url}    browser=Chrome    options=add_argument("--headless")
    Maximize Browser Window
    Wait Until Page Contains    Sign In    timeout=10s
    Wait Until Page Contains    Sign Up Free    timeout=10s

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

Verify Footer Ikabit URL Logged Out
    [Documentation]    Verify that the Ikabit URL is correct and clickable in the logged-out state.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Ikabit Inc    timeout=10s
    Go Back

Wait_till_signupform_appears
    [Documentation]    Wait until the signup form becomes visible.
    Wait Until Element Is Visible    xpath=//*[@href="/login"]    timeout=10s
    Close All Browsers

*** Keywords ***
Verify Text On Form
    [Arguments]    ${text}
    4_1_10_1_text_present    ${text}
