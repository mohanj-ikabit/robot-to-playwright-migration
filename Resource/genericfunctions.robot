*** Settings ***
Library   SeleniumLibrary
#Library   FakerLibrary    locale=en_US
Library   String
Library   Collections
Resource    URL.robot
#Suite Teardown   Close All Browsers

*** Variables ***
${LOGIN_URL}                  https://testverify-getrestaurantapp.d2vfsylrjai1i7.amplifyapp.com/
${SIGNUP_URL}                 https://testverify-getrestaurantapp.d2vfsylrjai1i7.amplifyapp.com/
${USER_ID}                    Pavanms505@gmail.com
${PASSWORD}                   Pavan@123
${COMPANY_ID}                  25427581
${BROWSER}                    Chrome
${BEST8EATS_PRIVACY_POLICY_URL}    https://best8eats.com/privacy
${BEST8EATS_TERMS_CONDITIONS_URL}  https://best8eats.com/terms
${IKABIT_URL}                 http://www.ikabit.com
${IKABIT_URL_LOGGED_OUT}           http://www.ikabit.com
${Address1}                   36 Wild Rose Ave.
${Address2}                   South Mayflower Drive
${City}                       Fishers
${State}                      FL
${Zipcode}                    32806
${FOOTER_DIVIDER}               xpath=//*[@id="footer-divider"]
${FOOTER_CONTENT}               Privacy Policy | Terms & Conditions
${FOOTER_COPYRIGHT_TEXT}        BUILT By Ikabit Inc | © Ikabit Inc.
${COPYRIGHT_YEAR}               2024
${SIGNUP_URL}    https://testverify-getrestaurantapp.d2vfsylrjai1i7.amplifyapp.com/
${LOGIN_URL}     https://testverify-getrestaurantapp.d2vfsylrjai1i7.amplifyapp.com/login
${PKG1_USER_ID}        ${USER_ID}
${PKG1_PASSWORD}         ${PASSWORD}
${PKG1_COMPANY_ID}      71834503
${PKG2_USER_ID}         ${USER_ID}
${PKG2_WRONG_PASSWORD}   Ab@1234
${PKG2_COMPANY_ID}      ${COMPANY_ID}
${WRONG_USER_ID}        grapp.user1777@gmail.com
${WRONG_PASSWORD}       Test@12
${WRONG_COMPANY_ID}     315328
${REST_OWNER_USER_ID}         pavansgowda222@gmail.com
${REST_OWNER_PASSWORD}        ${PASSWORD}
${REST_OWNER_COMPANY_ID}      30157685
${REST_MGR_USER_ID}         ${USER_ID}
${REST_MGR_PASSWORD}        ${PASSWORD}
${REST_MGR_COMPANY_ID}      ${COMPANY_ID}
${REST_PERS_USER_ID}         ${USER_ID}
${REST_PERS_PASSWORD}        ${PASSWORD}
${REST_PERS_COMPANY_ID}      ${COMPANY_ID}
${CUST_USER_ID}         anjali.ikabit@gmail.com
${CUST_PASSWORD}        ${PASSWORD}
${CUST_COMPANY_ID}      31532808

***Keywords***
Open Chromefn
    [Arguments]    ${LOGIN_URL}
    # Configure Chrome options for headless mode
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    # FIX 1: Create the argument string first to avoid syntax errors
    ${window_size}=    Set Variable    --window-size=1920,1080
    Call Method    ${chrome_options}    add_argument    ${window_size}

    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-notifications

    # Open the browser with the configured options
    Open Browser    ${LOGIN_URL}    browser=Chrome    options=${chrome_options}
    
    # FIX 2: Explicitly set window size via Selenium to ensure the layout renders correctly
    Set Window Size    1920    1080

    # Wait for the login page to load
    Wait Until Page Contains    Sign In    timeout=10s
    Wait Until Page Contains    Sign Up Free    timeout=10s
    
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

    # Wait for the login page to load
    Wait Until Page Contains    Sign In    timeout=10s
    Wait Until Page Contains    Sign Up Free    timeout=10s
 Go To Menu Subcategory Page
    [Documentation]    Navigates to Menu Subcategory page from dashboard
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings"]    timeout=10s
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category"]    timeout=10s
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    Sleep  1s

Add Single Subcategory
    [Arguments]    ${item_name}
    Click Element    xpath=//*[@id="left-${item_name}"]
    Click Element    xpath=//*[@id="add-button"]
    Page Should Be Visible    xpath=//*[@id="right-${item_name}"]   
login front
    Open Chromefn    ${LOGIN URL}
    #wait until element is visible        xpath=//*[@id="home"]/div[1]/div/div/div[2]/div/div/div[2]/button   4
    wait until element is visible     xpath=//*[@href="/login"]
    
login loginpage
    Open Chromefn    ${LOGIN URL}
    Click element    xpath=//*[@href="/login"]
    
login createuser
    Open Chromefn    ${SIGNUP_URL}
    Click element    xpath=//*[@href="/sign-up"]
    
login
    Open Chromefn    ${LOGIN URL}
   # Open Browser    ${LOGIN URL}     ${BROWSER}
    Sleep   6s
    wait until element is visible        xpath=//*[@id="standard-basic"]    10
    #wait until element is visible        xpath=//*[@href="/login"]    10
    click element    xpath=//*[@href="/login"]
    #click element    xpath=//*[@href='/login']
    Set Browser Implicit wait    2
    
    SeleniumLibrary.Input Text    xpath=//input[@id="email"]    ${USER_ID} 
    SeleniumLibrary.Input Text    xpath=//input[@id="password"]     ${PASSWORD} 
    SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]     ${COMPANY_ID}
    #freephonenum.com (canada phone number for receiving OTP SMS) - 1(778) 722-2149
    
    #SeleniumLibrary,Input Text    xpath=//input[@id="email"]    grapp32.user@outlook.com
    #SeleniumLibrary,Input Text    xpath=//input[@id="password"]     ${PASSWORD} 
    #SeleniumLibrary,Input Text    xpath=//input[@id="company-id"]     30084103
    
    wait until element is visible        xpath=//input[@id="email"]    10
    wait until element is visible        xpath=//input[@id="password"]    10
    wait until element is visible        xpath=//input[@id="company-id"]    10
    
    #99115109115
    set selenium Speed	  1
    Click Button   xpath=//*[@id="submit"]
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    sleep  2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]        
   # Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/div/div/div     30s
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s

