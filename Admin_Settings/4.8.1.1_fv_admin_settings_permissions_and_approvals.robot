*** Settings ***
Default Tags	  fvadminsettings_perms_appr
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
${ADMIN_SETTINGS_PERMS_APPRV_URL}     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/permission-approvals

*** Test Cases ***
App_login
    login pkg1
goto_Permissions_Approvals
    click element    xpath=//*[@href="/user/admin-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="panel1-header"]    10

Approvals_text_on_form_1
    4_1_10_1_text_present    First Name
Approvals_text_on_form_2
    4_1_10_1_text_present    Last Name
Approvals_text_on_form_3
    4_1_10_1_text_present    Designation
Approvals_text_on_form_4
    4_1_10_1_text_present    Associated Restaurant
Approvals_text_on_form_5
    4_1_10_1_text_present    Modify Restaurant Info?
Approvals_text_on_form_6
    4_1_10_1_text_present    Modify Menu?
Approvals_text_on_form_7
    4_1_10_1_text_present    Approve Personnel Logins?
Approvals_text_on_form_8
    4_1_10_1_text_present    App Access?
Approvals_text_on_form_9
    4_1_10_1_text_present    Approve?

Permissions_Panel_should_be_visible
    #Permissions Table (panel2), Save Changes button should be visible.
    Element Should Be Visible      xpath=//*[@id="panel2-header"]
button_save_changes_should_be_visible
    Element Should Be Visible      xpath=//*[@id="saveChanges"]

Approvals_collapse
    #Approvals Needed is in expanded state by default. Collapse Approvals.
    Click Element    xpath=//*[@id="panel1-header"]

Permissions_Panel_should_be_visible
    #Permissions Table (panel2), Save Changes button should be visible.
    Element Should Be Visible      xpath=//*[@id="panel2-header"]
button_save_changes_should_be_visible
    Element Should Be Visible      xpath=//*[@id="saveChanges"]
    
Approvals_expand_collapse_expand
    Click Element    xpath=//*[@id="panel1-header"]
    Click Element    xpath=//*[@id="panel1-header"]
    Click Element    xpath=//*[@id="panel1-header"]
    
Approvals_text_on_form_1
    4_1_10_1_text_present    First Name
Approvals_text_on_form_2
    4_1_10_1_text_present    Last Name
Approvals_text_on_form_3
    4_1_10_1_text_present    Designation
Approvals_text_on_form_4
    4_1_10_1_text_present    Associated Restaurant
Approvals_text_on_form_5
    4_1_10_1_text_present    Modify Restaurant Info?
Approvals_text_on_form_6
    4_1_10_1_text_present    Modify Menu?
Approvals_text_on_form_7
    4_1_10_1_text_present    Approve Personnel Logins?
Approvals_text_on_form_8
    4_1_10_1_text_present    App Access?
Approvals_text_on_form_9
    4_1_10_1_text_present    Approve?
    
    #Validate APPROVE button(s) in Functional test. Those will only be there is there are any users present on this form.
 
Permissions_expand
    #Permissions Table is in collapsed state by default. Expand Permissions Table.
    Click Element    xpath=//*[@id="panel2-header"]
    #Elements of Approvals Needed should not be visible anymore after collapsing it
Permissions_Table_text_on_form_1
    4_1_10_1_text_present       First Name
Permissions_Table_text_on_form_2
    4_1_10_1_text_present       Last Name
Permissions_Table_text_on_form_3
    4_1_10_1_text_present       Designation
Permissions_Table_text_on_form_4
    4_1_10_1_text_present       Associated Restaurant
Permissions_Table_text_on_form_5
    4_1_10_1_text_present       Modify Restaurant Info?
Permissions_Table_text_on_form_6
    4_1_10_1_text_present       Modify Menu?
Permissions_Table_text_on_form_7
    4_1_10_1_text_present       Approve Personnel Logins?
Permissions_Table_text_on_form_8
    4_1_10_1_text_present       App Access?
Permissions_Table_text_on_form_9
    4_1_10_1_text_present       Delete User

Approvals_panel_should_be_visible
    Element Should Be Visible      xpath=//*[@id="panel1-header"]
Permissions_panel_should_be_visible
     Element Should Be Visible      xpath=//*[@id="panel2-header"]
Scroll_to_button_save
     Scroll Element Into View     xpath=//*[@id="saveChanges"]   
button_save_changes_should_be_visible
    Element Should Be Visible      xpath=//*[@id="saveChanges"]

Scroll_to_Permissions_panel
    Scroll Element Into View     xpath=//*[@id="panel2-header"]
Permissions_collapse_expand
    Click Element    xpath=//*[@id="panel2-header"]
    Click Element    xpath=//*[@id="panel2-header"]

Permissions_Table_text_on_form_1
    4_1_10_1_text_present       First Name
Permissions_Table_text_on_form_2
    4_1_10_1_text_present       Last Name
Permissions_Table_text_on_form_3
    4_1_10_1_text_present       Designation
Permissions_Table_text_on_form_4
    4_1_10_1_text_present       Associated Restaurant
Permissions_Table_text_on_form_5
    4_1_10_1_text_present       Modify Restaurant Info?
Permissions_Table_text_on_form_6
    4_1_10_1_text_present       Modify Menu?
Permissions_Table_text_on_form_7
    4_1_10_1_text_present       Approve Personnel Logins?
Permissions_Table_text_on_form_8
    4_1_10_1_text_present       App Access?
Permissions_Table_text_on_form_9
    4_1_10_1_text_present       Delete User
    
#Validate delete icon in Functional test. Delete icon will only be there is there are any users present on the form.

Text_on_form_1
    4_1_10_1_text_present    Your Best8Eats Admin Settings
Text_on_form_2
    4_1_10_1_text_present    Permissions & Approvals

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
