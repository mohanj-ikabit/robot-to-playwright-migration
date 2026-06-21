*** Settings ***
Default Tags       forgotcredentials
Library            SeleniumLibrary
Library            FakerLibrary
Library            String
Resource           ../Resource/dropdownlist.robot
Resource           ../Resource/numericalvalue.robot
Resource           ../Resource/genericfunctions.robot
Resource           ../Resource/textfield.robot
Resource           ../Resource/button.robot
Resource           ../Resource/radio button.robot
Resource           ../Resource/Text on form.robot
Suite Teardown     Close All Browsers


*** Test Cases ***
5.1.5.1_user_needhelp_forgot_loginID_blank_phone_number
    login loginpage
    Click Need Help Option    forgot-login-id
    Element Should Be Disabled    xpath=//*[@id="submit"]
    Close Browser

5.1.5.2_user_needhelp_forgot_loginID_invalid_phone_number
    #[Tags]   pass
    #Verify that for invalid Phone Number, the button NEXT is frozen and user can not proceed with the forgot credentials functionality.
    login loginpage
    log to console    clicking need help
    SeleniumLibrary.Click Element    xpath=//*[@id="need-help-sign-in"]
    log to console    clicking forgot Login
    Wait Until Element Is Visible    xpath=//*[@id="forgot-login-id"]    10
    SeleniumLibrary.Click Element    xpath=//*[@id="forgot-login-id"]
    log to console    giving wrong phone number as input 4563785637
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785637
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Please enter valid details
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Incorrect username or password.
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    log to console    closing browser
    close browser

5.1.5.3_user_needhelp_forgot_loginID_recovery_max_attempts_exceeded
    #[Tags]   pass
    #to test the max number of failed atempts
    login loginpage
    log to console    clicking need help
    SeleniumLibrary.Click Element    xpath=//*[@id="need-help-sign-in"]
    log to console    clicking forgot Login
    Wait Until Element Is Visible    xpath=//*[@id="forgot-login-id"]    4
    SeleniumLibrary.Click Element    xpath=//*[@id="forgot-login-id"]
    
    log to console    TRIAL 1
    log to console    giving wrong phone number as input 1916333501
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333501
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Incorrect username or password.
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]
    
    log to console    TRIAL 2
    log to console    giving wrong phone number as input 1916333502
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333502
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain    Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]
        
    log to console    TRIAL 3
    log to console    giving wrong phone number as input 1916333503
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333503
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]
    
    log to console    TRIAL 4
    log to console    giving wrong phone number as input 1916333504
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333504
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]
        
    log to console    TRIAL 5
    log to console    giving wrong phone number as input 1916333505
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333505
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"] 

    log to console    TRIAL 6
    log to console    giving wrong phone number as input 1916333506
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333506
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]  

    log to console    TRIAL 7
    log to console    giving wrong phone number as input 1916333507
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333507
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 8
    log to console    giving wrong phone number as input 1916333508
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333508
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]  

    log to console    TRIAL 9
    log to console    giving wrong phone number as input 1916333509
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333509
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 10
    log to console    giving wrong phone number as input 1916333510
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333510
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 11
    log to console    giving wrong phone number as input 1916333511
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333511
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 12
    log to console    giving wrong phone number as input 1916333512
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333512
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 13
    log to console    giving wrong phone number as input 1916333513
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333513
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 14
    log to console    giving wrong phone number as input 1916333514
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333514
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain    Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}
    #Click Element    xpath=//*[@id="NoPopUpConfirm"]

    log to console    TRIAL 15
    log to console    giving wrong phone number as input 1916333515
    Input Text    xpath=//*[@id="phoneNumberInput"]    1916333515
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    Sleep   3s
    wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    Page Should Contain    Please enter a valid phone number
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain      Cannot Retrieve Account  We Couldn't Find Any Account Associated With This Phone Number. Please Try Again..#
    #wait until element is visible    xpath=//*[@id="popup-1"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Please enter valid details
    #log to console    error shown is.........${text}

    #Log To Console    Verified that the user is allowed 15 attempts. The number of attempts is not controlled by the WebApp.
    
    #log to console    TRIAL 16
    #log to console    giving wrong phone number as input 1916333516
    #Input Text    xpath=//*[@id="phoneNumberInput"]    1916333516
    #log to console    clicking submit
    #Click Element    xpath=//*[@id="submit"]
    #Sleep   3s
    #4_1_10_1_text_present     Please enter valid details
    #Page Should Contain     Maximum attempts exceeded. Please try again after some time??
    #wait until element is visible    xpath=//*[@id="errorPhoneInputFL"]    4
    #${text}    get text    xpath=//*[@id="errorPhoneInputFL"]
    #should be equal as strings    ${text}   Maximum attempts exceeded. Please try again after some time??
    #log to console    error shown is.........${text}
    
    log to console    closing browser
    close browser