Scroll Into View And Click
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Click Element    ${locator}
    Sleep    1s

Click Element And Waitt
    [Arguments]    ${locator}
    Click Element    ${locator}
    Sleep    1s

Confirm Popup Visibility
    Page Should Contain    Unsubscribe From Best8Eats
    Page Should Contain    You are unsubscribing from Best8Eats. All your data will be deleted. Do you want to unsubscribe ?
  
login_rest_info
    Open Chromefn    ${LOGIN URL}
   # Open Browser    ${LOGIN URL}     ${BROWSER}
    Sleep   6s
    wait until element is visible        xpath=//*[@id="standard-basic"]    10
    #wait until element is visible        xpath=//*[@href="/login"]    10
    click element    xpath=//*[@href="/login"]
    #click element    xpath=//*[@href='/login']
    Set Browser Implicit wait    2
    
    #SeleniumLibrary,Input Text    xpath=//input[@id="email"]    ${USER_ID} 
    #SeleniumLibrary,Input Text    xpath=//input[@id="password"]     ${PASSWORD} 
    #SeleniumLibrary,Input Text    xpath=//input[@id="company-id"]     ${COMPANY_ID}
    #freephonenum.com (canada phone number for receiving OTP SMS) - 1(778) 722-2149

*** Keywords ***
Click Need Help Option
    [Arguments]    ${option_id}
    SeleniumLibrary.Click Element    xpath=//*[@id="need-help-sign-in"]
    Wait Until Element Is Visible    xpath=//*[@id="${option_id}"]    timeout=10
    SeleniumLibrary.Click Element    xpath=//*[@id="${option_id}"]

Submit Invalid Phone Number And Validate Error
    [Arguments]    ${phone}    ${expected_error}
    Input Text    xpath=//*[@id="phoneNumberInput"]    ${phone}
    Click Element    xpath=//*[@id="submit"]
    Wait Until Element Is Visible    xpath=//*[@id="errorPhoneInput"]    timeout=5
    Page Should Contain    ${expected_error}

Run Multiple Invalid Phone Attempts
    [Arguments]    ${attempts}    ${expected_error}
    FOR    ${i}    IN RANGE    1    ${attempts + 1}
        Log To Console    TRIAL ${i}
        Submit Invalid Phone Number And Validate Error    191633350${i}    ${expected_error}
    END


    SeleniumLibrary.Input Text    xpath=//input[@id="email"]    grappuser50@outlook.com
    SeleniumLibrary.Input Text    xpath=//input[@id="password"]     ${PASSWORD} 
    SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]     14520898
    wait until element is visible        xpath=//input[@id="email"]    10
    wait until element is visible        xpath=//input[@id="password"]    10
    wait until element is visible        xpath=//input[@id="company-id"]    10
    
    #99115109115
    set selenium Speed	  1
    Click Button   xpath=//*[@id="submit"]
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
   # Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/div/div/div     30s
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s

login pkg1
    Open Chromefn    ${LOGIN URL}

    wait until element is visible        xpath=//*[@href="/login"]    10
    click element    xpath=//*[@href="/login"]
    
    SeleniumLibrary.Input Text  xpath=//input[@id="email"]     ${USER_ID}
    log to console    entered mail  ${USER_ID}
    SeleniumLibrary.Input Text  xpath=//input[@id="password"]     ${PASSWORD}
    log to console    entered password
    
    SeleniumLibrary.Input Text  xpath=//input[@id="company-id"]     ${COMPANY_ID}
    log to console    entered restid  ${COMPANY_ID}

    # FIX: Attempt to close any popups (Cookie banners, Notifications) that might block the submit button
    Run Keyword And Ignore Error    Click Element    xpath=//button[contains(text(), 'Accept') or contains(text(), 'Allow') or contains(text(), 'Close')]
    Run Keyword And Ignore Error    Click Element    xpath=//div[@id='onetrust-consent-sdk']//button[@class='onetrust-close-btn-handler']
    
    # Use a small delay to ensure inputs are registered
    Sleep    1s
    
    Click Button   xpath=//*[@id="submit"]
    log to console    login clicked 

    # FIX: Wait for the URL to change to /user/ to confirm login success
    # This is better than waiting for a specific element immediately
    Wait Until Location Contains    /user/    timeout=30s
    log to console    Successfully logged in, URL changed
    
    # Handle the "Insufficient Data" popup if it appears
    Sleep    2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    
    # Now wait for the dashboard element
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    

Enter User Information
    [Arguments]    ${firstName}    ${lastName}    ${phone}    ${email}    ${confirmEmail}    ${password}    ${confirmPassword}
    log to console    entering first name as...........${firstName}
    input text    xpath=//*[@id="firstName"]        ${firstName}
    log to console    entering last name as...........${lastName}
    input text    xpath=//*[@id="lastName"]        ${lastName}
    set global variable    ${pno}    ${phone}
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phoneNumberInput"]        ${pno}
    log to console    entering email as...........${email}
    input text    xpath=//*[@id="email"]        ${email}
    log to console    entering confirm email as...........${confirmEmail}
    input text    xpath=//*[@id="confirmEmail"]        ${confirmEmail}
    log to console    entering password as...........${password}
    input text    xpath=//*[@id="password"]        ${password}
    log to console    entering confirm password as...........${confirmPassword}
    input text    xpath=//*[@id="confirmPassword"]        ${confirmPassword}

