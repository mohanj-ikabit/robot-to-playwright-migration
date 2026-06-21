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
5.7.1.1_account_settings_profile_save
    #[Tags]   pass
   
    login pkg1
    Page Should Contain       Account Settings
    sleep   1s
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile

    #Save the new data
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]

    #Get older values of the Profile
   
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #Click Element    xpath=//*[@id="lastName"]
    #${last_name}=     get text    xpath=//*[@id="lastName"]
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    
    #Click Element    xpath=//*[@id="dateBirth"]
    #${dobx}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}
    
    
    Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_first_name}    Set Variable    ${string}
    Input Text    xpath=//*[@id="firstName"]    ${new_first_name}
    
    #${new_last_name}    Text    40
    Press Keys  xpath=//*[@id="lastName"]  CTRL+a  BACKSPACE
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_last_name}    Set Variable    ${string}
    Input Text    xpath=//*[@id="lastName"]    ${new_last_name}
    
   

    #Save the new data
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Not Contain    Field cannot be Empty
    Page Should Not Contain    Field cannot be Empty, Numbers Only!

    #Logout. Login. Verify the new data entered above, is displayed in the profile now
    logout
    Login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile

    #Get values of the profile fields
    
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
   
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
        
 
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    
    
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${new_first_name}
    Should be equal as strings    ${last_name2}    ${new_last_name}
    #Should contain    ${new_dob}    ${dob}
    ${isdateequal}=   Run Keyword And Return Status   Should Be Equal   ${dob2}   ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=   Run Keyword And Return Status   Should Be Equal   ${phone_number2}   ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'   Log To Console   Test Passed

    
     Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="firstName"]    grapp
    ${first_name3}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    Should be equal as strings    ${first_name3}    grapp
     Press Keys  xpath=//*[@id="lastName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="lastName"]    user17
    ${last_name3}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    Should be equal as strings    ${last_name3}    user17
    
    #Click Save without editing any fields, no errors should be reported. #GRA-1580
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Not Contain    Field cannot be Empty
    Page Should Not Contain    Field cannot be Empty, Numbers Only!
    Page Should Not Contain Element    xpath=//*[@id="firstName-helper-text"]
    Page Should Not Contain Element    xpath=//*[@id="lastName-helper-text"]
    #Page Should Not Contain Element    xpath=//*[@id="errorPhoneInput"]
    #Element Should Be Disabled    xpath=//*[@id="errorPhoneInput"]
    
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Not Contain    Field cannot be Empty
    Page Should Not Contain    Field cannot be Empty, Numbers Only!
    Page Should Not Contain Element    xpath=//*[@id="firstName-helper-text"]
    Page Should Not Contain Element    xpath=//*[@id="lastName-helper-text"]
    #Page Should Not Contain Element    xpath=//*[@id="errorPhoneInput"]
    #Element Should Be Disabled    xpath=//*[@id="errorPhoneInput"]
    
    #Without making any changes on the form, user should be able to navigate to another form, and come back to Account Settings without any popup in between
    click element            xpath=//*[@href="/user/admin-settings"]
    Wait Until Page Contains      Permissions & Approvals

    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    
    #Reload Page and verify that no errors are visible on the form
    Reload Page
    Reload Page
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Not Contain    Field cannot be Empty
    Page Should Not Contain    Field cannot be Empty, Numbers Only!
    Page Should Not Contain Element    xpath=//*[@id="firstName-helper-text"]
    Page Should Not Contain Element    xpath=//*[@id="lastName-helper-text"]
    
    close browser
    
