*** Settings ***
Default Tags      changepasswd
Library           SeleniumLibrary
#Library           FakerLibrary    locale=en_US
Library           String
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

*** Variables ***
${ACCOUNT_SETTINGS_URL}     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/account-settings
#${LOGIN URL}      https://test-csmswebapp.d8et7oslc7qy2.amplifyapp.com/
#${BROWSER}        Chrome
${EMAIL_ID}             manohar.an@ikabit.com
${ORIGINAL_PASSWD}      Abcd@1234
${COMPANY_ID}           71937704

${NEW_PASSWD}           Abcd@12345
${TEST_PASSWD}           Abcd@123456
${INVALID_PASSWD_ALPHA_ONLY}     TestPassword
${INVALID_PASSWD_NUM_ONLY}       12345678
${INVALID_PASSWD_SPLCHAR_ONLY}    @@##$$%%
${INVALID_PASSWD_LT_8CHARS}        Abcd@12
${INVALID_PASSWD_ALPHA_ONLY}

*** Test Cases ***


5.7.2.1_account_settings_pwd_change_successful
    #[Tags]   testpasses_debugothertests
    login pkg2
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Change Password
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    log to console    entering newpassword...................${NEW_PASSWD}
    Input Text    xpath=//*[@id='newPassword']    ${NEW_PASSWD}
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    log to console    entering confirm password...................${NEW_PASSWD}
    Input Text    xpath=//*[@id='confirmPassword']    ${NEW_PASSWD}
    Click Element    xpath=//*[@id='save2']
    sleep  2s
    Click Element    xpath=//*[@id="yesPopUpConfirm"]
    Page Should Not Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    
    #After password is saved succesfully, the user is automatically logged out & brought to the login screen
   
  
    
    Press Keys  xpath=//*[@id="email"]  CTRL+a  BACKSPACE
    Input Text    xpath=//input[@id="email"]    ${EMAIL_ID}
    Press Keys  xpath=//*[@id="password"]  CTRL+a  BACKSPACE
    Input Text    xpath=//input[@id="password"]     ${NEW_PASSWD}
    Press Keys  xpath=//*[@id="company-id"]  CTRL+a  BACKSPACE
    Input Text    xpath=//input[@id="company-id"]     ${COMPANY_ID}
    wait until element is visible        xpath=//input[@id="email"]    10
    wait until element is visible        xpath=//input[@id="password"]    10
    wait until element is visible        xpath=//input[@id="company-id"]    10
    set selenium Speed	  1
    Click Button   xpath=//*[@id="submit"]
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    log to console    clicking account settings
    click element     xpath=//*[@href="/user/account-settings"]
    #Click Element   xpath=//*[@id="panel1"]
    #BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Input Text    xpath=//*[@id='newPassword']     ${ORIGINAL_PASSWD}
    log to console    entering password...................${ORIGINAL_PASSWD}
    Input Text    xpath=//*[@id='confirmPassword']    ${ORIGINAL_PASSWD}
    log to console    entering password................... ${ORIGINAL_PASSWD}
    Click Element    xpath=//*[@id='save2']
    sleep  2s
    Click Element    xpath=//*[@id="yesPopUpConfirm"]
    Page Should Not Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    wait until element is visible        xpath=//input[@id="email"]    10
    wait until element is visible        xpath=//input[@id="password"]    10
    wait until element is visible        xpath=//input[@id="company-id"]    10
    #logout
    
5.7.2.4_pwd_change_cancel
    #[Tags]   testpasses_debugothertests
    Login pkg2
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Change Password
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='newPassword']    ${TEST_PASSWD}
    log to console    entering password...................${TEST_PASSWD}
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='confirmPassword']    ${TEST_PASSWD}
    log to console    entering password...................${TEST_PASSWD}
    Click Element    xpath=//*[@id='cancel2']
    Textfield Should Contain    xpath=//*[@id='newPassword']     ${EMPTY}    
    Textfield Should Contain    xpath=//*[@id='confirmPassword']    ${EMPTY}
    Textfield Value Should Be    xpath=//*[@id='newPassword']     ${EMPTY}    
    Textfield Value Should Be    xpath=//*[@id='confirmPassword']    ${EMPTY}
    log to console   logging out
    logout
    BuiltIn.Sleep    15s 
    login pkg2
    log to console    password is unchanged
    close browser
    