login pkg2
    Open Chromefn    ${LOGIN URL}
    #Open Browser    ${LOGIN URL}     ${BROWSER}

    #Maximize Browser Window
    #wait until element is visible        xpath=//*[@id="standard-basic"]    10
    wait until element is visible        xpath=//*[@href="/login"]    10
    click element    xpath=//*[@href="/login"]
    #click element    xpath=//*[@href='/login']
    #Set Browser Implicit wait    2
    #SeleniumLibrary,Input Text  xpath=//input[@id="email"]    ${USER_ID} 
    #SeleniumLibrary,Input Text  xpath=//input[@id="password"]     ${PASSWORD} 
    #SeleniumLibrary,Input Text  xpath=//input[@id="company-id"]     ${COMPANY_ID}
    
    SeleniumLibrary.Input Text    xpath=//input[@id="email"]    ${USER_ID}
    SeleniumLibrary.Input Text    xpath=//input[@id="password"]     ${PASSWORD}
    SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]     ${COMPANY_ID}
    
    #SeleniumLibrary,Input Text    xpath=//input[@id="email"]    an8manohar@gmail.com
    #SeleniumLibrary,Input Text    xpath=//input[@id="password"]     ${PASSWORD}
    #SeleniumLibrary,Input Text    xpath=//input[@id="company-id"]     25050807
    
    set selenium Speed	  1
    Click Button   xpath=//*[@id="submit"]
    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID
    #Wait Until Element Is Visible    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/div/div/div     30s
    sleep  2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    
    
Login Pkg3
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

    Wait Until Element Is Visible    xpath=//*[@href="/login"]    10
    Click Element    xpath=//*[@href="/login"]

    Input Text    xpath=//input[@id="email"]        ${USER_ID}
    Input Text    xpath=//input[@id="password"]     ${PASSWORD}
    Input Text    xpath=//input[@id="company-id"]   

    Set Selenium Speed    1s
    Click Button          xpath=//*[@id="submit"]

    Page Should Not Contain    Incorrect username or password.
    Page Should Not Contain    Invalid Restaurant ID

    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    
Logout
    [Documentation]    Log out the user and verify that the logout process is successful.
    
    # Click the logout button
    Scroll Element Into View    xpath=//*[@href="/logout/user/logout"]
    Wait Until Element Is Visible    xpath=//*[@href="/logout/user/logout"]    timeout=10s
    Click Element    xpath=//*[@href="/logout/user/logout"]
    
    # Verify that the user is redirected to the login page
    Wait Until Page Contains    Sign In    timeout=15s
    Wait Until Page Contains    Sign Up Free    timeout=15s
    Element Should Be Visible    xpath=//*[@href="/login"]    timeout=10s
    
    # Log the successful logout
    Log To Console    Logout successful
    
logout and close browser
    #SeleniumLibrary.Click Element   xpath=//*[@href="/logout"]  
    SeleniumLibrary.Click Element   xpath=//*[@href="/logout/user/logout"]  
    Close Browser

account_info_email_validation
      [arguments]    ${form}
    #log to console    selecting any restaurant resname1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="Restaurant-Name"]    resname
    
    #use default cuisine
    #log to console    selecting cuisine------------Belgian
    #Select from list by label    xpath=//*[@id="outlined"]    Belgian
    
    log to console        entering phone number as--------------1227856374
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    
    log to console    input restaurant address as main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincoln main
    
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    
    log to console    selecting city as------------------San Jose
    Input text    xpath=//*[@id="text-city"]    San Jose
    
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    
    #log to console    selecting state as -------------------DC
    #Select from list by label    xpath=//*[@id="select-state"]    DC
    
    log to console    selecting the same as physical address checkbox
    select checkbox     xpath=//*[@id="check-same-address"]
    
    log to console    entering customer phone number as--------------1227856374
    Input text    xpath=//*[@id="textCustomerSupportPhone"]    1227856374

    Input text    xpath=//*[@id="text-customer-support-email"]    ${form}
    log to console    entering ${form} for wrong email format validaiton

    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
    
    log to console    entering working days
    #select checkbox for Monday as closed, and so forth for all days
    click element    xpath=//*[@id="check-monday"]
    
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[17]/div/header/div/div[4]/svg/path
    
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    
    log to console    saving the data by clicking save
    click element    xpath=//*[@id="save-and-other-rest-info"]
    Page Should Contain    Email is not valid
    #${error}    get text    xpath=
    #log to console    ${error}
    reload page
    

account_info_correct_email_validation
      [arguments]    ${form}
    #log to console    selecting any restaurant resname1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="Restaurant-Name"]    resname
    
    #use default cuisine
    #log to console    selecting cuisine------------Belgian
    #Select from list by label    xpath=//*[@id="outlined"]    Belgian
    
    log to console        entering phone number as--------------1227856374
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    
    log to console    input restaurant address as main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincoln main
    
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    
    log to console    selecting city as------------------San Jose
    Input text    xpath=//*[@id="text-city"]    San Jose
    
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    
    #log to console    selecting state as -------------------DC
    #Select from list by label    xpath=//*[@id="select-state"]    DC
    
    log to console    selecting the same as physical address checkbox
    select checkbox     xpath=//*[@id="check-same-address"]
    
    log to console    entering customer phone number as--------------1227856374
    Input text    xpath=//*[@id="textCustomerSupportPhone"]    1227856374

    Input text    xpath=//*[@id="text-customer-support-email"]    ${form}
    log to console    entering ${form} for wrong email format validaiton

    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
    
    log to console    entering working days
    #select checkbox for Monday as closed, and so forth for all days
    click element    xpath=//*[@id="check-monday"]
    
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[17]/div/header/div/div[4]/svg/path
    
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    
    log to console    saving the data by clicking save
    click element    xpath=//*[@id="save-and-other-rest-info"]
    Page Should Not Contain    Email is not valid
    #${error}    get text    xpath=
    #log to console    ${error}
    reload page
    
