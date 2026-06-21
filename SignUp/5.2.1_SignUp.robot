*** Settings ***
Default Tags      signup12
Library           SeleniumLibrary
Library           FakerLibrary    locale=en_US
Library           String
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Suite Teardown    Close all browsers



*** Test Cases ***
#5.2.1.1_signup_email_id_unique_for_each_login
#5.2.1.2_signup_phone_no_unique_for_each_login

5.2.1.3_signup_user_information_mandatory_field_first_name
    Open Chromefn     ${LOGIN URL}
    click element     xpath=//*[@href='/sign-up']
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave First Name Blank
    Enter User Information    ${EMPTY}    Jackson    3746593948    g@gmail.com    g@gmail.com    Test@1234    Test@1234
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill First Name
    input text    xpath=//*[@id="firstName"]    Jim
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.3_signup_user_information_mandatory_field_last_name
    reload page
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave Last Name Blank
    Enter User Information    Jim    ${EMPTY}    3746593948    g@gmail.com    g@gmail.com    Test@1234    Test@1234
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill Last Name
    input text    xpath=//*[@id="lastName"]    Jackson
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.3_signup_user_information_mandatory_field_phone_number
    reload page
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave Phone Number Blank
    Enter User Information    Jim    Jackson    ${EMPTY}    g@gmail.com    g@gmail.com    Test@1234    Test@1234
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill Phone Number
    input text    xpath=//*[@id="phoneNumberInput"]    3746593948
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.3_signup_user_information_mandatory_field_email
    reload page
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave Email Blank
    Enter User Information    Jim    Jackson    3746593948    ${EMPTY}    g@gmail.com    Test@1234    Test@1234
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill Email
    input text    xpath=//*[@id="email"]    g@gmail.com
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.3_signup_user_information_mandatory_field_confirm_email
    reload page
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave Confirm Email Blank
    Enter User Information    Jim    Jackson    3746593948    g@gmail.com    ${EMPTY}    Test@1234    Test@1234
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill Confirm Email
    input text    xpath=//*[@id="confirmEmail"]    g@gmail.com
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.3_signup_user_information_mandatory_field_password
    reload page
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave Password Blank
    Enter User Information    Jim    Jackson    3746593948    g@gmail.com    g@gmail.com    ${EMPTY}    Test@1234
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill Password
    input text    xpath=//*[@id="password"]    Test@1234
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.3_signup_user_information_mandatory_field_confirm_password
    reload page
    Element should be disabled    xpath=//*[@id="submit"]
    # Leave Confirm Password Blank
    Enter User Information    Jim    Jackson    3746593948    g@gmail.com    g@gmail.com    Test@1234    ${EMPTY}
    Element should be disabled    xpath=//*[@id="submit"]
    # Fill Confirm Password
    input text    xpath=//*[@id="confirmPassword"]    Test@1234
    Element should be enabled    xpath=//*[@id="submit"]
    log to console    TEST PASSED

5.2.1.4_signup_user_information_invalid_confirm_email
    Open Chromefn     ${LOGIN URL}
    click element     xpath=//*[@href='/sign-up']
    Enter User Information    Jim    Jackson    3746593948    g@gmail.com    abc@gmail.com    Test@1234    Test@1234
    Element should be enabled    xpath=//*[@id="submit"]
    Click element     xpath=//*[@id="submit"]
    Page should contain     Email Id does not Match
    log to console    TEST PASSED

5.2.1.4_signup_user_information_invalid_confirm_password
    Open Chromefn     ${LOGIN URL}
    click element     xpath=//*[@href='/sign-up']
    Enter User Information    Jim    Jackson    3746593948    g@gmail.com    g@gmail.com    Test@1234    Test@12
    Element should be enabled    xpath=//*[@id="submit"]
    Click element     xpath=//*[@id="submit"]
    Page should contain     Passwords do not Match
    log to console    TEST PASSED

