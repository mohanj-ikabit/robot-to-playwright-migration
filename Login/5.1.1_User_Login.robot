*** Settings ***
Default Tags      login
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/URL.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Text on form.robot



*** Keywords ***
Login With Credentials
    [Arguments]    ${email}    ${password}    ${company_id}
    click element    xpath=//*[@href='/login']
    wait until element is visible    xpath=//input[@id="email"]    10
    wait until element is visible    xpath=//input[@id="password"]    10
    wait until element is visible    xpath=//input[@id="company-id"]    10
    SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${email}
    SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${password}
    SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${company_id}
    scroll element into view    xpath=//*[@id="submit"]
    SeleniumLibrary.Click Button    xpath=//*[@id='submit']

Logout If Logged In
    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//*[@href="/logout/user/logout"]    5s
    Run Keyword And Ignore Error    Click Element    xpath=//*[@href="/logout/user/logout"]


Attempt Failed Login And Validate Error
    [Arguments]    ${email}    ${password}    ${company_id}
    click element    xpath=//*[@href='/login']
    SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${email}
    SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${password}
    SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${company_id}
    SeleniumLibrary.Click Button    xpath=//*[@id='submit']
    Wait Until Page Contains    Incorrect username or password.    10s
    Page Should Contain    Incorrect username or password.
    Close Browser
    
*** Test Cases ***
5.1.1.1_usr_login_wrong_login_id
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${WRONG_USER_ID}    ${PKG1_PASSWORD}    ${PKG1_COMPANY_ID}
    Wait Until Element Is Visible    xpath=//*[@id='errorLogin']    timeout=10s
    ${error}=    get value    xpath=//*[@id='errorLogin']
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     User does not exist.
    Run Keyword If    ${status}==True    Log To Console    Validation for wrong Login ID Passed.
    ...    ELSE    Log to Console    Validation for wrong Login ID Failed.
    Wait Until Page Contains    User does not exist.    4
    Page Should Contain    User does not exist.
    Close Browser

5.1.1.2_usr_login_wrong_pwd
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${PKG1_USER_ID}    ${WRONG_PASSWORD}    ${PKG1_COMPANY_ID}
    Wait Until Element Is Visible    xpath=//*[@id='errorLogin']    timeout=10s
    ${error}=    get value    xpath=//*[@id='errorLogin']
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
    Run Keyword If    ${status}==True    Log To Console    Validation for wrong password Passed.
    ...    ELSE    Log to Console    Validation for wrong password Failed.
    Wait Until Page Contains    Incorrect username or password.    4
    Page Should Contain    Incorrect username or password.
    Close Browser

5.1.1.3_usr_login_wrong_restaurant_id
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${PKG1_USER_ID}    ${PKG1_PASSWORD}    ${WRONG_COMPANY_ID}
    Wait Until Element Is Visible    xpath=//*[@id='errorCompanyId_login']    timeout=10s
    ${error}=    Get Value    xpath=//*[@id='errorCompanyId_login']
    ${status}=    Run Keyword And Return Status    Should Be Equal As Strings    ${error}    Invalid Restaurant ID
    Run Keyword If    ${status}==True    Log To Console    Validation for wrong Restaurant ID Passed.
    ...    ELSE    Log To Console    Validation for wrong Restaurant ID Failed.
    Wait Until Page Contains    Invalid Restaurant ID    4
    Page Should Contain    Invalid Restaurant ID
    Close Browser

5.1.1.4_usr_login_no_login_id
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${EMPTY}    ${PKG1_PASSWORD}    ${PKG1_COMPANY_ID}
    Wait Until Page Contains    Field cannot be Empty    4
    Page Should Contain    Field cannot be Empty
    Close Browser

5.1.1.5_usr_login_no_pwd
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${PKG1_USER_ID}    ${EMPTY}    ${PKG1_COMPANY_ID}
    Wait Until Page Contains    Field cannot be Empty    4
    Page Should Contain    Field cannot be Empty
    Close Browser

5.1.1.6_usr_login_no_restaurant_id
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${PKG1_USER_ID}    ${PKG1_PASSWORD}    ${EMPTY}
    Wait Until Page Contains    Field cannot be Empty    4
    Page Should Contain    Field cannot be Empty
    Close Browser

5.1.1.7_usr_login_rest_owner_allowed
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${REST_OWNER_USER_ID}    ${REST_OWNER_PASSWORD}    ${REST_OWNER_COMPANY_ID}
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    Page Should Not Contain    User does not exist.
    Page Should Not Contain    Field cannot be Empty
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    Logout If Logged In
    Close Browser

5.1.1.8_usr_login_rest_manager_allowed
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${REST_MGR_USER_ID}    ${REST_MGR_PASSWORD}    ${REST_MGR_COMPANY_ID}
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    Page Should Not Contain    User does not exist.
    Page Should Not Contain    Field cannot be Empty
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    Logout If Logged In
    Close Browser

