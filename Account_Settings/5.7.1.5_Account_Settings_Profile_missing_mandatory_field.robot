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
