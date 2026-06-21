*** Settings ***
Default Tags      loginsession
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

*** Variables ***
${LOGIN_URL}      https://test-csmswebapp.d8et7oslc7qy2.amplifyapp.com/
${BROWSER}        Chrome

*** Test Cases ***
5.1.2.1_login_session_minimum_time_idle_logout
     login pkg1
    log to console    going to general 
    click element    xpath=//*[@id="general"]
    log to console    going to settings
    click element    xpath=//*[@id="settings"]
    log to console    saving autologout as 5 minutes
    Select From List By Label    id    5
    log to console    clicking save
    click element    xpath=//*[@id="save"]
    log to console    waiting for autologout
    wait until element is visible    xpath=//*[@id="loginid"]    6 min
    log to console    user logged out
    close browser
    
5.1.2.2_login_session_10min_idle_logout
     login pkg1
    log to console    going to general 
    click element    xpath=//*[@id="general"]
    log to console    going to settings
    click element    xpath=//*[@id="settings"]
    log to console    saving autologout as 10 minutes
    Select From List By Label    id    10
    log to console    clicking save
    click element    xpath=//*[@id="save"]
    log to console    waiting for autologout
    wait until element is visible    xpath=//*[@id="loginid"]    11 min
    log to console    user logged out
    close browser
    
5.1.2.3_login_session_30min_idle_logout
     login pkg1
    log to console    going to general 
    click element    xpath=//*[@id="general"]
    log to console    going to settings
    click element    xpath=//*[@id="settings"]
    log to console    saving autologout as 30 minutes
    Select From List By Label    id    30
    log to console    clicking save
    click element    xpath=//*[@id="save"]
    log to console    waiting for autologout
    wait until element is visible    xpath=//*[@id="loginid"]    31 min
    log to console    user logged out
    close browser
    
5.1.2.4_login_session_multi_session_logout
    #Test to verify if user is logged out from multiple browsers
    Open Browser    ${LOGIN_URL}    ${BROWSER}    alias=first
    log to console    logging in to first browser
    SeleniumLibrary.Input Text    xpath=//*[@id='loginID']    gaurav@ikabit.com
    SeleniumLibrary.Input Text    xpath=//*[@id='password']    test123A
    SeleniumLibrary.Input Text    xpath=//input[@id="companyID"]    99115109115
    SeleniumLibrary.Click Element    xpath=//*[@id='submit']
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    log to console    logging in to second browser
    SeleniumLibrary.Input Text    xpath=//*[@id='loginID']    gaurav@ikabit.com
    SeleniumLibrary.Input Text    xpath=//*[@id='password']    test123A
    SeleniumLibrary.Input Text    xpath=//input[@id="companyID"]    99115109115
    SeleniumLibrary.Click Element    xpath=//*[@id='submit']
    Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
    log to console    logging out
    click element        xpath=//*[@id='logout']
    click element        xpath=//*[@id='logout1']
    Switch Browser    alias=first
    wait until element is visible    xpath=//*[@id='loginID']
    log to console    logged out from the other browser too.
    Close All Browsers
    
5.1.2.5_login_session_never_logout
     login pkg1
    log to console    going to general 
    click element    xpath=//*[@id="general"]
    log to console    going to settings
    click element    xpath=//*[@id="settings"]
    log to console    saving autologout as never log out
    Select From List By Label    id    never log out
    log to console    clicking save
    click element    xpath=//*[@id="save"]
    log to console    waiting for autologout
    Sleep    31 minutes
    Element Should Be Visible    xpath=//*[@id="settings"]
    log to console    user has not been logged out.
    close browser