5.2.1.5_signup_user_information_password_rules
    Open Chromefn     ${LOGIN URL}
    log to console    clicking Sign in
    click element     xpath=//*[@href='/sign-up']
    
    log to console    entering first name as...........Jim
    input text    xpath=//*[@id="firstName"]        Jim
    
    log to console    entering last name as...........Jackson
    input text    xpath=//*[@id="lastName"]        Jackson
    
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phoneNumberInput"]        ${pno}
    
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    log to console    entering confirm email as...........g@gmail.com
    input text    xpath=//*[@id="confirmEmail"]        g@gmail.com
    
    log to console    ENTERING PASSWORD WITH LESS THAN 8 CHARS...........Tst123#
    input text    xpath=//*[@id="password"]        Tst123#
    log to console    entering confirm password as...........Tst123#
    input text    xpath=//*[@id="confirmPassword"]        Tst123#
    
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    
    Page Should Contain    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    ${error}    get text    xpath=//*[@id="password-helper-text"]
    log to console    the error is......${error}
    Should Be Equal As Strings    ${error}    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.

    reload page
    log to console    entering first name as...........Jim
    input text    xpath=//*[@id="firstName"]        Jim
    
    log to console    entering last name as...........Jackson
    input text    xpath=//*[@id="lastName"]        Jackson
    
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phoneNumberInput"]        ${pno}
    
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    log to console    entering confirm email as...........g@gmail.com
    input text    xpath=//*[@id="confirmEmail"]        g@gmail.com
    
    log to console    ENTERING PASSWORD WITH NO UPPERCASE CHARS...........test1234#
    input text    xpath=//*[@id="password"]        test1234#
    log to console    entering confirm password as...........test1234#
    input text    xpath=//*[@id="confirmPassword"]        test1234#
    
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    
    Page Should Contain    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    
    ${error}    get text    xpath=//*[@id="password-helper-text"]
    log to console    the error is......${error}
    Should Be Equal As Strings    ${error}    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    
    reload page
    log to console    entering first name as...........Jim
    input text    xpath=//*[@id="firstName"]        Jim
    
    log to console    entering last name as...........Jackson
    input text    xpath=//*[@id="lastName"]        Jackson
    
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phoneNumberInput"]        ${pno}
    
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    log to console    entering confirm email as...........g@gmail.com
    input text    xpath=//*[@id="confirmEmail"]        g@gmail.com
    
    log to console    ENTERING PASSWORD WITH NO LOWERCASE CHARS...........TEST1234#
    input text    xpath=//*[@id="password"]        TEST1234#
    log to console    entering confirm password as...........TEST1234#
    input text    xpath=//*[@id="confirmPassword"]        TEST1234#
    
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    
    Page Should Contain    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    ${error}    get text    xpath=//*[@id="password-helper-text"]
    log to console    the error is......${error}
    Should Be Equal As Strings    ${error}    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    
    reload page 
    log to console    entering first name as...........Jim
    input text    xpath=//*[@id="firstName"]        Jim
    
    log to console    entering last name as...........Jackson
    input text    xpath=//*[@id="lastName"]        Jackson
    
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phoneNumberInput"]        ${pno}
    
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    log to console    entering confirm email as...........g@gmail.com
    input text    xpath=//*[@id="confirmEmail"]        g@gmail.com
    
    log to console    ENTERING PASSWORD WITH NO SPECIAL CHARS...........TEST12345
    input text    xpath=//*[@id="password"]        TEST12345
    log to console    entering confirm password as...........TEST12345
    input text    xpath=//*[@id="confirmPassword"]        TEST12345
    
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    
    Page Should Contain    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    ${error}    get text    xpath=//*[@id="password-helper-text"]
    log to console    the error is......${error}
    Should Be Equal As Strings    ${error}    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    
    reload page
    log to console    entering first name as...........Jim
    input text    xpath=//*[@id="firstName"]        Jim
    
    log to console    entering last name as...........Jackson
    input text    xpath=//*[@id="lastName"]        Jackson
    
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phoneNumberInput"]        ${pno}
    
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    log to console    entering confirm email as...........g@gmail.com
    input text    xpath=//*[@id="confirmEmail"]        g@gmail.com
    
    log to console    ENTERING PASSWORD WITH NO NUMERIC CHARS...........Test@abc
    input text    xpath=//*[@id="password"]        Test@abc
    log to console    entering confirm password as...........Test@abc
    input text    xpath=//*[@id="confirmPassword"]        Test@abc
    
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    
    Page Should Contain    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    ${error}    get text    xpath=//*[@id="password-helper-text"]
    log to console    the error is......${error}
    Should Be Equal As Strings    ${error}    Your password must be at least 8 characters long, have 1 uppercase & 1 lowercase character, have 1 number and 1 special character.
    
    close browser
