*** Settings ***
Default Tags      loginbrowser
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot

*** Variables ***
${USER_ID}       anjali.m@ikabit.com
${PASSWORD}      Test@1234
${COMPANY_ID}     36292083



    
*** Test Cases ***
5.1.3.1_login_browser_clear_cookies
    login pkg1
    log to console    deleting cookies
    Delete All Cookies
    close browser
    
5.1.3.2_login_no_browser_cookies_used
    [Documentation]    Verifies that user must re-enter credentials after logout when 'Remember Me' is not selected.

    # Step 1: First login and then logout
    Login Pkg1
    Log To Console    Login successful - logging out now
    Logout If Logged In
    Wait Until Element Is Visible    xpath=//*[@href="/login"]    20s
    Click link    xpath=//*[@href="/login"]

    # Step 2: Try logging in again without session cookies
    Log To Console    Attempting login again without saved session
    Login With Credentials    ${USER_ID}    ${PASSWORD}    ${COMPANY_ID}
    Wait Until Element Is Visible    xpath=//*[@href="/logout/user/logout"]    60s
    Log To Console    Successfully logged in second time

    # Step 3: Logout again
    Logout If Logged In
    Wait Until Element Is Visible    xpath=//*[@href="/login"]    20s
    Click Element    xpath=//*[@href="/login"]

    # Step 4: Login again with 'Remember Me' checked
    Log To Console    Entering credentials with 'Remember Me' enabled
    Wait Until Element Is Visible    xpath=//input[@id="email"]    10s
    Input Text    xpath=//input[@id="email"]    ${USER_ID}
    Input Text    xpath=//input[@id="password"]    ${PASSWORD}
    Input Text    xpath=//input[@id="company-id"]    ${COMPANY_ID}
    Click Element    xpath=//input[@id="checkRemember"]
    Log To Console    Submitting login form with 'Remember Me' checked
    Click Button    xpath=//*[@id="submit"]
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    60s
    Log To Console    User successfully redirected to Restaurant Info page

    Close Browser
5.1.3.3_login_browser_still_logged_in_browser_close
    login pkg1
    log to console    login successful
    log to console    closing browser
    close browser 
    Open Chromefn    ${LOGIN URL}
    wait until element is visible        xpath=//*[@href="/login"]    20
    click element    xpath=//*[@href="/login"]
    wait until element is visible     xpath=//input[@id="email"]    4
    log to console    user is not logged in
    close browser
    
#5.1.3.4_usr_login_unsupported_browser
#    Open Browser    ${LOGIN URL}    ${unsupportedbrowser}
#    log to console    entering email...........
#    Input Text      xpath=//input[@id="email"]    manohar.an@ikabit.com
#    log to console    entering password...................Abcd@1234
#    Input Text    xpath=//input[@id="password"]     Abcd@1234
#    log to console    entering cid.........................15130205
#    Input Text     xpath=//input[@id="company-id"]     15130205 
#    log to console    clicking submit
#    Click Button   xpath=//*[@id="submit"]
#    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
#    close browser
    