5.1.1.9_usr_login_rest_personnel_allowed
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${REST_PERS_USER_ID}    ${REST_PERS_PASSWORD}    ${REST_PERS_COMPANY_ID}
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    Page Should Not Contain    User does not exist.
    Page Should Not Contain    Field cannot be Empty
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    Logout If Logged In
    Close Browser

5.1.1.10_usr_login_customer_not_allowed
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    ${CUST_USER_ID}    ${CUST_PASSWORD}    ${CUST_COMPANY_ID}
    Wait Until Element Is Visible    xpath=//*[@id='errorLogin']    timeout=10s
    ${error}=    get value    xpath=//*[@id='errorLogin']
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     User does not exist.
    Run Keyword If    ${status}==True    Log To Console    Validation for invalid user Passed.
    ...    ELSE    Log to Console    Validation for invalid user Failed.
    Wait Until Page Contains    User does not exist.    4
    Page Should Contain    User does not exist.
    Close Browser

5.1.1.11_usr_login_max_wrong_logins
   #to test if the user is stopped after max number of logins
   #This test checks if the default login works with wrong login id
   Open Chromefn    ${SIGNUP_URL}
   log to console    clicking Sign in
   click element    xpath=//*[@href='/login']
   log to console    ENTERING DATA 1ST SESSION
   log to console    entering login............${PKG2_USER_ID}
  SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${PKG2_USER_ID}
   log to console    entering password...................${WRONG_PASSWORD}
  SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${WRONG_PASSWORD}
   log to console    entering restaurant id.........................${PKG2_COMPANY_ID}
  SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${PKG2_COMPANY_ID}
   log to console    clicking submit
  SeleniumLibrary.Click Button    xpath=//*[@id='submit']
   #Wait Until Element Is Visible    xpath=//*[@id="${errorLogin}"]
   #${error}=    get value    xpath=//*[@id="${errorLogin}"]
   #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
   #Run Keyword If    ${status}==True    Log To Console    Login ID......Validation for wrong Login ID Passed.
   #Run Keyword If    ${status}!=True    Log to Console    Login ID......Validation for wrong Login ID Failed.
   #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
   #text_present    id
   #log to console    clicking ok
   Wait Until Page Contains    Incorrect username or password.    15
   Page Should Contain    Incorrect username or password.
  
   log to console    ENTERING DATA 2ND SESSION
   log to console    entering login............${PKG2_USER_ID}
  SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${PKG2_USER_ID}
   log to console    entering password...................${WRONG_PASSWORD}
  SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${WRONG_PASSWORD}
   log to console    entering restaurant id.........................${PKG2_COMPANY_ID}
  SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${PKG2_COMPANY_ID}
   log to console    clicking submit
  SeleniumLibrary.Click Button    xpath=//*[@id='submit']
   #Wait Until Element Is Visible    xpath=//*[@id="${errorLogin}"]
   #${error}=    get value    xpath=//*[@id="${errorLogin}"]
   #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
   #Run Keyword If    ${status}==True    Log To Console    Login ID......Validation for wrong Login ID Passed.
   #Run Keyword If    ${status}!=True    Log to Console    Login ID......Validation for wrong Login ID Failed.
   #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
   #text_present    id
   #log to console    clicking ok
   Wait Until Page Contains    Incorrect username or password.    4
   Page Should Contain    Incorrect username or password.
      
   log to console    ENTERING DATA 3RD SESSION
   log to console    entering login............${PKG2_USER_ID}
  SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${PKG2_USER_ID}
   log to console    entering password...................${WRONG_PASSWORD}
  SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${WRONG_PASSWORD}
   log to console    entering restaurant id.........................${PKG2_COMPANY_ID}
  SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${PKG2_COMPANY_ID}
   log to console    clicking submit
  SeleniumLibrary.Click Button    xpath=//*[@id='submit']
   #Wait Until Element Is Visible    xpath=//*[@id="${errorLogin}"]
   #${error}=    get value    xpath=//*[@id="${errorLogin}"]
   #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
   #Run Keyword If    ${status}==True    Log To Console    Login ID......Validation for wrong Login ID Passed.
   #Run Keyword If    ${status}!=True    Log to Console    Login ID......Validation for wrong Login ID Failed.
   #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
   #text_present    id
   #log to console    clicking ok
   Wait Until Page Contains    Incorrect username or password.    4
   Page Should Contain    Incorrect username or password.
   Open Chromefn    ${SIGNUP_URL}
   log to console    clicking Sign in
   click element    xpath=//*[@href='/login']
   log to console    ENTERING DATA 4TH SESSION
   log to console    entering login............${PKG2_USER_ID}
  SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${PKG2_USER_ID}
   log to console    entering password...................${WRONG_PASSWORD}
  SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${WRONG_PASSWORD}
   log to console    entering restaurant id.........................${PKG2_COMPANY_ID}
  SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${PKG2_COMPANY_ID}
   log to console    clicking submit
  SeleniumLibrary.Click Button    xpath=//*[@id='submit']
   #Wait Until Element Is Visible    xpath=//*[@id="${errorLogin}"]
   #${error}=    get value    xpath=//*[@id="${errorLogin}"]
   #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
   #Run Keyword If    ${status}==True    Log To Console    Login ID......Validation for wrong Login ID Passed.
   #Run Keyword If    ${status}!=True    Log to Console    Login ID......Validation for wrong Login ID Failed.
   #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
   #text_present    id
   #log to console    clicking ok
   Wait Until Page Contains    Incorrect username or password.    4
   Page Should Contain    Incorrect username or password.
   Open Chromefn    ${SIGNUP_URL}
   log to console    clicking Sign in
   click element    xpath=//*[@href='/login']
   log to console    ENTERING DATA 5TH SESSION
   log to console    entering login............${PKG2_USER_ID}
  SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${PKG2_USER_ID}
   log to console    entering password...................${WRONG_PASSWORD}
  SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${WRONG_PASSWORD}
   log to console    entering restaurant id.........................${PKG2_COMPANY_ID}
  SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${PKG2_COMPANY_ID}
   log to console    clicking submit
  SeleniumLibrary.Click Button    xpath=//*[@id='submit']
   #Wait Until Element Is Visible    xpath=//*[@id="${errorLogin}"]
   #${error}=    get value    xpath=//*[@id="${errorLogin}"]
   #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
   #Run Keyword If    ${status}==True    Log To Console    Login ID......Validation for wrong Login ID Passed.
   #Run Keyword If    ${status}!=True    Log to Console    Login ID......Validation for wrong Login ID Failed.
   #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
   #text_present    id
   #log to console    clicking ok
   Wait Until Page Contains    Incorrect username or password.    4
   Page Should Contain    Incorrect username or password.
   Open Chromefn    ${SIGNUP_URL}
   log to console    clicking Sign in
   click element    xpath=//*[@href='/login']
   log to console    ENTERING DATA 6TH SESSION
   log to console    entering login............${PKG2_USER_ID}
  SeleniumLibrary.Input Text    xpath=//*[@id='email']    ${PKG2_USER_ID}
   log to console    entering password...................${WRONG_PASSWORD}
  SeleniumLibrary.Input Text    xpath=//*[@id='password']    ${WRONG_PASSWORD}
   log to console    entering restaurant id.........................${PKG2_COMPANY_ID}
  SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    ${PKG2_COMPANY_ID}
   log to console    clicking submit
  SeleniumLibrary.Click Button    xpath=//*[@id='submit']
   #Wait Until Element Is Visible    xpath=//*[@id="${errorLogin}"]
   #${error}=    get value    xpath=//*[@id="${errorLogin}"]
   #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
   #Run Keyword If    ${status}==True    Log To Console    Login ID......Validation for wrong Login ID Passed.
   #Run Keyword If    ${status}!=True    Log to Console    Login ID......Validation for wrong Login ID Failed.
   #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div[1]/div[2]/ul/li[5]/a/p    60
   #text_present    id
   #log to console    clicking ok
   #Wait Until Page Contains    Password attempts exceeded    4
   #Page Should Contain    Password attempts exceeded
   Wait Until Page Contains    Incorrect username or password.    4
   Page Should Contain    Incorrect username or password.
   Set Selenium Speed    1
   log to console    user should be redirected to the forgot login/forgot password page - To be verified.
   log to console  clicking BACK TO LOGIN
   #https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/need-help-sign-in
   close browser
