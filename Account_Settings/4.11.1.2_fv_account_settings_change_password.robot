*** Settings ***
Default Tags    fvchangepwd
Library    SeleniumLibrary
Library    String
Resource   ../Resource/button.robot
Resource   ../Resource/dropdownlist.robot
Resource    ../Resource/dropdown.robot
Resource   ../Resource/genericfunctions.robot
Resource   ../Resource/numericalvalue.robot
Resource   ../Resource/textfield.robot
Resource   ../Resource/Checkbox.robot
Resource    ../Resource/Text on form.robot
Resource    ../Resource/date.robot
Resource    ../Resource/Email ID.robot

Suite Teardown    close all browsers

*** Test Cases ***
App_Login
    #login createuser
    #go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings
    login
    click element    xpath=//*[@href="/user/account-settings"]
Click_panel2
    click element    xpath=//*[@id="panel2"]
Wait_until_newpassword_is_visble
    wait until element is visible    xpath=//*[@id="newPassword"]
    
New_Password_text_notnull
    4_1_1_1_text_notnull    newPassword
New_Password_text_splchar_allowed
    4_1_1_2_text_splchar_allowed      newPassword
New_Password_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    newPassword
New_Password_text_minlength
    4_1_1_6_text_minlength    newPassword     zaaaaaaa
New_Password_text_maxlength
    4_1_1_7_text_maxlength    newPassword     Like*any&o(*&(&*
New_Password_text_pastable
    4_1_1_9_text_pastable    newPassword
New_Password_text_spacebefore
    4_1_1_11_text_spacebefore    newPassword
New_Password_text_spaceafter
    4_1_1_12_text_spaceafter    newPassword
New_Password_text_default_value
    4_1_1_14_text_field_default_value    newPassword    ${EMPTY}
New_Password_text_default_value_forlabel
    4_1_1_14_text_field_default_value    newPassword-label    Enter New Password*
New_Password_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    newPassword
    
#to test confirm password error	  
Confirm_New_Password_text_notnull
    #confirm password mismatch should show appropriate error should be a functional test case
    4_1_1_1_text_notnull    confirmPassword
Confirm_New_Password_text_pastable
    4_1_1_9_text_pastable    confirmPassword
Confirm_New_Password_text_spacebefore
    4_1_1_11_text_spacebefore    confirmPassword
Confirm_New_Password_text_spaceafter
    4_1_1_12_text_spaceafter    confirmPassword
Confirm_New_Password_text_nosuggestions
    4_1_1_13_test nosuggestions    confirmPassword
Confirm_New_Password_text_default_value
    4_1_1_14_text_field_default_value    confirmPassword    ${EMPTY}
Confirm_New_Password_text_default_value_forlabel
    4_1_1_14_text_field_default_value    confirmPassword-label    Confirm New Password*
Confirm_New_Password_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    confirmPassword

Scroll_element_into_view_save2
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save2"]
button_save_rightname_new
    4_1_4_1_button_rightname_new    save2    SAVE
button_save_active
    4_1_4_2_button_active    save2
button_save_attribute_type
    4_1_4_6_button_attribute    save2    type    button
#attribute label doesn't fetch the name of the button. use rightname_new.
#button_save_attribute_label
    #4_1_4_6_button_attribute    save2    label     SAVE

button_cancel_rightname_new
    4_1_4_1_button_rightname_new    cancel2    CANCEL
button_cancel_active
    4_1_4_2_button_active    cancel2
button_cancel_attribute_type
    4_1_4_6_button_attribute    cancel2    type    button
#attribute label doesn't fetch the name of the button. use rightname_new.
#button_cancel_attribute_label
    #4_1_4_6_button_attribute    cancel2    label    CANCEL



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
    
