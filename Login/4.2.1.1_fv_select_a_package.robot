*** Settings ***
Default Tags       fvselectpackage
Library            SeleniumLibrary
Library            FakerLibrary
Library            String
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/radio button.robot
Resource          ../Resource/Text on form.robot
Suite Teardown    Close All Browsers

*** Variables ***
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL_LOGGED_OUT}           http://www.ikabit.com
${FOOTER_DIVIDER}                  xpath=//*[@id="footer-divider"]

*** Test Cases ***
App_Login
    #This test checks for form validation of select a package 
    login pkg1
    GO TO    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/package-selection
    
#Verification_phone
    #${a}    Generate random string    1    0123456789
    #${b}    Generate random string    1    0123456789
    #${c}    Generate random string    1    0123456789
    #${d}    Generate random string    1    0123456789
    #${e}    Generate random string    1    0123456789
    #${f}    Generate random string    1    0123456789
    #log to console    inputting verification code as....${a}..${b}..${c}..${d}..${e}..${f}
    #Input text    xpath=//*[@id="dig1"]    ${a}
    #Input text    xpath=//*[@id="dig2"]    ${b}
    #Input text    xpath=//*[@id="dig3"]    ${c}
    #Input text    xpath=//*[@id="dig4"]    ${d}
    #Input text    xpath=//*[@id="dig5"]    ${e}
    #Input text    xpath=//*[@id="dig6"]    ${f}
    #click element    xpath=//*[@id="verifyPhoneNumber"]
    #wait until element is visible    xpath=//*[@id="verifyEmail"]
    
#verification_email
    #${a}    Generate random string    1    0123456789
    #${b}    Generate random string    1    0123456789
    #${c}    Generate random string    1    0123456789
    #${d}    Generate random string    1    0123456789
    #${e}    Generate random string    1    0123456789
    #${f}    Generate random string    1    0123456789
    #log to console    inputting verification code as....${a}..${b}..${c}..${d}..${e}..${f}
    #Input text    xpath=//*[@id="dig1"]    ${a}
    #Input text    xpath=//*[@id="dig2"]    ${b}
    #Input text    xpath=//*[@id="dig3"]    ${c}
    #Input text    xpath=//*[@id="dig4"]    ${d}
    #Input text    xpath=//*[@id="dig5"]    ${e}
    #Input text    xpath=//*[@id="dig6"]    ${f}
    #click element    xpath=//*[@id="verifyEmail"]
    #wait until element is visible    xpath=//*[@id="next"]

Select_pkg1_radio_button_default_selected1
    reload page
    4_1_9_2_radio_button_default_selected    package    Pkg1
Select_pkg1_radio_button_default_selected
    #Radio Button Should Be Set To    <group name>    <value>
    Radio Button Should Be Set To    package    Pkg1
Select_pkg1_radio_button_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    package    Pkg2    Pkg1
Select_pkg1_radio_button_assign_id_radio1
    Assign Id To Element    xpath=//*[@id="pkg1Radio"]    radio1
Select_pkg1_radio_button_radio1_enabled
    4_1_9_5_radio_button_default_state_enabled    pkg1
    
Select_pkg1_radio_button_assign_id_radio2
    Assign Id To Element    xpath=//*[@id="pkg2Radio"]  radio2
Select_pkg1_radio_button_radio2_enabled
    4_1_9_5_radio_button_default_state_enabled    pkg2
    
Select_pkg1_radio_button_assign_id_radio3
    Assign Id To Element    xpath=//*[@id="pkg3Radio"]    radio3
Select_pkg1_radio_button_radio3_enabled
    4_1_9_5_radio_button_default_state_enabled    pkg3
    
Select_pkg1_radio_button_state_enabled_Pkg1
    4_1_9_5_radio_button_default_state_enabled_using_value    Pkg1
Select_pkg1_radio_button_state_enabled_Pkg2
    4_1_9_5_radio_button_default_state_enabled_using_value    Pkg2
Select_pkg1_radio_button_state_enabled_Pkg3
    4_1_9_5_radio_button_default_state_enabled_using_value    Pkg3

Select_pkg1_radio_button_Pkg1_label
    4_1_9_7_radio_label     package1    Select Package 1
Select_pkg1_radio_button_Pkg2_label
    4_1_9_7_radio_label     package2    Select Package 2
Select_pkg1_radio_button_Pkg3_label
    4_1_9_7_radio_label     package3    Select Package 3

Select_radio_button_Pkg2
    Select radio button 	package    Pkg2
Select_pkg2_ddl_loc2_get_text
    #dropdown validation
    ${d}    get text    xpath=//*[@id="locations2"]
    should be equal as strings    ${d}   2
    log to console    label for location 2 is ............... ${d} 
#Select_pkg2_ddl_loc2_label
    #4_1_6_11_DDL_LB_field_label   locations2   \#Locations\:
