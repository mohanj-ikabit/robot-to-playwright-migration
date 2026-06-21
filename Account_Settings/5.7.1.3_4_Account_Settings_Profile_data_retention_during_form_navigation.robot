*** Settings ***
Default Tags      profile
Library           SeleniumLibrary
#Library           FakerLibrary    locale=en_US
Library           String
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

*** Variables ***
${ACCOUNT_SETTINGS_URL}     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings

*** Test Cases ***
5.7.1.3_account_settings_profile_data_retention_during_form_navigation_reload_page
    #[Tags]   pass
    login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile

    #Get older values of the Profile
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}

    Reload Page
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Reload Page
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    
    #Verify that the new data entered above is the same as original data
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}

    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${first_name}
    Should be equal as strings    ${last_name2}    ${last_name}
    ${isdateequal}=   Run Keyword And Return Status   Should Be Equal   ${dob2}   ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=   Run Keyword And Return Status   Should Be Equal   ${phone_number2}   ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'   Log To Console   Test Passed
    
    close browser
    
5.7.1.3_account_settings_profile_data_retention_during_form_navigation_expand_collapse_section
    #[Tags]   pass
    Login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile

    #Get older values of the Profile
    #${first_name}=    get text    xpath=//*[@id="firstName"]
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #${last_name}=     get text    xpath=//*[@id="lastName"]
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    
    #${dobx}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    #${phone_number}     Get Value    xpath=//*[@id="phone"]
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}
    
    #Enter new data for the profile
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_first_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="firstName"]    ${new_first_name}
    
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_last_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="lastName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="lastName"]    ${new_last_name}
    
    #${new_dob}    Get Current Date
    #Input Text    xpath=//*[@id="dateBirth"]    ${new_dob}
    
    #${new_phone_number}    Number    10
    #Input Text    xpath=//*[@id="phone"]    ${new_phone_number}
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +1 (916) 111-2222
    ${new_phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Should be equal as strings    ${new_phone_number}    +1 (916) 111-2222
    
    #Collapse & Expand the Profile section a few times.
    Click Element    xpath=//*[@id="panel1"]
    Click Element    xpath=//*[@id="panel1"]
    Click Element    xpath=//*[@id="panel1"]
    Click Element    xpath=//*[@id="panel1"]
    
    #Verify that the new data entered above is still displayed on the form
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${new_first_name}
    Should be equal as strings    ${last_name2}    ${new_last_name}
    ${isdateequal}=   Run Keyword And Return Status   Should Be Equal   ${dob2}   ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=   Run Keyword And Return Status   Should Be Equal   ${phone_number2}   ${new_phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'   Log To Console   Test Passed
    
    close browser
    
5.7.1.3_account_settings_profile_data_retention_during_form_navigation_cancel
    #[Tags]   pass
    #Test data - Edit Profile, Click Go Back to navigate to previous form, Click No to save unsaved data when popup is displayed, User is navigated to previous form
    Login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile

    #1. Test data retention in case of editing Profile, Selecting NO to save any edits when trying to navigate to Admin Settings.
    #Get older values of the Profile
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}
    
    #Enter new data for the profile
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_first_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="firstName"]    ${new_first_name}
    
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_last_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="lastName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="lastName"]    ${new_last_name}
    
    #${new_dob}    Get Current Date
    #Input Text    xpath=//*[@id="dateBirth"]    ${new_dob}
    
    #${new_phone_number}    Number    10
    #Input Text    xpath=//*[@id="phone"]    ${new_phone_number}
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +1 (916) 111-2222
    ${new_phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Should be equal as strings    ${new_phone_number}    +1 (916) 111-2222

    #Try to navigate to Admin Settings. Verify that a popup is displayed, and the ids for X icon to close popup, Yes & No button are present, and the text is as expected.
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    
    #Click No for the popup. User will be navigated to Admin Settings.
    Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    Wait Until Page Contains    Permissions & Approvals
    #Wait Until Page Contains Element    /user/admin-settings/subscription-billing
    
    #Navigate back to Account Settings
    Click Element     xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    
    #Verify that the edited data entered on the Account Settings form is not retained, and the original data from the DB is displayed
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${first_name}
    Should be equal as strings    ${last_name2}    ${last_name}
    ${isdateequal}=    Run Keyword And Return Status    Should Be Equal   ${dob2}   ${dob} 
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=   Run Keyword And Return Status   Should Be Equal   ${phone_number2}   ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'   Log To Console   Test Passed
    
    close browser
    
5.7.1.4_account_settings_profile_data_retention_during_form_navigation_save
    #[Tags]   pass
    #Test data - Edit Profile, Click Admin Settings to navigate there, Click Yes to save unsaved data when popup is displayed
    Login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile

    #Get older values of the Profile
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}
    
    #Enter new data for the profile
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_first_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="firstName"]    ${new_first_name}
    
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_last_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="lastName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="lastName"]    ${new_last_name}
    
    #${new_dob}    Get Current Date
    #Input Text    xpath=//*[@id="dateBirth"]    ${new_dob}
    
    #${new_phone_number}    Number    10
    #Input Text    xpath=//*[@id="phone"]    ${new_phone_number}
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +1 (916) 111-2222
    ${new_phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Should be equal as strings    ${new_phone_number}    +1 (916) 111-2222

    #Try to navigate to Admin Settings. Verify that a popup is displayed, and the ids for X icon to close popup, Yes & No button are present, and the text is as expected.
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    
    #Click Yes for the popup. The popup will close. The user will continue to be on the form Account Settings.
    Click Button    xpath=//*[@id="yesPopUpCancelChanges1"]
    Wait Until Page Contains    Profile
    Wait Until Element Is Visible     xpath=//*[@id="firstName"]    10
        
    #Verify that the edited data entered on the Account Settings form is retained
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${new_first_name}
    Should be equal as strings    ${last_name2}    ${new_last_name}
    ${isdateequal}=    Run Keyword And Return Status    Should Be Equal   ${dob2}   ${dob} 
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=   Run Keyword And Return Status   Should Be Equal   ${phone_number2}   ${new_phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'   Log To Console   Test Passed

    close browser
