*** Settings ***
Default Tags      notificationspref
Library           SeleniumLibrary
#Library           FakerLibrary    locale=en_US
Library           String
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

*** Test Cases ***

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
    
    