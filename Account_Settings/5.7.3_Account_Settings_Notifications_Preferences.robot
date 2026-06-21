*** Settings ***
Default Tags      notificationspref
Library           SeleniumLibrary
#Library           FakerLibrary    locale=en_US
Library           String
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers


*** Test Cases ***
5.7.3.1_account_settings_notifications_save
    login pkg1
    log to console    clicking account settings
    click element    xpath=//*[@href="/user/account-settings"]
    #Click to open Notification Preferences. Expand, collapse, expand this section.
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel5"]
    
    Unselect Checkbox   xpath=//*[@id="promotionCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]
    
    Unselect Checkbox    xpath=//*[@id="newsletterCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]

    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    #Save the new data
    #Click Element   xpath=//*[@id="panel5"]
    Wait Until Element Is Visible    xpath=//*[@id="save5"]
    Page Should Contain Element      xpath=//*[@id="save5"]
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="save5"]
    BuiltIn.Sleep   1s
    SeleniumLibrary.Click Button    xpath=//*[@id="save5"]
    #SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="newsletterCheck"]
    Wait Until Page Contains     Account Information Saved Successfully    10s

    #Logout. Login. Verify the new data entered above, is displayed in this section now
    logout
    login pkg1
    log to console    clicking account settings
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@href="/user/account-settings"]
    click element    xpath=//*[@href="/user/account-settings"]
    
    Click Element   xpath=//*[@id="panel1"]
    Click Element   xpath=//*[@id="panel5"]
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]
    
    #select checkboxes as their default state is for the next test
    Select Checkbox    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="newsletterCheck"]
    
    close browser

5.7.3.2_account_settings_notifications_cancel
    login pkg1
    log to console    clicking account settings
    click element    xpath=//*[@href="/user/account-settings"]
    #Click to open Notification Preferences. Expand, collapse, expand this section.
    Click Element   xpath=//*[@id="panel1"]
    BuiltIn.Sleep    1s
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    2s
    
    #Select the checkboxes first & save to use for this test
    #Wait Until Element Is Visible    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="newsletterCheck"]
    Page Should Contain Element      xpath=//*[@id="save5"]
    Click Button    xpath=//*[@id="save5"]
    BuiltIn.Sleep    2s  
    
    Unselect Checkbox   xpath=//*[@id="promotionCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]
  
    #Select Checkbox   xpath=//input[@id="newsletterCheck"]
    Unselect Checkbox    xpath=//*[@id="newsletterCheck"]
    
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]

    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected

    #Save the new data
    #Click Element   xpath=//*[@id="panel5"]
    Wait Until Element Is Visible    xpath=//*[@id="cancel5"]
    Page Should Contain Element      xpath=//*[@id="cancel5"]
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="cancel5"]
    BuiltIn.Sleep   1s
    SeleniumLibrary.Click Button    xpath=//*[@id="cancel5"]
    #SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="newsletterCheck"]

    #Logout. Login. Verify the new data entered above, is displayed in this section now.
    Click Element    xpath=//*[@href="/logout/user/logout"]
    #The popup to save 'Unsaved Data' is not required in case the user has already clicked 'Cancel' above - GRA-1976
    Page Should Not Contain    Unsaved Data
    Page Should Not Contain    Do you want to save the changes made to this form?
    Page Should Not Contain Element    xpath=//*[@id="closePopUpCancelChanges1"]
    Page Should Not Contain Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Page Should Not Contain Element    xpath=//*[@id="noPopUpCancelChanges1"]
    
    login pkg1
    Page Should Contain       Account Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    Page Should Contain      Profile
    #Click Element   xpath=//*[@id="panel1"]
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    2s   
    Checkbox Should Be Selected    xpath=//*[@id="promotionCheck"]
    Checkbox Should Be Selected    xpath=//*[@id="newsletterCheck"]

    close browser
    