account_info_correct_email_validation_donotuse
      [arguments]  ${form}
      log to console    selecting any restaurant resname1
    Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    Select from list by label    xpath=//*[@id="outlined"]    Belgian
    Input text    xpath=//*[@id="text-phone-number"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline12"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------DC
    Select from list by label    xpath=//*[@id="select-state"]    DC
    log to console    selecting the same as physical address checkbox
    log to console    selecting state as -------------------15 Minutes
    Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
    log to console    selecting state as -------------------15 Minutes
    Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
    Input text    xpath=//*[@id="text-customer-support-email"]    ${form}
    log to console    entering ${form} for correct email format validation
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[17]/div/header/div/div[4]/svg/path
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    log to console    saving the data by clicking next
    click element    xpath=//*[@id="next"]
    wait until element is visible    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="go-back"]
    reload page
    
Input Primary Address
    [Documentation]    Input primary address details into the respective fields.
    [Arguments]        ${address1}=${Address1}    ${address2}=${Address2}    ${city}=${City}    ${state}=${State}    ${zipcode}=${Zipcode}
    
    # Wait for the elements to be visible
    Wait Until Element Is Visible    xpath=//input[@id="paddress1"]    timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="paddress2"]    timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="pcity"]        timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="pstate"]       timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="pzip"]         timeout=10s
    
    # Input address details
    SeleniumLibrary.Input Text    xpath=//input[@id="paddress1"]    ${address1}
    SeleniumLibrary.Input Text    xpath=//input[@id="paddress2"]    ${address2}
    SeleniumLibrary.Input Text    xpath=//input[@id="pcity"]        ${city}
    SeleniumLibrary.Input Text    xpath=//input[@id="pstate"]       ${state}
    SeleniumLibrary.Input Text    xpath=//input[@id="pzip"]         ${zipcode}

    
Input Secondary Address
    [Documentation]    Input secondary address details into the respective fields.
    [Arguments]        ${address1}=${Address1}    ${address2}=${Address2}    ${city}=${City}    ${state}=${State}    ${zipcode}=${Zipcode}
    
    # Wait for the elements to be visible
    Wait Until Element Is Visible    xpath=//input[@id="maddress1"]    timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="maddress2"]    timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="mcity"]        timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="mstate"]       timeout=10s
    Wait Until Element Is Visible    xpath=//input[@id="mzip"]         timeout=10s
    
    # Input address details
    SeleniumLibrary.Input Text    xpath=//input[@id="maddress1"]    ${address1}
    SeleniumLibrary.Input Text    xpath=//input[@id="maddress2"]    ${address2}
    SeleniumLibrary.Input Text    xpath=//input[@id="mcity"]        ${city}
    SeleniumLibrary.Input Text    xpath=//input[@id="mstate"]       ${state}
    SeleniumLibrary.Input Text    xpath=//input[@id="mzip"]         ${zipcode}
    
updating data
    set selenium speed	1
    Log to Console    "Updating data"
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@class="btn btn-primary btn-round"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@class="btn btn-primary btn-round"]  10s
    SeleniumLibrary.Click Button    xpath=//*[@class="btn btn-primary btn-round"]
    #Page Should Contain    Updating Data
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//*[@class="btn btn-round btn-primary"]   50s
    SeleniumLibrary.Click Button    xpath=//*[@class="btn btn-round btn-primary"]
    SeleniumLibrary.Wait Until Page Contains Element    xpath=//*[@class="btn btn-primary btn-round"]    50s

validation error
    set selenium speed	1
    SeleniumLibrary.Click Button   xpath=//*[@class="btn btn-primary btn-round"]
    #Page Should Contain    Validation Error
    SeleniumLibrary.Wait Until Page Contains Element  xpath=//*[@class="btn btn-round btn-primary"]   30s 
    SeleniumLibrary.Click Button   xpath=//*[@class="btn btn-round btn-primary"]
    SeleniumLibrary.Wait Until Page Contains Element  xpath=//*[@class="btn btn-primary btn-round"]    30
 
updating data modify form
    set selenium speed	1
    Scroll Element Into View    xpath=//*[@id="update"][@class="btn btn-primary btn-round"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="update"][@class="btn btn-primary btn-round"]  30s
    SeleniumLibrary.Click Button   xpath=//*[@id="update"][@class="btn btn-primary btn-round"]
    #Page Should Contain    Updating Data
    SeleniumLibrary.Click Button   xpath=//*[@id="successDismiss"][@class="btn btn-round btn-primary"]
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="update"][@class="btn btn-primary btn-round"]  50
  
create user data
    #${fname}    First Name
    log to console    entering first name as............M
    Input text    xpath=//*[@id="firstName"]    M
    #${lname}    G
    log to console    entering last name as.............G
    Input text    xpath=//*[@id="lastName"]    G
    ${phone}    Generate random string    10    123456789
    log to console    entering phone number as.............${phone}
    Input text    xpath=//*[@id="phone"]    ${phone}
    #${email}    Email
    log to console    entering Email as.............gx@gmail.com
    Input text    xpath=//*[@id="email"]    gx@gmail.com
    log to console    entering confirm Email as.............gx@gmail.com
    Input text    xpath=//*[@id="confirmEmail"]    gx@gmail.com
    #${password}    Password
    log to console    entering password and confirm password as..........testAX@123
    Input text    xpath=//*[@id="password"]    testAX@123
    Input text    xpath=//*[@id="confirmPassword"]    testAX@123
    click element    xpath=//*[@id="submit"]
    log to console    clicking submit
    wait until element is visible    xpath=//*[@id="verifyPhoneNumber"]
    log to console    submit successful