*** Test Cases ***
5.7.1.2_account_settings_profile_cancel
    #[Tags]   pass
    login pkg1
    Page Should Contain       Account Settings
    sleep   1s
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10

    #Get older values of the Profile
    #Click Element    xpath=//*[@id="firstName"]
    #${first_name}=    get text    xpath=//*[@id="firstName"]
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #Click Element    xpath=//*[@id="lastName"]
    #${last_name}=     get text    xpath=//*[@id="lastName"]
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    
    #Click Element    xpath=//*[@id="dateBirth"]
    #${dobx}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    #Click Element    xpath=//*[@id="phone"]
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
    
    
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +1 (916) 111-2222
    ${temp_phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Should be equal as strings    ${temp_phone_number}    +1 (916) 111-2222
    
    #Click Cancel
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="cancel1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="cancel1"]

    #Get values of the profile fields. The values should be the same as before edit was made
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

    #Logout. Login. Verify the new data entered above, is displayed in the profile now.
    #logout
    Click Element    xpath=//*[@href="/logout/user/logout"]
    #The popup to save 'Unsaved Data' is not required in case the user has already clicked 'Cancel' above - GRA-1970
    Page Should Not Contain    Unsaved Data
    Page Should Not Contain    Do you want to save the changes made to this form?
    Page Should Not Contain Element    xpath=//*[@id="closePopUpCancelChanges1"]
    Page Should Not Contain Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Page Should Not Contain Element    xpath=//*[@id="noPopUpCancelChanges1"]
    sleep  2s
    login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    
    #Get values of the profile fields
    #Click Element    xpath=//*[@id="firstName"]
    #${first_name2}=    get text    xpath=//*[@id="firstName"]
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #Click Element    xpath=//*[@id="lastName"]
    #${last_name2}=     get text    xpath=//*[@id="lastName"]
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
        
    #Click Element    xpath=//*[@id="dateBirth"]
    #${dob2}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    #Click Element    xpath=//*[@id="phone"]
    #${phone_number2}     Get Value    xpath=//*[@id="phone"]
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    
    #${first_name_lowercase} =    Convert To Lowercase    ${first_name} 
    #${last_name_lowercase} =    Convert To Lowercase    ${last_name} 
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${first_name}
    Should be equal as strings    ${last_name2}    ${last_name}
    ${isdateequal}=   Run Keyword And Return Status   Should Be Equal   ${dob2}   ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=   Run Keyword And Return Status   Should Be Equal   ${phone_number2}   ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'   Log To Console   Test Passed
    
    #Click Cancel without editing any fields, no errors should be reported.
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="cancel1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="cancel1"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Not Contain    Field cannot be Empty
    Page Should Not Contain    Field cannot be Empty, Numbers Only!
    Page Should Not Contain Element    xpath=//*[@id="firstName-helper-text"]
    Page Should Not Contain Element    xpath=//*[@id="lastName-helper-text"]
    #Page Should Not Contain Element    xpath=//*[@id="errorPhoneInput"]
    #Element Should Be Disabled    xpath=//*[@id="errorPhoneInput"]
    
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="cancel1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="cancel1"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Not Contain    Field cannot be Empty
    Page Should Not Contain    Field cannot be Empty, Numbers Only!
    Page Should Not Contain Element    xpath=//*[@id="firstName-helper-text"]
    Page Should Not Contain Element    xpath=//*[@id="lastName-helper-text"]
    #Page Should Not Contain Element    xpath=//*[@id="errorPhoneInput"]
    #Element Should Be Disabled    xpath=//*[@id="errorPhoneInput"]
    
    close browser
    
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
    
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
   
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    
   
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
    
5.7.1.5_Account_Settings_profile_missing_mandatory_field_firstname
    #[Tags]   pass
    login pkg1
    Page Should Contain      Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    
    #Get older values of the Profile
    #Click Element    xpath=//*[@id="firstName"]
    #${first_name}=    get text    xpath=//*[@id="firstName"]
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #Click Element    xpath=//*[@id="lastName"]
    #${last_name}=     get text    xpath=//*[@id="lastName"]
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    
    #Click Element    xpath=//*[@id="dateBirth"]
    #${dobx}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    #Click Element    xpath=//*[@id="phone"]
    #${phone_number}     Get Value    xpath=//*[@id="phone"]
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}
    
    Log to Console    "entering first name....${EMPTY}, Check for error."
    Set Focus To Element     xpath=//*[@id="firstName"]
    Sleep   1s  
    Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE 
    #the following did not work to clear the element to EMPTY
    #Click Element      xpath=//*[@id="firstName"]
    #Clear Element Text    xpath=//*[@id="firstName"]
    #Set Focus To Element    xpath=//input[@id="firstName"]
    #Press Keys     xpath=//input[@id="firstName"]    CTRL+c
    #Press Keys     xpath=//input[@id="firstName"]    DEL
    #Input Text    xpath=//input[@id="firstName"]    ${EMPTY}
    
    #Scroll Element Into View    xpath=//*[@id="save1"]
    Click Button    xpath=//*[@id="save1"]
    Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Contain    Field cannot be Empty
    
    #the following did not work to read the helper text
    #Wait Until Element Is Visible    xpath=//*[@id="${firstName-helper-text}"]    30s
    #${error_fname1}=    get text    xpath=//*[@id="firstName-helper-text"]
    #${error_fname2}=    Get Element Attribute    xpath=//*[@id="firstName-helper-text"]    value
    #Should be equal as strings    ${error_fname1}    Field cannot be Empty
    #Should be equal as strings    ${error_fname2}    Field cannot be Empty

    Click Button    xpath=//*[@id="cancel1"]
    #Logout. Click No for the popup to save "Unsaved Data". 
    #logout
    #Page Should Contain    Do you want to save the changes made to this form?
    #Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    
    #Login. Verify the new data entered above, is displayed in the profile now
    #login pkg1
    
    #Get values of the profile fields
    #Click Element    xpath=//*[@id="firstName"]
    #${first_name2}=    get text    xpath=//*[@id="firstName"]
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #Click Element    xpath=//*[@id="lastName"]
    #${last_name2}=     get text    xpath=//*[@id="lastName"]
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
        
    #Click Element    xpath=//*[@id="dateBirth"]
    #${dob2}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    #Click Element    xpath=//*[@id="phone"]
    #${phone_number2}     Get Value    xpath=//*[@id="phone"]
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    
    #${first_name_lowercase} =    Convert To Lowercase    ${first_name} 
    #${last_name_lowercase} =    Convert To Lowercase    ${last_name} 
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${first_name}
    Should be equal as strings    ${last_name2}    ${last_name}
    ${isdateequal}=    Run Keyword And Return Status    Should Be Equal    ${dob2}    ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=    Run Keyword And Return Status   Should Be Equal    ${phone_number2}    ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'    Log To Console   Test Passed
    close browser