5.7.2.2_account_settings_chg_password_invalid_values
    #[Tags]   testpasses_debugothertests
    Login pkg2
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Change Password
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    
    Log To Console     Test 1 - Leave New Password, Confirm New Password fields as blank
    #Input Text    xpath=//*[@id='newPassword']    ${TEST_PASSWD}
    log to console    entering password...................blank
    #Input Text    xpath=//*[@id='confirmPassword']    ${TEST_PASSWD}
    log to console    entering password...................blank
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Field cannot be Empty
    Page Should Contain Element    xpath=//*[@id='newPassword-helper-text'] 
    Page Should Contain Element    xpath=//*[@id='confirmPassword-helper-text'] 
    
    Log To Console     Test 2 - Albhabets Only (at least 8 chars) - New Password, Confirm New Password
    
    Input Text    xpath=//*[@id='newPassword']    ${INVALID_PASSWD_ALPHA_ONLY}
    log to console    entering password...................${INVALID_PASSWD_ALPHA_ONLY}
    Input Text    xpath=//*[@id='confirmPassword']    ${INVALID_PASSWD_ALPHA_ONLY}
    log to console    entering password...................${INVALID_PASSWD_ALPHA_ONLY}
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    Page Should Contain Element    xpath=//*[@id='newPassword-helper-text']
    Page Should Not Contain Element    xpath=//*[@id='confirmPassword-helper-text']

    Log To Console     Test 3 - Numbers Only (at least 8 chars) - New Password, Confirm New Password
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='newPassword']    ${INVALID_PASSWD_NUM_ONLY}
    log to console    entering password...................${INVALID_PASSWD_NUM_ONLY}
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='confirmPassword']    ${INVALID_PASSWD_NUM_ONLY}
    log to console    entering password...................${INVALID_PASSWD_NUM_ONLY}
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    Page Should Contain Element    xpath=//*[@id='newPassword-helper-text']
    Page Should Not Contain Element    xpath=//*[@id='confirmPassword-helper-text']
    
    Log To Console     Test 4 - Special Chars Only (at least 8 chars) - New Password, Confirm New Password
     Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='newPassword']    ${INVALID_PASSWD_SPLCHAR_ONLY}
    log to console    entering password................... ${INVALID_PASSWD_SPLCHAR_ONLY}
     Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='confirmPassword']    ${INVALID_PASSWD_SPLCHAR_ONLY}
    log to console    entering password...................${INVALID_PASSWD_SPLCHAR_ONLY}
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    Page Should Contain Element    xpath=//*[@id='newPassword-helper-text']
    Page Should Not Contain Element    xpath=//*[@id='confirmPassword-helper-text']
    
    Log To Console     Test 5 - Alphanumeric + Special Char (<8 chars) - New Password, Confirm New Password
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='newPassword']    ${INVALID_PASSWD_LT_8CHARS}
    log to console    entering password...................${INVALID_PASSWD_LT_8CHARS}
    sleep  2s
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='confirmPassword']    ${INVALID_PASSWD_LT_8CHARS}
    log to console    entering password...................${INVALID_PASSWD_LT_8CHARS}
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    Page Should Contain Element    xpath=//*[@id='newPassword-helper-text']
    Page Should Not Contain Element    xpath=//*[@id='confirmPassword-helper-text']

    Log To Console     Test 6 - Valid Password - New Password & Confirm New Password not same
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='newPassword']    ${ORIGINAL_PASSWD}
    log to console    entering password...................${ORIGINAL_PASSWD}
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='confirmPassword']    ${TEST_PASSWD}
    log to console    entering password...................${TEST_PASSWD}
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Passwords do not match
    Page Should not Contain Element    xpath=//*[@id='newPassword-helper-text']
    Page Should Contain Element    xpath=//*[@id='confirmPassword-helper-text'] 

    #Navigate to Admin Settings to clear the Password fields of the data entered above. Verify that a popup is displayed, and the ids for X icon to close popup, Yes & No button are present, and the text is as expected.
    #Test - Leave One of the fields - Confirm New Password as blank
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    #Click No for the popup. User will be navigated to Admin Settings.
    Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    Wait Until Page Contains    Permissions & Approvals
    #Navigate back to Account Settings
    Click Element     xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    #Open tab - Change Password
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    
    Log To Console     Test 7 - Leave One of the fields - Confirm New Password as blank
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='newPassword']    ${TEST_PASSWD}
    log to console    entering password...................${TEST_PASSWD}
    #Input Text    xpath=//*[@id='confirmPassword']    ${TEST_PASSWD}
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    log to console    entering password...................blank
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Passwords do not match
    Page Should Not Contain Element    xpath=//*[@id='newPassword-helper-text'] 
    Page Should Contain Element    xpath=//*[@id='confirmPassword-helper-text'] 

    #Navigate to Admin Settings to clear the Password fields of the data entered above. Verify that a popup is displayed, and the ids for X icon to close popup, Yes & No button are present, and the text is as expected.
    #Test - Leave One of the fields - Enter New Password as blank
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    #Click No for the popup. User will be navigated to Admin Settings.
    Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    Wait Until Page Contains    Permissions & Approvals
    #Navigate back to Account Settings
    Click Element     xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    #Open tab - Change Password
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    
    Log To Console     Test 8 - Leave One of the fields - Enter New Password as blank
    #Input Text    xpath=//*[@id='newPassword']    ${TEST_PASSWD}
    Press Keys  xpath=//*[@id="newPassword"]  CTRL+a  BACKSPACE
    log to console    entering password...................blank
    Press Keys  xpath=//*[@id="confirmPassword"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id='confirmPassword']    ${TEST_PASSWD}
    log to console    entering password...................${TEST_PASSWD}
    Click Element    xpath=//*[@id='save2']
    BuiltIn.Sleep    2s
    Page Should Contain     Field cannot be Empty
    Page Should Contain     Passwords do not match
    Page Should Contain Element    xpath=//*[@id='newPassword-helper-text'] 
    Page Should Contain Element    xpath=//*[@id='confirmPassword-helper-text'] 
    #Popup to save 'Unsaved Data' will appear
    Click Element    xpath=//*[@href="/logout/user/logout"]
    Page Should Contain    Unsaved Data
    #Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    #Click No for the popup. User will be logged out.
    Click Button    xpath=//*[@id="noPopUpCancelChanges1"]
    
    login pkg2 
    Page Should Contain       Account Settings
    log to console   Test Passed - No invalid passwords saved. Login with original password is successful
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    logout
    