open link
     [arguments]  ${modulename}   ${form}
     set selenium Speed		1
    Log to Console    "\nOpening ${modulename} > ${form}...."   
    SeleniumLibrary.Click Element   xpath=//*[@href="/manage"]
    SeleniumLibrary.Click Element   xpath=//*[@href="/manage/${modulename}"]
    SeleniumLibrary.Click Element   xpath=//*[@href="/manage/${modulename}${form}"]
    
scroll into element
    [arguments]      ${elementID}
    Scroll Element Into View    xpath=//*[@id="${elementID}"] 
    Wait Until Element Is Visible    xpath=//*[@id="${elementID}"]  10s
    Element Should Be Visible      xpath=//*[@id="${elementID}"]  
    ${Status}    Element Should Be Visible    xpath=//*[@id="${elementID}"]  
    Run Keyword If  ${Status}!= None     Capture Page Screenshot      
    [RETURN]    ${Status}
    
wait for
    [Arguments]    ${id}
    set selenium Speed    ${speed}
    FOR    ${index}    IN RANGE    1    ${max_retry_count}
        ${IsxEqual}=    Run Keyword And Return Status    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="${id}"]
        ${IsEqual}=    Run Keyword And Return Status    SeleniumLibrary.wait until element is visible    xpath=//*[@id="${id}"]    15
        Run Keyword If    '${IsEqual}'=='True'    Run Keywords    EXIT FOR LOOP
        Run Keyword If    '${IsEqual}'=='False'    Run Keyword    fail    element not visible
    END
    Run Keyword If    '${IsEqual}'=='False'    capture page screenshot

Validate Email ID
    [Arguments]    ${first_name}    ${last_name}    ${phone_number}    ${email_data}
    [Documentation]    Validate email input field by entering various email formats and verifying their rejection.
    
    # Set Selenium speed for debugging purposes
    Set Selenium Speed    1
    
    # Input first name, last name, and phone number
    Input Text    xpath=//*[@id="firstname"]    ${first_name}
    Input Text    xpath=//*[@id="lastname"]     ${last_name}
    Input Text    xpath=//*[@id="phno"]         ${phone_number}
    
    # Scroll into view and interact with the email field
    Scroll Element Into View    xpath=//*[@id="email"]
    SeleniumLibrary.Input Text    xpath=//*[@id="email"]    ${email_data}
    Log To Console    Entered email: ${email_data}
    
    # Submit the form and wait for validation feedback
    Click Element    xpath=//*[@id="submit"]
    Wait Until Element Is Visible    xpath=//*[@id="error-message"]    timeout=10s
    
    # Verify that incorrect email formats are rejected
    Page Should Contain    Invalid email format
    Log To Console    Incorrect email format (${email_data}) was rejected as expected.

field label
    [Arguments]    ${id}    ${text}
    ${pattern}=		get text	 xpath=//*[@id="${id}"]
    Should be equal as strings		${pattern}     ${text}
    log to console	field label is.............${pattern}

confirm email error
    [Arguments]    ${id}    ${id2}	${text}		${text2}
     input text		xpath=//*[@id="${id}"]		${text}	
     input text		xpath=//*[@id="${id2}"]		${text2}
     
confirm password error
    [Arguments]    ${id}    ${id2}	${text}		${text2}
     input text		xpath=//*[@id="${id}"]		${text}	
     input text		xpath=//*[@id="${id2}"]		${text2}


text_present
    [Arguments]    ${id}
    ${pattern}=    get text    xpath=//*[@id="${id}"]
    log to console    text present is...............${pattern}

list order
     [arguments]  ${listID}
      @{items}   Get List Items   xpath=//select[@id="${listID}"]
      Remove From List    ${items}    0
      ${order_alphabet}  Copy List      ${items}
      Sort List    ${order_alphabet}
      Lists Should Be Equal    ${order_alphabet}   ${items}    
      Log to Console   List is in alphabetical order - ${listID}                
      Run Keyword And Ignore Error    Log    List is not in alphabetical order - ${listID}
      

vOpen Browser To Login Page
    [Arguments]    ${url}
    [Documentation]    Open the browser and navigate to the login page.
    Open Browser    ${url}    browser=Chrome
    Maximize Browser Window
    Wait Until Page Contains    Sign In
    Wait Until Page Contains    Sign Up Free

Ensure User Is Logged Out
    [Documentation]    Ensure the user is logged out by checking for login/sign-up links.
    Run Keyword If    '${IsLoggedIn}' == 'True'    Logout

Verify Footer Links
    [Documentation]    Verify that the footer contains the expected links and text.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2024
    Element Should Be Visible    ${FOOTER_DIVIDER}

Verify Footer Privacy Policy URL
    [Arguments]    ${url}
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Click Element    xpath=//*[contains(@href, "${url}")]
    Wait Until Page Contains    Privacy Policy
    Go Back

Verify Footer Terms Conditions URL
    [Arguments]    ${url}
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Click Element    xpath=//*[contains(@href, "${url}")]
    Wait Until Page Contains    Terms & Conditions
    Go Back

Verify Footer Ikabit URL Logged Out
    [Arguments]    ${url}
    [Documentation]    Verify that the Ikabit URL is correct and clickable in the logged-out state.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Click Element    xpath=//*[contains(@href, "${url}")]
    Wait Until Page Contains    Ikabit Inc
    Go Back

