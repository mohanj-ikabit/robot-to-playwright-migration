*** Settings ***
default tags    fvtrybuy_confirmation
Library    SeleniumLibrary
Resource   ../Resource/button.robot
Resource   ../Resource/dropdownlist.robot
Resource   ../Resource/genericfunctions.robot
Resource   ../Resource/numericalvalue.robot
Resource   ../Resource/textfield.robot
Resource   ../Resource/Text on form.robot
Suite Teardown    close all browsers

*** Variables ***
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL_LOGGED_OUT}           https://www.ikabit.com
${FOOTER_DIVIDER}                  xpath=//*[@id="footer-divider"]

*** Test Cases ***

#button validation
button
    login front
    #Assign Id To Element    xpath=//*[@id="home"]/div[1]/div/div/div[2]/div/div/div[2]/button/span[1]    getstarted
    #Assign Id To Element    xpath=//*[@id="home"]/div[1]/div/div/div[4]/div/button/span[1]    watch
    #success text is as required
    
    login createuser
    GO TO    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/confirmation-code

button_login_toget_started_rightname
    4_1_4_1_button_rightname_new     next   LOGIN TO GET STARTED
button_login_toget_started_active
    4_1_4_2_button_active    next
button_login_toget_started_attribute_type
    4_1_4_6_button_attribute    next   type   button
    
Text_on_form_1
    4_1_10_1_text_present    Best8Eats Account Creation Confirmation!
Text_on_form_2
    4_1_10_1_text_present    Thank You for Using Best8Eats App!
Text_on_form_3
    4_1_10_1_text_present    uccess - Your Account Has Been Created. Please Check Your Email For Payment Confirmation & Login Details.
Text_on_form_4
    4_1_10_1_text_present    Confirmation Number

confirmation_code_present
    Page Should Contain Element    xpath=//*[@id="confCode"]
    
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
