*** Settings ***
Default Tags      rememberme
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Text on form.robot




*** Test Cases ***
5.1.6.1_user_rmmbrme_login_details
    #remember me selected by default, login, logout, login within the same browser
    set selenium Speed    1
    #log to console    opening web app
    #Open Browser    ${LOGIN URL}    ${BROWSER}    alias=mybrowser
    Open Chromefn    ${LOGIN URL}
    log to console    clicking Sign in
    click element    xpath=//*[@href='/login']
    log to console    entering login............grapp.user101@gmail.com
    SeleniumLibrary.Input Text    xpath=//*[@id='email']    grapp.user101@gmail.com
    log to console    entering password...................Test@123
    SeleniumLibrary.Input Text    xpath=//*[@id='password']    Test@123
    log to console    entering restaurant id.........................71834503 
    SeleniumLibrary.Input Text    xpath=//input[@id="company-id"]    71834503 
    log to console    checkbox is selected
    log to console    clicking submit
    SeleniumLibrary.Click Element    xpath=//*[@id='submit']

    #Wait Until element is visible    xpath=//*[@id="root"]/div/div[2]
    Wait Until element is visible    xpath=//*[@href='/user/restaurant-info']     10s
    logout
    Wait Until element is visible    xpath=//*[@href='/login']     10s
    log to console    Clicking Sign in after Logout
    click element    xpath=//*[@href='/login']
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id='email']
    log to console    checking if login contains grapp.user101@gmail.com
    #SeleniumLibrary.Element Attribute value should be    xpath=//*[@id='email']    value    grapp.user17@gmail.com
    ${pattern}=    Get Value    xpath=//*[@id='email']
    should be equal as strings    ${pattern}    grapp.user101@gmail.com
    log to console    test pass
    #SeleniumLibrary.Element Text Should Be    xpath=//*[@id='password']
    log to console    checking if company contains 71834503 
    #SeleniumLibrary.Element Attribute Value Should Be    xpath=//*[@id='company-id']    value    71834503 
    ${pattern}=    Get Value    xpath=//*[@id='company-id']
    should be equal    ${pattern}    71834503 
    log to console    test pass
    
    reload page
    log to console    Reloaded Page
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id='email']
    Checkbox Should Be Selected    xpath=//*[@id="checkRemember"]
    log to console    checking if login contains grapp.user101@gmail.com
    #SeleniumLibrary.Element Attribute value should be    xpath=//*[@id='email']    value    grapp.user17@gmail.com
    ${pattern}=    Get Value    xpath=//*[@id='email']
    should be equal as strings    ${pattern}    grapp.user101@gmail.com
    log to console    test pass
    #SeleniumLibrary.Element Text Should Be    xpath=//*[@id='password']
    log to console    checking if company contains 71834503 
    #SeleniumLibrary.Element Attribute Value Should Be    xpath=//*[@id='company-id']    value    71834503 
    ${pattern}=    Get Value    xpath=//*[@id='company-id']
    should be equal    ${pattern}    71834503 
    log to console    test pass
    SeleniumLibrary.Close Browser

5.1.6.2_user_rmmbrme_login_details_nopreviousbrowserdata
    Open Chromefn    ${LOGIN URL}
    log to console    Clicking Sign in after closing Browser, and opening a new Browser
    click element    xpath=//*[@href='/login']
    Checkbox Should Be Selected    xpath=//*[@id="checkRemember"]

    sleep  5s
    page should not contain    Field cannot be Empty
    page should not contain    Incorrect username or password.
    page should not contain    Email is not valid
    page should not contain    Invalid Restaurant ID

    log to console    Verifying inputs are empty
    Verify Inputs Are Empty

    Close Browser

5.1.6.3_user_rmmbrme_clr_browser_data
    set selenium Speed    1
    Open Chromefn    ${LOGIN URL}
    log to console    clicking Sign in
    Login With Remember Me Selected    grapp.user101@gmail.com    Test@123    71834503
    Logout_And_Verify_LoginPage

    Delete All Cookies
    Close Browser
    log to console    Opening browser. Clicking Sign In.
    Open Chromefn    ${LOGIN URL}
    click element    xpath=//*[@href='/login']

    log to console    Verifying inputs are empty after clearing cookies
    Verify Inputs Are Empty

    close browser

5.1.6.4_user_rmmbrme_unchck_no_logindetails
    set selenium Speed    1
    log to console    opening web app
    Open Chromefn    ${LOGIN URL}
    log to console    clicking Sign in
    click element    xpath=//*[@href='/login']

    Input Text    email    grapp.user101@gmail.com
    Input Text    password    Test@123
    Input Text    company-id    71834503

    ${email_value}=    Get Value    xpath=//*[@id='email']
    should be equal as strings    ${email_value}    grapp.user101@gmail.com
    log to console    email is read correctly

    ${company_value}=    Get Value    xpath=//*[@id='company-id']
    should be equal    ${company_value}    71834503
    log to console    restaurant id is read correctly

    unselect checkbox     xpath=//*[@id="checkRemember"]
    Checkbox Should Not Be Selected    xpath=//*[@id="checkRemember"]
    log to console    checkbox is not selected

    Click Element    xpath=//*[@id='submit']
    sleep  3s
    page should not contain    Field cannot be Empty
    page should not contain    Incorrect username or password.
    page should not contain    Email is not valid
    page should not contain    Invalid Restaurant ID

    Wait Until Element Is Visible     xpath=//*[@href='/user/restaurant-info']     15s
    logout
    Wait Until Element Is Visible    xpath=//*[@href='/login']     10s
    log to console    Clicking Sign in after Logout
    click element    xpath=//*[@href='/login']
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id='email']      10s

    log to console    checking if login contains blank
    Verify Inputs Are Empty

    close browser