5.7.2.3_account_settings_pwd_change_stay_on_page_reloadpage_expandcollapse_section
    #[Tags]   testpasses_debugothertests
    Login pkg2
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    
    #Verify that the Passwords are blank by default, and stay blank after reloading the page also
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    ${np1}=    Get Element Attribute    xpath=//*[@id="newPassword"]    value
    ${cp1}=    Get Element Attribute    xpath=//*[@id="confirmPassword"]    value
    Should be equal as strings    ${np1}    ${EMPTY}
    Should be equal as strings    ${cp1}    ${EMPTY}
    #Verify that the Passwords are blank after reloading the page also
    Reload Page
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Reload Page
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    #Verify password details
    ${np2}=    Get Element Attribute    xpath=//*[@id="newPassword"]    value
    ${cp2}=    Get Element Attribute    xpath=//*[@id="confirmPassword"]    value
    log to console    "Verify password entered ...."
    Should be equal as strings    ${np2}    ${EMPTY}
    Should be equal as strings    ${cp2}    ${EMPTY}
    
    #Verify that the Passwords data entered on the form stays the same after expanding & collapsing section
    Input Text    xpath=//*[@id='newPassword']     ${TEST_PASSWD}
    log to console    entering password...................${TEST_PASSWD}
    Input Text    xpath=//*[@id='confirmPassword']    ${NEW_PASSWD}
    log to console    entering password................... ${NEW_PASSWD}
    
    #Expand, Collapse the section - Change Password
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s

    #Verify password details
    ${np2}=    Get Element Attribute    xpath=//*[@id="newPassword"]    value
    ${cp2}=    Get Element Attribute    xpath=//*[@id="confirmPassword"]    value
    log to console    "Verify password entered ...."
    Should be equal as strings    ${np2}    ${TEST_PASSWD}
    Should be equal as strings    ${cp2}    ${NEW_PASSWD}
    close browser