5.7.1.5_Account_Settings_profile_missing_mandatory_field_lastname
    #[Tags]   pass
    login pkg1
    Page Should Contain      Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    
    #Get older values of the Profile
    #Click Element    xpath=//*[@id="firstName"]
    #${first_name}=    get text    xpath=//*[@id="firstName"]
    ${first_name}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    
    #Click Element    xpath=//*[@id="lastName"]
    #${last_name}=     get text    xpath=//*[@id="lastName"]
    ${last_name}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    
    #Click Element    xpath=//*[@id="dateBirth"]
    #${dobx}     Get Value    xpath=//*[@id="dateBirth"]
    ${dob}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    
    #Click Element    xpath=//*[@id="phone"]
    #${phone_number}     Get Value    xpath=//*[@id="phone"]
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the original user profile is...........${first_name} ${last_name} ${dob} ${phone_number}
    
    Log to Console    "entering last name....${EMPTY}, Check for error."
    Set Focus To Element     xpath=//*[@id="lastName"]
    Sleep   1s
    Press Keys    xpath=//*[@id="lastName"]   CTRL+a  BACKSPACE
    #the following did not work to clear the element to EMPTY
    #Click Element      xpath=//*[@id="lastName"]
    #Clear Element Text    xpath=//*[@id="lastName"]
    #Set Focus To Element    xpath=//input[@id="lastName"]
    #Press Keys     xpath=//input[@id="lastName"]    CTRL+c
    #Press Keys     xpath=//input[@id="lastName"]    DEL
    #Input Text    xpath=//input[@id="lastName"]    ${EMPTY}
    
    #Scroll Element Into View    xpath=//*[@id="save1"]
    Click Button    xpath=//*[@id="save1"]
    Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Contain    Field cannot be Empty
    
    #the following did not work to clear the element to EMPTY
    #Wait Until Element Is Visible    xpath=//*[@id="${lastName-helper-text}"]    30s
    #${error1}=    get text    xpath=//*[@id="lastName-helper-text"]
    #Should be equal as strings    ${error1}    Field cannot be Empty

    Click Button    xpath=//*[@id="cancel1"]
    #Logout. Click No for the popup to save "Unsaved Data". 
    #logout
    #Page Should Contain    Do you want to save the changes made to this form?
    #Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    
    #Login. Verify the new data entered above, is displayed in the profile now
    #login pkg1
    
    #Get values of the profile fields
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${first_name}
    Should be equal as strings    ${last_name2}    ${last_name}
    ${isdateequal}=    Run Keyword And Return Status    Should Be Equal    ${dob2}    ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=    Run Keyword And Return Status   Should Be Equal    ${phone_number2}    ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'    Log To Console   Test Passed
    close browser    