Add_Card
    [Arguments]    ${CardNo}    ${IDforRadioButton}    ${ValueOfRadioLabel}
    Log To Console    Add Card
    Log To Console    Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    Wait Until Element Is Visible    tag:iframe
    Select Frame    tag:iframe
    ##Select Frame    top-frame  (does not work)
    #Input Text     name:email    johndoe@gmail.com
    #Input Text When Element Is Visible    name:shipping-name    John Doe
    Input text    xpath=//*[@id="email"]    johndoe@gmail.com
    Input text    xpath=//*[@id="shipping-name"]    John Doe
    Input text    xpath=//*[@id="shipping-street"]    1234 Main street
    Input text    xpath=//*[@id="shipping-zip"]    95630
    Input text    xpath=//*[@id="shipping-city"]    Folsom
    #Input text   xpath=//*[@id="shipping-country  US"]  
    click element    xpath=//*[@id="submitButton"]
    Input text    xpath=//*[@id="card_number"]    4242       
    Input text    xpath=//*[@id="card_number"]    4242      clear=False 
    Input text    xpath=//*[@id="card_number"]    4242      clear=False   
    Input text    xpath=//*[@id="card_number"]    4242      clear=False 
    Input text    xpath=//*[@id="cc-exp"]    10/    
    Input text    xpath=//*[@id="cc-exp"]    2025       clear=False    
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]   
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    Sleep   2s
    Unselect Frame
    log to console    added a new card 
    #Sleep   10s
    #log to console    reloading page
    #Reload page    
    #Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    Sleep   15s
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page Should Not Contain    Duplicate Card
    Page Should Not Contain    You have entered a card number that already exists.
    #Page Should Not Contain Element     popup405
    
    Page Should Contain     Payment Info*
    #Current Frame Should Contain     ${VisaValueOfRadioLabel}
    #Page Should Contain Radio Button     ${IDforRadioButton}
    #Page Should Contain Element    ${VisaValueOfRadioLabel}
    #Wait Until Page Contains Element     ${IDforRadioLabel}    30
    #4_1_9_7_radio_label     ${VisaRadiobutton}    ${ValueOfRadioLabel}
    #Wait Until Page Contains Element     ${IDforRadioButton}    30

    Log To Console    Navigate to Account Settings
    Click Element    xpath=//*[@href="/user/account-settings"]
    Log To Console    Navigate back to the Admin Settings > Subscription & Billing
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Click Element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    log to console    Wait until card appears on the page to verify
    Page Should Contain Element     xpath=//*[@id="visa4242"] 
    #Wait Until Page Contains Element     ${IDforRadioLabel}    30
    #4_1_9_7_radio_label    ${VisaRadiobutton}    ${ValueOfRadioLabel}
    #Wait Until Page Contains Element     ${IDforRadioButton}    30
    #Page Should Contain Radio Button     ${IDforRadioButton}
    Log To Console   Verify the card is displayed after logging out & then logging back in
    Logout
    
    Log To Console   Logging in
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Log To Console    Wait until card appears on the page to verify
    Page Should Contain Element     xpath=//*[@id="visa4242"] 
    #Wait Until Page Contains Element     ${IDforRadioLabel}    30
    #4_1_9_7_radio_label    ${VisaRadiobutton}    ${VisaValueOfRadioLabel}
    #Wait Until Page Contains Element     ${IDforRadioButton}    30
    #Page Should Contain Radio Button     ${IDforRadioButton}
    Log To Console    Completed Adding card
    
Delete_Card
    [Arguments]    ${IDforDeleteButton}    ${IDforRadioButton}     ${ValueOfRadioLabel}
    #ID for delete icon includes the card no to help identify which card the user wants to delete
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    Page should contain element    ${IDforRadioButton}
    Page should contain radio button    ${IDforRadioButton}
    Page should contain    ${ValueOfRadioLabel}
    
    Click Button    xpath=//*[@id="${IDforDeleteButton}"]
    Sleep   10s
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain     ${ValueOfRadioLabel}
    
    #Verify the card is not displayed after navigating to another menu
    #Navigate to Account Settings
    Click Element    xpath=//*[@href="/user/account-settings"]
    #Navigate back to the Admin Settings > Subscription & Billing
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Click Element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain     ${ValueOfRadioLabel}
    Logout
    
    #Verify the card is not displayed after logging out & then logging back in
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain    ${ValueOfRadioLabel}
    