Select_pkg2_ddl_loc2_default
    click element    xpath=//*[@id="locations2"]
    #4_1_6_1_DDL_LB_Default    //*[@id="locations2"]    //*[@id="menu-locations2"]/div[3]/ul
    4_1_6_1_DDL_LB_Default    locations2
Select_pkg2_ddl_loc2_value_list
    click element    xpath=//*[@id="locations2"]
    4_1_6_2_DDL_LB_value_list    locations2
Select_pkg2_ddl_loc2_select_value
    click element    xpath=//*[@id="locations2"]
    #4_1_6_3_DDL_LB_select_value     //*[@id="locations2"]    //*[@id="menu-locations2"]/div[3]/ul/li[5]
    4_1_6_3_DDL_LB_select_value     locations2
Select_pkg2_ddl_loc2_view_size
    click element    xpath=//*[@id="locations2"]
    4_1_6_7_DDL_LB_view_size    locations2
Select_pkg2_ddl_loc2_no_multi_selection
    click element    xpath=//*[@id="locations2"]
    #4_1_6_9_DDL_no_multi_selection    //*[@id="locations2"]    //*[@id="menu-locations2"]/div[3]/ul/li[5]
    #4_1_6_9_DDL_no_multi_selection    locations2
    4_1_6_9_DDL_no_multi_selection     locations2
    reload page    

Select_radio_button_Pkg3
    Select radio button 	package    Pkg3
Select_pkg3_ddl_loc3_get_text
    ${d}    get text    xpath=//*[@id="locations3"]
    should be equal as strings    ${d}   3
    log to console    label for location 3 is ............... ${d}
#Select_pkg3_ddl_loc3_label
    #4_1_6_11_DDL_LB_field_label   locations3    \#Locations\:
Select_pkg3_ddl_loc3_default
    reload page
    click element    xpath=//*[@id="locations3"]
#4_1_6_1_DDL_LB_Default    //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul
    4_1_6_1_DDL_LB_Default   location3
Select_pkg3_ddl_loc3_value_list
    click element    xpath=//*[@id="locations3"]
    4_1_6_2_DDL_LB_value_list   locations3 
Select_pkg3_ddl_loc3_select_value
    click element    xpath=//*[@id="locations3"]
    #4_1_6_3_DDL_LB_select_value     //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul/li[5]
    4_1_6_3_DDL_LB_select_value    locations3 
Select_pkg3_ddl_loc3_view_size
    click element    xpath=//*[@id="locations3"]
    4_1_6_7_DDL_LB_view_size    locations3
Select_pkg3_ddl_loc3_no_multi_selection
    click element    xpath=//*[@id="locations3"]
    #4_1_6_9_DDL_no_multi_selection    //*[@id="locations3"]    //*[@id="menu-locations3"]/div[3]/ul/li[5] 
    #4_1_6_9_DDL_no_multi_selection    locations3
    4_1_6_9_DDL_no_multi_selection    locations3
    reload page

button_next_rightname
    4_1_4_1_button_rightname_new    next    CLICK NEXT TO CONTINUE
button_next_active
    4_1_4_2_button_active    next
button_next_attribute_type
    4_1_4_6_button_attribute    next    type    button

Text_on_form_1
    reload page
    4_1_10_1_text_present    Select a Package - Get 60 Days Free!
Text_on_form_2
    4_1_10_1_text_present    (Take a look at some of our best offers)
Text_on_form_3
    4_1_10_1_text_present    Total Cost: $
Text_on_form_4
    4_1_10_1_text_present    PACKAGE 1
Text_on_form_5
    4_1_10_1_text_present    MOST POPULAR
Text_on_form_6
    4_1_10_1_text_present    Best suited for restaurant with a single location
Text_on_form_7
    4_1_10_1_text_present    Upto 4 phone app logins free*
Text_on_form_8
    4_1_10_1_text_present    PACKAGE 2
Text_on_form_9
    4_1_10_1_text_present    Restaurant With Multiple Locations (Same Menus, Different Locations)
Text_on_form_10
    4_1_10_1_text_present    Pick The Number Of Locations Below To See Pricing
Text_on_form_11
    4_1_10_1_text_present    Upto 4 phone app logins free per location*
Text_on_form_12
    4_1_10_1_text_present    PACKAGE 3
Text_on_form_13
    4_1_10_1_text_present    Group Of Restaurants - Multiple Restaurants Under One Ownership (Different Locations, Different Menus)
Text_on_form_14
    4_1_10_1_text_present    Pick The Number Of Locations Below To See Pricing
Text_on_form_15
    4_1_10_1_text_present    Upto 4 phone app logins free per location*
    
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

Verify Footer Ikabit URL Logged Out
    [Documentation]    Verify that the Ikabit URL is correct and clickable in the logged-out state.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Ikabit Inc
    Go Back

Logout
    [Documentation]    Log out the user if logged in.
    Run Keyword And Ignore Error    Click Element    xpath=//*[@href="/logout/user/logout"]
    Wait Until Element Is Visible    xpath=//*[@href="/login"]    timeout=15s
    Log To Console    Logout successful
    
    close all browsers