5.7.1.5_Account_Settings_profile_missing_mandatory_field_phonenumber
    #[Tags]   pass
    Login pkg1
    Page Should Contain      Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
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
    
    Log to Console    "entering phone number....${EMPTY}, Check for error."
    Set Focus To Element     xpath=//*[@id="phone"]
    Sleep   1s
    Click Element    xpath=//*[@id="phone"]
    Press Keys    xpath=//*[@id="phone"]   CTRL+a  BACKSPACE 
    #Scroll Element Into View    xpath=//*[@id="save1"]
    Click Button    xpath=//*[@id="save1"]
    Wait Until Element Is Visible    xpath=//*[@id="firstName"]
    Page Should Contain     Field cannot be Empty, Numbers Only!
    
    Wait Until Element Is Visible    xpath=//*[@id="errorPhoneInput"]    30s
    ${error1}=    get text    xpath=//*[@id="errorPhoneInput"]
    Should be equal as strings    ${error1}    Field cannot be Empty, Numbers Only!
    
    Click Button    xpath=//*[@id="cancel1"]
    #Logout. Click No for the popup to save "Unsaved Data". 
    #logout
    #Page Should Contain    Do you want to save the changes made to this form?
    #Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    
    #Login. Verify the new data entered above, is displayed in the profile now
    #login pkg1
    
    #Get values of the profile fields
    ${first_name2}=    Get Element Attribute    xpath=//*[@id="firstName"]    value
    ${last_name2}=    Get Element Attribute    xpath=//*[@id="lastName"]    value
    ${dob2}=    Get Element Attribute    xpath=//*[@id="dateBirth"]    value
    ${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    
    log to console    the current user profile is...........${first_name2} ${last_name2} ${dob2} ${phone_number2}
    
    log to console    "Verify Profile details...."
    Should be equal as strings    ${first_name2}    ${first_name}
    Should be equal as strings    ${last_name2}    ${last_name}
    ${isdateequal}=    Run Keyword And Return Status    Should Be Equal    ${dob2}    ${dob}
    Run Keyword If   '${isdateequal}' == 'True'   Log To Console   Test Passed
    ${isphoneequal}=    Run Keyword And Return Status   Should Be Equal    ${phone_number2}    ${phone_number} 
    Run Keyword If   '${isphoneequal}' == 'True'    Log To Console   Test Passed
    close browser

5.7.1.6_Account_Settings_Phone number verification_popup
    login pkg1 
    Page Should Contain       Account Settings
    sleep   1s
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +919902250479
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    Page Should Contain Element    xpath=//*[@id="verifyPhoneNumber"]
    sleep  10s
    close browser
    
5.7.1.6.1_Account_Settings_Phone number verification_without enter OTP
    
    login pkg1 
    Page Should Contain       Account Settings
    sleep   1s
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +919902250479
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    Page Should Contain Element    xpath=//*[@id="verifyPhoneNumber"]
    log to console    "Verify phone number"
    sleep  10s
    click Element   xpath=//*[@id="verifyPhoneNumber"]
    Page Should Contain    Invalid OTP
   # Wait Until Element Is Visible        xpath=//*[@id="phone"]    5
    #${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    #Should be equal as strings    ${phone_number}    ${phone_number2}
    sleep  5s
    close browser
    
5.7.1.6.2_Account_Settings_phone number verification_enter wrong OTP
    login pkg1
    Page Should Contain       Account Settings
    sleep   1s
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    ${phone_number}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    Press Keys  xpath=//*[@id="phone"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="phone"]    +919902250479
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save1"]
    SeleniumLibrary.Click Button    xpath=//*[@id="save1"]
    Page Should Contain Element    xpath=//*[@id="verifyPhoneNumber"]
    log to console    "Verify phone number"
    Input Text    xpath=//*[@id="dig1"]  1  
    Input Text    xpath=//*[@id="dig2"]  2  
    Input Text    xpath=//*[@id="dig3"]  3 
    Input Text    xpath=//*[@id="dig4"]  4
    Input Text    xpath=//*[@id="dig5"]  5  
    Input Text    xpath=//*[@id="dig6"]  6    
    sleep  10s
    click Element   xpath=//*[@id="verifyPhoneNumber"]
    Page Should Contain    Invalid OTP
   # Wait Until Element Is Visible        xpath=//*[@id="phone"]    5
    #${phone_number2}=    Get Element Attribute    xpath=//*[@id="phone"]    value
    #Should be equal as strings    ${phone_number}    ${phone_number2}
    sleep  5s
    close browser
    