Edit_Card
    #[Arguments]   ${IDforEditButton}   ${Email}   ${Name}   ${BSt}   ${BCity}   ${BState}   ${MSt}   ${MCity}   ${MState}   ${ExpDate}   ${cvv}
    [Arguments]   ${IDforEditButton}    ${CardNo}    ${IDforRadioButton}     ${IDforRadioLabel}    ${ValueOfRadioLabel}
    #ID for edit icon includes the card no to help identify which card the user wants to delete
    #Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Log To Console    Click Edit Card button/icon. Edit popup should open up. Verify the text, ids of the elements, UPDATE button & 'x' icon for closing the popup
    Click Button    xpath=//*[@id="${IDforEditButton}"]
    Sleep   3s
    Page Should Contain    Card Update
    Page Should Contain    Expiry Month
    Page Should Contain    Expiry Year
    Page Should Contain Element    expMonth
    Page Should Contain Element    expYear
    Page Should Contain Element    expMonth-label
    Page Should Contain Element    expYear-label
    Page Should Contain Element    noPopUpMaxLogin
    Page Should Contain Element    closePopUpOpen

    Log To Console   Get the original values of Exp Month & Exp Year
    #${month_old}=		get text	 xpath=//*[@id="expMonth"]
    ${month_old}=    Get Element Attribute    xpath=//*[@id="expMonth"]    value
    #Should be equal as strings		${pattern1}     ??
    #${year_old}=		get text	 xpath=//*[@id="expYear"]
    ${year_old}=    Get Element Attribute    xpath=//*[@id="expYear"]    value
    #Should be equal as strings		${pattern2}     ??
    Log To Console	 Original Exp Month, Exp Year are.............${month_old}, ${year_old}
    
    Log To Console    Edit the values of Exp Month & Exp Year
    Input text    xpath=//*[@id="expMonth"]    3
    Input text    xpath=//*[@id="expYear"]    2027
    #${month_new}=		get text	 xpath=//*[@id="expMonth"]
    ${month_new}=    Get Element Attribute    xpath=//*[@id="expMonth"]    value
    Should be equal as strings		${month_new}     3
    #${year_new}=		get text	 xpath=//*[@id="expYear"]
    ${year_new}=    Get Element Attribute    xpath=//*[@id="expYear"]    value
    Should be equal as strings		${year_new}     2027
    Log To Console	 Edited Exp Month, Exp Year are.............${month_new}, ${year_new}
    
    Log To Console    Click Update button to  save the values entered above
    Click Button    xpath=//*[@id="noPopUpMaxLogin"]
    
    Log To Console    Navigate to another Menu
    Click Element     xpath=//*[@href="/user/account-settings"]
    Wait Until Element Is Visible        xpath=//*[@id="firstName"]    10
    Page Should Contain      Account Settings
    
    Log To Console    Navigate back to Admin Settings
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Click Element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Page Should Contain      Subscription & Billing    
    Scroll Element Into View    xpath=//*[@id="next"]
    Wait Until Element Is Visible    xpath=//*[@id="${IDforEditButton}"]    10
    
    Log To Console    Edit Card. Opens popup. Verify the edited & saved month/exp year above
    Click Button    xpath=//*[@id="${IDforEditButton}"]
    #${month_new2}=		get text	 xpath=//*[@id="expMonth"]
    ${month_new2}=    Get Element Attribute    xpath=//*[@id="expMonth"]    value
    Should be equal as strings		${month_new2}     3
    #${year_new2}=		get text	 xpath=//*[@id="expYear"]
    ${year_new2}=    Get Element Attribute    xpath=//*[@id="expYear"]    value
    Should be equal as strings		${year_new2}     2027
    Log To Console	 Verified Exp Month, Exp Year are.............${month_new2}, ${year_new2}
 
    Log To Console    Edit the original values of exp month & exp year back
    Input text    xpath=//*[@id="expMonth"]    ${month_old}
    #${month_reset}=		get text	 xpath=//*[@id="expMonth"]
    ${month_reset}=    Get Element Attribute    xpath=//*[@id="expMonth"]    value
    Should be equal as strings		${month_reset}     ${month_old}
    Input text    xpath=//*[@id="expYear"]     ${year_old}
    #${year_reset}=		get text	 xpath=//*[@id="expYear"]
    ${year_reset}=    Get Element Attribute    xpath=//*[@id="expYear"]    value
    Should be equal as strings		${year_reset}     ${year_old}
    Log To Console	 Reset Exp Month, Exp Year are.............${month_reset}, ${year_reset}

    Log To Console    Click Update button to  save the original values entered above and close the Edit popup
    Click Button    xpath=//*[@id="noPopUpMaxLogin"]

    Wait Until Page Contains Element     ${IDforRadioButton}    30
    Page Should Contain Radio Button     ${IDforRadioButton}
    #Wait Until Page Contains Element     ${IDforRadioLabel}    30
    #4_1_9_7_radio_label    ${IDforRadioLabel}    ${ValueOfRadioLabel}
    #click edit again to verify the values
    
adminsettings_billing_add_new_card_not_supported_byBest8Eats
    [Arguments]    ${CardNo}    ${IDforRadioButton}    ${IDforRadioLabel}    ${ValueOfRadioLabel}
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    Wait Until Element Is Visible    tag:iframe
    Select Frame    tag:iframe
    #Input Text     name:email    johndoe@gmail.com
    #Input Text When Element Is Visible    name:shipping-name    John Doe
    Input text    xpath=//*[@id="email"]    johndoe@gmail.com
    Input text    xpath=//*[@id="shipping-name"]    John Doe
    Input text    xpath=//*[@id="shipping-street"]    1234 Main street
    Input text    xpath=//*[@id="shipping-zip"]    95630
    Input text    xpath=//*[@id="shipping-city"]    Folsom
    #Input text   xpath=//*[@id="shipping-country  US"]  
    click element    xpath=//*[@id="submitButton"]

    Input text    xpath=//*[@id="card_number"]    ${CardNo}
    Input text    xpath=//*[@id="cc-exp"]    11/2025
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   5s
    log to console    verify that a popup is shown that the payment method is unacceptable. close the pooup.
    #Wait Until Page Contains    Unacceptable Payment Method   10s   
    #Page Should Contain    Acceptable cards are Visa,Mastercard,American Express & Discover
    #Page Should Contain    Unacceptable Payment Method
    #Page Should Contain Element    closePopUpMaxLogin
    click element    xpath=//*[@id="closePopUpMaxLogin"]
    
    log to console    reload the page and verify that the card is not present
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Page should not contain    ${ValueOfRadioLabel}
    Page should not contain element    ${IDforRadioLabel}
    #Page should not contain element    ${IDforRadioButton}
    #Page should not contain radio button    ${IDforRadioButton}
    logout

dashboard_insufficient_data
    [Arguments]    ${Sales_Category}    ${Sales_Timeline}
    Scroll Element Into View    xpath=//*[@id="FooterURL"]
    #For Sales Category, select Dine In; For Sales Timeline, select This Week; popup for Insufficient data should be displayed
    Click Element    xpath=//*[@id="salesCategory"]
    Click Element    xpath=//*[contains(@data-value,'pickUp')]
    BuiltIn.Sleep    2s
    Click Element    xpath=//*[@id="salesTimeline"]
    Click Element    xpath=//*[contains(@data-value,'${Sales_Timeline}')]
    BuiltIn.Sleep    2s
    #Page Should Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
    #Page Should Contain    Please try again later!
    #Page Should Contain Element    yesPopUpCancelChanges1
    #Page Should Contain Element    closePopUpCancelChanges1
    
    #Click Okay, popup should get closed
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Page Should Not Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
    Page Should Not Contain    Please try again later!
    
    Login pkg1
    Log To Console    Login successful
    Sleep    4s
    Log To Console    Going to restaurant accounts
    Click Element And Wait    xpath=//*[@href="/user/restaurant-info"]
    Click Element And Wait    xpath=//*[@href="/user/restaurant-info/create-promocodes"]


