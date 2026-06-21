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
    #${new_first_name}    Text    40
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_first_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="firstName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="firstName"]    ${new_first_name}
    
    #${new_last_name}    Text    40
    ${string}    Generate Random String    15    chars=[UPPER][LOWER]
    ${new_last_name}    Set Variable    ${string}
    Press Keys  xpath=//*[@id="lastName"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="lastName"]    ${new_last_name}
    
    #${new_dob}    Get Current Date
    #${new_dob}     Set Variable    2002-01-23
    #Input Text    xpath=//*[@id="dateBirth"]    ${new_dob}
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