5.1.5.5_user_needhelp_forgot_password_blank_loginID  
    login loginpage
    Click Need Help Option    forgot-password
    Element Should Be Disabled    xpath=//*[@id="submit"]
    Close Browser

5.1.5.6_user_needhelp_forgot_password_invalid_loginID
    login loginpage
    Click Need Help Option    forgot-password
    Input Text    xpath=//*[@id="email"]    abc @gmail.com
    Element Should Be Disabled    xpath=//*[@id="submit"]
    Close Browser

5.1.5.10_user_needhelp_forgot_restaurantID_blank_Phone_Number
    login loginpage
    Click Need Help Option    forgot-restaurant-id
    Element Should Be Disabled    xpath=//*[@id="submit"]
    Close Browser

5.1.5.12_user_needhelp_forgot_restaurantID_invalid_phone_number
    login loginpage
    Click Need Help Option    forgot-restaurant-id
    Submit Invalid Phone Number And Validate Error    4563785637    Please enter a valid phone number
    Close Browser

5.1.5.13_user_needhelp_forgot_restaurantID_recovery_max_attempts_exceeded
    #[Tags]   pass
    login loginpage
    log to console    clicking need help
    SeleniumLibrary.Click Element    xpath=//*[@id="need-help-sign-in"]
    log to console    clicking forgot Restaurant ID
    Wait Until Element Is Visible    xpath=//*[@id="forgot-restaurant-id"]    6
    SeleniumLibrary.Click Element    xpath=//*[@id="forgot-restaurant-id"]
    
    log to console    entering wrong data TRIAL 1
    log to console    giving wrong phone number as input 4563785611
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785611
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 2
    log to console    giving wrong phone number as input 4563785622
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785622
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 3
    log to console    giving wrong phone number as input 4563785633
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785633
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain    Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
   
    log to console    entering wrong data TRIAL 4
    log to console    giving wrong phone number as input 4563785644
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785644
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
   
    log to console    entering wrong data TRIAL 5
    log to console    giving wrong phone number as input 4563785655
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785655
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain    Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 6
    log to console    giving wrong phone number as input 4563785666
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785666
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 7
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 8
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 9
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 10
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain    Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 11
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 12
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 13
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 14
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    log to console    entering wrong data TRIAL 15
    log to console    giving wrong phone number as input 4563785677
    Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    log to console    clicking submit
    Click Element    xpath=//*[@id="submit"]
    wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    Page Should Contain     Please enter a valid phone number
    ${text}    get text    xpath=//*[@id="errorPhoneInput"]
    should be equal as strings    ${text}   Please enter a valid phone number
    log to console    error shown is.........${text}
    
    Log To Console    Verified that the user is allowed 15 attempts. The number of attempts is not controlled by the WebApp.

    #log to console    entering wrong data TRIAL 16
    #log to console    giving wrong phone number as input 4563785677
    #Input Text    xpath=//*[@id="phoneNumberInput"]    4563785677
    #log to console    clicking submit
    #Click Element    xpath=//*[@id="submit"]
    #Wait until element is visible    xpath=//*[@id="errorPhoneInput"]    4
    #Page Should Contain     Attempt limit exceeded, please try after some time
    #${text}    get text    xpath=//*[@id="errorPhoneInput"]
    #should be equal as strings    ${text}   Attempt limit exceeded, please try after some time
    #log to console    error shown is.........${text}
    
    log to console    closing brower
    close browser