Enter Promo Code Details
    [Arguments]    ${name}    ${code}    ${val}    ${val_bill}    ${max_usage}
    Input Text And Scroll    id=promoCodeName    ${name}
    Clear Element Text    id=promoCode
    Input Text And Scroll    id=promoCode    ${code}
    Log To Console    Entering promo code value as ${code}

    Select Radio Button And Scroll    valueBased
    Input Text And Scroll    id=val    ${val}
    Input Text And Scroll    id=valBill    ${val_bill}
    Select Radio Button And Scroll    singleUse
    Input Text And Scroll    id=maxUsage    ${max_usage}
    Log To Console    Entering max usage as ${max_usage}


Input Text And Scroll
    [Arguments]    ${locator}    ${text}
    Scroll Element Into View    ${locator}
    Input Text    ${locator}    ${text}
    Sleep    1s


Select Radio Button And Scroll
    [Arguments]    ${value}
    Scroll Element Into View    xpath=//*[@value="${value}"]
    Click Element    xpath=//*[@value="${value}"]
    Sleep    1s


Click Element And Wait
    [Arguments]    ${locator}
    Click Element    ${locator}
    Sleep    2s


Disable And Verify Promo Code Creation Is Blocked
    [Arguments]    ${promocode}
    # Disable promo code
    Click Element    xpath=//*[@id="disable"][@value="${promocode}"]
    Wait Until Element Is Visible    id=createPromoCode    timeout=10s
    Reload Page

    # Attempt to create same promo code again
    Input Text And Scroll    id=promoCodeName    ${PROMO_CODE_NAME}
    Clear Element Text    id=promoCode
    Input Text And Scroll    id=promoCode    ${promocode}
    Select Radio Button And Scroll    valueBased
    Input Text And Scroll    id=val    5
    Input Text And Scroll    id=valBill    25
    Select Radio Button And Scroll    singleUse
    Input Text And Scroll    id=maxUsage    200

    Click Element And Wait    id=createPromoCode
    Wait Until Element Is Visible    id=promoCodeName
    Scroll Element Into View    xpath=//*[@href="http://www.ikabit.com"]

    # Confirm disabled promo code still exists
    Page Should Contain Element    xpath=//*[@id="disable"][@value="${promocode}"]

Login With Remember Me Selected
    [Arguments]    ${email}    ${password}    ${company_id}
    click element    xpath=//*[@href='/login']
    Input Text    email    ${email}
    Input Text    password    ${password}
    Input Text    company-id    ${company_id}
    Checkbox Should Be Selected    xpath=//*[@id="checkRemember"]
    Click Element    xpath=//*[@id='submit']
    Wait Until Element Is Visible    xpath=//*[@href='/user/restaurant-info']    10s

Logout And Verify LoginPage
    logout
    Wait Until Element Is Visible    xpath=//*[@href='/login']    10s
    click element    xpath=//*[@href='/login']

Verify Email And Company ID Are Prepopulated
    [Arguments]    ${email}    ${company_id}
    ${email_value}=    Get Value    xpath=//*[@id='email']
    should be equal as strings    ${email_value}    ${email}
    ${company_value}=    Get Value    xpath=//*[@id='company-id']
    should be equal    ${company_value}    ${company_id}

Verify Inputs Are Empty
    ${email_value}=    Get Value    xpath=//*[@id='email']
    should be equal as strings    ${email_value}    ${EMPTY}
    ${password_value}=    Get Value    xpath=//*[@id='password']
    should be equal    ${password_value}    ${EMPTY}
    ${company_value}=    Get Value    xpath=//*[@id='company-id']
    should be equal    ${company_value}    ${EMPTY}

Logout And Verify
    [Documentation]    Performs logout and verifies logout page content
    Click Element    xpath=//*[@href="/logout/user/logout"]
    Page Should Contain    Best8Eats Account Logout!
    Page Should Contain    Thank You For Using Best8Eats!
    Page Should Contain    You Have Been Successfully Logged Out.
    Wait Until Element Is Visible    xpath=//*[@href='/login']    10s

Verify User Cannot Navigate_Back_To_Dashboard
    [Documentation]    Goes back in browser history and verifies user can't access dashboard or protected pages
    Go Back
    Go Back
    Page Should Not Contain    Best8Eats Dashboard
    Page Should Not Contain Element    xpath=//*[@href="/user/restaurant-info"]
    Page Should Not Contain Element    xpath=//*[@href="/user/menu-help"]
    Page Should Not Contain Element    xpath=//*[@href="/user/account-settings"]

Open Browser To Login Page
    login pkg1

Go To Restaurant Info Page
    Click Element    xpath=//*[@href="/user/restaurant-info"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]

Verify Mailing Address Fields Are Enabled
    Page Should Contain Element    xpath=//*[@id="text-restaurant-addressline1"]
    Page Should Contain Element    xpath=//*[@id="textMailingAddressline2"]
    Page Should Contain Element    xpath=//*[@id="textMailingCity"]
    Page Should Contain Element    xpath=//*[@id="text-zipcode"]
    Page Should Contain Element    xpath=//*[@id="selectMailingState"]
    Element should be enabled    xpath=//*[@id="text-restaurant-addressline1"]
    Element should be enabled    xpath=//*[@id="textMailingAddressline2"]
    Element should be enabled    xpath=//*[@id="textMailingCity"]
    Element should be enabled    xpath=//*[@id="text-zipcode"]
    Element should be enabled    xpath=//*[@id="selectMailingState"]

Verify Mailing Address Fields Are Hidden
    Element should not be visible     xpath=//*[@id="textMailingAddressline1"]
    Element should not be visible     xpath=//*[@id="textMailingAddressline2"]
    Element should not be visible     xpath=//*[@id="textMailingCity"]
    Element should not be visible     xpath=//*[@id="textMailingZipcode"]

Login And Navigate To Restaurant Info
    [Arguments]    ${package}
    login           ${package}
    log to console    login successful
    Click Element     xpath=//*[@href="/user/restaurant-info"]