5.7.3.3_account_Settings_notifications_data_retention_during_form_navigation_reloadpage_expand_collapse_section
    login pkg1
    log to console    clicking account settings
    click element     xpath=//*[@href="/user/account-settings"]
    #Click to open Notification Preferences. Expand, collapse, expand this section.
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    2s
    
    #Select the checkboxes first & save to use for this test
    #Wait Until Element Is Visible    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="newsletterCheck"]
    Page Should Contain Element      xpath=//*[@id="save5"]
    Click Button    xpath=//*[@id="save5"]
    BuiltIn.Sleep    2s  
    
    #Data retention during - reload page
    reload page
    BuiltIn.Sleep   2s
    reload page
    BuiltIn.Sleep   2s
    Click Element   xpath=//*[@id="panel5"]
    
    #verify the checkboxes have the same state
    Checkbox Should Be Selected    xpath=//*[@id="promotionCheck"]
    Checkbox Should Be Selected    xpath=//*[@id="newsletterCheck"]

    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    #Toggle the current selections
    Unselect Checkbox   xpath=//*[@id="promotionCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]

    Unselect Checkbox    xpath=//*[@id="newsletterCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]

    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected

    #Collapse & expand the section a few times.
    Click Element   xpath=//*[@id="panel5"]
    Click Element   xpath=//*[@id="panel5"]
    Click Element   xpath=//*[@id="panel5"]
    Click Element   xpath=//*[@id="panel5"]

    #verify that the values of the checkboxes are still toggled. The changes made are retained so far despite not being saved earlier.
    Checkbox Should Not Be Selected    xpath=//*[@id='promotionCheck']
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]
    
    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    close browser

5.7.3.3_account_settings_notifications_data_retention_during_form_navigation_cancel
    login pkg1
    log to console    clicking account settings
    click element     xpath=//*[@href="/user/account-settings"]
    #Click to open Notification Preferences.
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    2s
    
    #Select the checkboxes first & save to use for this test
    Select Checkbox    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="newsletterCheck"]
    Page Should Contain Element      xpath=//*[@id="save5"]
    Click Button    xpath=//*[@id="save5"]
    BuiltIn.Sleep    2s
    
    #Data retention during form navigation - goto admin settings, then to account_settings
    #Toggle the current selections
    Unselect Checkbox    xpath=//*[@id="promotionCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]

    Unselect Checkbox    xpath=//*[@id="newsletterCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]

    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    #Go to a different form - then come to Account Settings
    Click Element    xpath=//*[@href="/user/admin-settings"]
    BuiltIn.Sleep    2s
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
    
    #Open the section
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    2s
    
    Checkbox Should Be Selected    xpath=//*[@id="promotionCheck"]
    Checkbox Should Be Selected    xpath=//*[@id="newsletterCheck"]
    
    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    close browser
    
5.7.3.4_account_settings_notifications_data_retention_during_form_navigation_save
    login pkg1
    log to console    clicking account settings
    click element     xpath=//*[@href="/user/account-settings"]
    #Click to open Notification Preferences.
    Click Element   xpath=//*[@id="panel5"]
    BuiltIn.Sleep    2s
    
    #Select the checkboxes first & save to use for this test
    Select Checkbox    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="newsletterCheck"]
    Page Should Contain Element      xpath=//*[@id="save5"]
    Click Button    xpath=//*[@id="save5"]
    BuiltIn.Sleep    2s
   
    #Data retention during form navigation - goto admin settings, then to account_settings
    #Toggle the current selections
    Unselect Checkbox    xpath=//*[@id="promotionCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]

    Unselect Checkbox    xpath=//*[@id="newsletterCheck"]
    BuiltIn.Sleep   1s
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]

    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    #Go to a different form - then come to Account Settings
    Click Element    xpath=//*[@href="/user/admin-settings"]
    BuiltIn.Sleep    2s
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    
    #Click Yes for the popup. The popup will close. The user will continue to be on the form Account Settings & tab Notification Preferences.
    Click Button    xpath=//*[@id="yesPopUpCancelChanges1"]
    Wait Until Page Contains    Notification Preferences
    Wait Until Page Contains Element     promotionCheck
    Wait Until Page Contains Element     xpath=//*[@id="newsletterCheck"]
    #Wait Until Element Is Visible     xpath=//*[@id="promotionCheck"]    10
    
    Checkbox Should Not Be Selected    xpath=//*[@id="promotionCheck"]
    Checkbox Should Not Be Selected    xpath=//*[@id="newsletterCheck"]
    
    SeleniumLibrary.Element Should Be Disabled    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - frozen
    SeleniumLibrary.Checkbox Should Be Selected    xpath=//input[@id="policyUpdates"]    #default state of checkbox is - selected
    
    #Select checkboxes to run tests again
    Select Checkbox    xpath=//*[@id="promotionCheck"]
    Select Checkbox    xpath=//*[@id="newsletterCheck"]
    

    close browser
    