5.1.1.12_login_using_inactive_cred
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    an8manohar@gmail.com    Test@1234    25050807
    Wait Until Element Is Visible    xpath=//*[@id='errorLogin']    timeout=10s
    ${error}=    get value    xpath=//*[@id='errorLogin']
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Incorrect username or password.
    Run Keyword If    ${status}==True    Log To Console    Validation for inactive credentials Passed.
    ...    ELSE    Log to Console    Validation for inactive credentials Failed.
    Wait Until Page Contains    Incorrect username or password.    4
    Page Should Contain    Incorrect username or password.
    Close Browser

5.1.1.16_Login_Page navigates to dashboard page_All the restaurant having info
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    grapp.user101@gmail.com    Test@123    71834503
    Sleep    10s
    Page should contain    Best8Eats Dashboard
    Close Browser

5.1.1.17_Login page navigates to restaurant info page_All the restaurant do not having the info
    Open Chromefn    ${SIGNUP_URL}
    Login With Credentials    zay.elijah1620@gmail.com  Zay@1234    19320555
    Sleep    10s
    Page should contain    Restaurant Info
    Page should contain    Please give us some details about your restaurant!
    Close Browser

5.1.1.18_Login page navigates to restaurant info page_atleast one restaurant infi is nil
    [Tags]    duplicate
    Open Chromefn    ${SIGNUP_URL}
    Run Keyword    Go To    ${SIGNUP_URL}
    Login With Credentials    zay.elijah1620@gmail.com  Zay@1234    19320555
    Sleep    10s
    Page should contain    Restaurant Info
    Page should contain    Please give us some details about your restaurant!
    Close Browser