5.1.4.4_account_settings_pwd_change_during_form_navigation_gotoadmin_settings_then_account_settings_cancelchanges
    #[Tags]   testpasses_debugothertests
    Login pkg2
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    Page Should Contain      Change Password
    
    #Test data retention in case of editing Passwords, Selecting NO to save any edits when trying to navigate to Admin Settings.
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    
    #Enter Passwords 
    Input Text    xpath=//*[@id='newPassword']     ${NEW_PASSWD}
    log to console    entering password...................${NEW_PASSWD}
    Input Text    xpath=//*[@id='confirmPassword']    ${NEW_PASSWD}
    log to console    entering password................... ${NEW_PASSWD}
    
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
    
    #Navigate back to Account Settings
    Click Element     xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    
    #Verify password details
    ${np2}=    Get Element Attribute    xpath=//*[@id="newPassword"]    value
    ${cp2}=    Get Element Attribute    xpath=//*[@id="confirmPassword"]    value
    log to console    "Verify password entered ...."
    Should be equal as strings    ${np2}    ${EMPTY}
    Should be equal as strings    ${cp2}    ${EMPTY}
    
    logout
    login pkg2
    log to console   Test Passed - Canceled password was not saved. Login with original password is successful
    #logout
    Sleep  30s
    
 5.7.2.4_account_settings_pwd_change_during_form_navigation_gotoadmin_settings_thenaccount_settings_savechanges
    [Tags]   Do Not Run
    Login pkg2
    Page Should Contain       Account Settings
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="panel1"]    10
    Page Should Contain      Account Settings
    
    #Test data retention in case of editing Passwords, Selecting NO to save any edits when trying to navigate to Admin Settings.
    Scroll Element Into View    xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Page Should Contain      Change Password
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    
    #Enter Passwords 
    Input Text    xpath=//*[@id='newPassword']     ${NEW_PASSWD}
    log to console    entering password...................${NEW_PASSWD}
    Input Text    xpath=//*[@id='confirmPassword']    ${NEW_PASSWD}
    log to console    entering password................... ${NEW_PASSWD}
    
    #Try to navigate to Admin Settings. Verify that a popup is displayed, and the ids for X icon to close popup, Yes & No button are present, and the text is as expected.
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    
    #Click Yes for the popup. The popup will close. The user will continue to be on the form Account Settings & tab Change Password
    Click Button    xpath=//*[@id="yesPopUpCancelChanges1"]
    BuiltIn.Sleep    2s
    #wait until element is visible    xpath=//*[@id="yesPopUpConfirm"]
    #Click Element    xpath=//*[@id="yesPopUpConfirm"]
    Wait Until Page Contains    Change Password
    Wait Until Page Contains Element     newPassword
    Wait Until Page Contains Element     xpath=//*[@id='confirmPassword']
    Click Element    xpath=//*[@id='save2']
    sleep  5s
    Click Element   xpath=//*[@id="yesPopUpConfirm"]
    sleep  2s
    
    #Page Should Not Contain     Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
      
    #After password is saved succesfully, the user is automatically logged out & brought to the login screen
    #wait until element is visible        xpath=//*[@href="/login"]    15
    wait until element is visible        xpath=//input[@id="password"]    10
    wait until element is visible        xpath=//input[@id="email"]    10
    Press Keys  xpath=//*[@id="email"]  CTRL+a  BACKSPACE
    Input Text    xpath=//input[@id="email"]    ${EMAIL_ID}
    Press Keys  xpath=//*[@id="password"]  CTRL+a  BACKSPACE
    Input Text    xpath=//input[@id="password"]     ${NEW_PASSWD}
    Press Keys  xpath=//*[@id="company-id"]  CTRL+a  BACKSPACE
    Input Text    xpath=//input[@id="company-id"]     ${COMPANY_ID}
    #wait until element is visible        xpath=//input[@id="email"]    10
    #wait until element is visible        xpath=//input[@id="password"]    10
    #wait until element is visible        xpath=//input[@id="company-id"]    10
    set selenium Speed	  1
    Click Button   xpath=//*[@id="submit"]
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    log to console    clicking account settings
    Click element    xpath=//*[@href="/user/account-settings"]
    #Click Element   xpath=//*[@id="panel1"]
    #BuiltIn.Sleep    1s
    
    #Restore the original password
    Wait Until Element Is Visible        xpath=//*[@id="panel1"]    10
    Page Should Contain      Account Settings
    
    #Test data retention in case of editing Passwords, Selecting NO to save any edits when trying to navigate to Admin Settings.
    Scroll Element Into View    xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    Page Should Contain      Change Password
    Click Element   xpath=//*[@id="panel2"]
    BuiltIn.Sleep    1s
    #log to console   Login with New Password saved above was successful.
    #log to console   Reset Password to the original value to run tests in continuation.
    # Click Element   xpath=//*[@id="panel2"]
    # BuiltIn.Sleep    1s
    Input Text    xpath=//*[@id='newPassword']     ${ORIGINAL_PASSWD}
    log to console    entering password...................${ORIGINAL_PASSWD}
    Input Text    xpath=//*[@id='confirmPassword']    ${ORIGINAL_PASSWD}
    log to console    entering password................... ${ORIGINAL_PASSWD}
    Click Element    xpath=//*[@id='save2']
    sleep  5s
    Click Element    xpath=//*[@id="yesPopUpConfirm"]
    sleep  2s
    #logout
    Login pkg2
    log to console   Password reset to orignal value. Login with Original Password was successful. Test Passed.
    #logout
    close browser
    

    
