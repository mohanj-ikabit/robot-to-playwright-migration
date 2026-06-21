*** Settings ***
#Comment default tag so that the tests are not invoked from Jenkins
#Default Tags      adminsettings_billing
Library           SeleniumLibrary
Library           RPA.Browser.Selenium
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Resource          ../Resource/radio button.robot
Resource          ../Resource/date.robot
Suite Teardown    Close all browsers
*** Variables ***
#Cards Supported by Best8Eats
${VisaCardNo}                       4242 4242 4242 4242
${VisaRadiobutton}                  4242
${VisaRadioLabel}                   radioLabel4242
${VisaValueOfRadioLabel}            visa ending x4242 (10/2024)
${VisaCardNo_Last4}                 4242
${VisaDeletebutton}                 deletecard_x4242
${VisaEditbutton}                   editcard_x9424
${VisaDebitCardNo}                  4000 0566 5566 5556
${VisaDebitRadiobutton}             5556
${VisaDebitRadioLabel}              radioLabel5556
${VisaDebitValueOfRadioLabel}       visa ending x5556 (10/2024)
${MastercardCardNo}                 5555 5555 5555 4444
${MastercardRadiobutton}            4444
${MastercardRadioLabel}             radioLabel4444
${MastercardValueOfRadioLabel}      mastercard ending x4444 (10/2024)
${Mastercard2SeriesCardNo}          2223 0031 2200 3222
${Mastercard2SeriesRadiobutton}     3222
${Mastercard2SeriesRadioLabel}      radioLabel03222
${Mastercard2SeriesValueOfRadioLabel}    mastercard ending x3222 (10/2024)
${MastercardDebitCardNo}            5200 8282 8282 8210
${MastercardDebitRadiobutton}       8210
${MastercardDebitRadioLabel}        radioLabel8210
${VisaValueOfRadioLabel}            mastercard ending x8210 (10/2024)
${MastercardPrepaidCardNo}          5105 1051 0510 5100
${MastercardPrepaidRadiobutton}     5100
${MastercardPrepaidRadioLabel}      radioLabel5100
${MastercardPrepaidValueOfRadioLabel}    mastercard ending x5100 (10/2024)
${AmexCardNo}                       378282246310005
${AmexRadiobutton}                  0005
${AmexRadioLabel}                   radioLabel0005
${AmexValueOfRadioLabel}            amex ending x0005 (10/2024)
${DiscoverCardNo}                   6011 1111 1111 1117
${DiscoverRadiobutton}              1117
${DiscoverRadioLabel}               radioLabel1117
${DiscoverValueOfRadioLabel}        discover ending x1117 (10/2024)
${DinersClubCardNo}                 3056 9300 0902 0004
${DinersClubRadiobutton}            0004
${DinersClubRadioLabel}             radioLabel0004
${DinersClubValueOfRadioLabel}      diners ending x0004 (10/2024)
${DinersClub14DigitsCardNo}         36227206271667
${DinersClub14DigitsRadiobutton}    1667
${DinersClub14DigitsRadioLabel}     radioLabel1667
${DinersClub14DigitsValueOfRadioLabel}    diners ending x1667 (10/2024)
#Cards NOT Supported by Best8Eats
${JCBCardNo}                        3566 0020 2036 0505
${JCBRadiobutton}                   0505
${JCBRadioLabel}                    radioLabel0505
${JCBValueOfRadioLabel}             jcb ending x0505
${UnionPayCardNo}                   6200 0000 0000 0005
${UnionPayRadiobutton}              0005
${UnionPayRadioLabel}               radioLabel0005
${UnionPayValueOfRadioLabel}        unionpay ending x0005
#Cards NOT Supported by Restaurant
#TBD
*** Test Cases ***
Add_Card_calledfromgenericfunctions
    [Tags]   CallingfromGenericfunctionsrobotfile
    #[Arguments]    ${CardNo}    ${IDforRadioButton}     ${IDforRadioLabel}    ${ValueOfRadioLabel}
    #Login
    #Click element    xpath=//*[@href="/user/admin-settings"]
    #Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    #Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    #SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
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
    Input text    xpath=//*[@id="cc-exp"]    10/2024
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     ${IDforRadioButton}    15
    Page Should Contain Radio Button     ${IDforRadioButton}
    Wait Until Page Contains Element     ${IDforRadioLabel}    15
    #4_1_9_7_radio_label    ${IDforRadioLabel}    ${ValueOfRadioLabel}
    
    #Navigate to Account Settings
    Click Element    xpath=//*[@href="/user/account-settings"]
    #Navigate back to the Admin Settings > Subscription & Billing
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click Element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Wait Until Page Contains Element     ${IDforRadioButton}    15
    Page Should Contain Radio Button     ${IDforRadioButton}
    Wait Until Page Contains Element     ${IDforRadioLabel}    15
    #4_1_9_7_radio_label    ${IDforRadioLabel}    ${ValueOfRadioLabel}
    #Verify the card is displayed after logging out & then logging back in
    Logout
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Wait Until Page Contains Element     ${IDforRadioButton}    15
    Page Should Contain Radio Button     ${IDforRadioButton}
    Wait Until Page Contains Element     ${IDforRadioLabel}    15
    #4_1_9_7_radio_label    ${IDforRadioLabel}    ${ValueOfRadioLabel}
    
Delete_Card_calledfromgenericfunctions
    [Tags]   CallingfromGenericfunctionsrobotfile
    #[Arguments]    ${IDforDeleteIcon}    ${IDforRadioButton}     ${IDforRadioLabel}
    #ID for delete icon includes the card no to help identify which card the user wants to delete
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    Page should contain element    ${IDforRadioButton}
    Page should contain radio button    ${IDforRadioButton}
    Page should contain element    ${IDforRadioLabel}
    
    Click Button    xpath=//*[@id=${IDforDeleteIcon}]
    Sleep   3s    
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain element    ${IDforRadioLabel}
    
    #Verify the card is not displayed after navigating to another menu
    #Navigate to Account Settings
    Click Element    xpath=//*[@href="/user/account-settings"]
    #Navigate back to the Admin Settings > Subscription & Billing
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click Element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain element    ${IDforRadioLabel}
    Logout
    
    #Verify the card is not displayed after logging out & then logging back in
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain element    ${IDforRadioLabel}
    
Edit_Card_calledfromgenericfunctions
    [Tags]   CallingfromGenericfunctionsrobotfile
    #[Arguments]   ${IDforediticon}   ${Email}   ${Name}   ${BSt}   ${BCity}   ${BState}   ${MSt}   ${MCity}   ${MState}   ${ExpDate}   ${cvv}
    #ID for edit icon includes the card no to help identify which card the user wants to delete
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Click Button    xpath=//*[@id=${IDforEditIcon}]
    Sleep   3s
    Input text    xpath=//*[@id="expMonth"]    1
    Input text    xpath=//*[@id="expYear"]    2023
    Click button    xpath=//*[@id=noPopUpMaxLogin]
    #Use 3rd party feature Stripe to enter the card details
    #click element    xpath=//*[@id="next"]
    #Wait Until Element Is Visible    tag:iframe
    #Select Frame    tag:iframe
    #Input Text     name:email    johndoe@gmail.com
    #Input Text When Element Is Visible    name:shipping-name    John Doe
    #Input text    xpath=//*[@id="email"]    johndoe@gmail.com
    #Input text    xpath=//*[@id="shipping-name"]    John Doe
    #Input text    xpath=//*[@id="shipping-street"]    1234 Main street
    #Input text    xpath=//*[@id="shipping-zip"]    95630
    #Input text    xpath=//*[@id="shipping-city"]    Folsom
    ##Input text   xpath=//*[@id="shipping-country  US"]  
    #click element    xpath=//*[@id="submitButton"]
    #Input text    xpath=//*[@id="card_number"]    ${CardNo}
    #Input text    xpath=//*[@id="cc-exp"]    10/2024
    #Input text    xpath=//*[@id="cc-csc"]    123
    #click element    xpath=//*[@id="submitButton"]
    #Sleep   3s
    #Unselect Frame
    #Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    
    log to console    edited card 
    log to console    verifying updates
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     ${IDforRadioButton}    15
    Page Should Contain Radio Button     ${IDforRadioButton}
    Wait Until Page Contains Element     ${IDforRadioLabel}    15
    Click Button    xpath=//*[@id=${IDforEditIcon}]
    ${pattern1}=		get text	 xpath=//*[@id="expMonth"]
    Should be equal as strings		${pattern1}     1
    log to console	exp month is.............${pattern1}
    ${pattern2}=		get text	 xpath=//*[@id="expYear"]
    Should be equal as strings		${pattern2}     2023
    log to console	exp year is.............${pattern2}
    #Enter original values back
    Input text    xpath=//*[@id="expMonth"]    10
    Input text    xpath=//*[@id="expYear"]    2024
    Click Button    xpath=//*[@id=${IDforEditIcon}]
    ${pattern1}=		get text	 xpath=//*[@id="expMonth"]
    Should be equal as strings		${pattern1}     1
    log to console	exp month is.............${pattern1}
    ${pattern2}=		get text	 xpath=//*[@id="expYear"]
    Should be equal as strings		${pattern2}     2023
    log to console	exp year is.............${pattern2}
    
    #4_1_9_7_radio_label    ${IDforRadioLabel}    ${ValueOfRadioLabel}
    #click edit again to verify the values
    #TBD
5.8.6.1_admin_settings_billing_delete_card
    [Tags]    tobetested
    Login pkg1
    Page Should Contain       Admin Settings
    Click element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billings
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Page Should Contain      Use this card ending x4589
    Page Should Contain      Use this card ending x1771
    Page Should Contain      Use this card ending x1900
    click button            xpath=//*[@id="delete1"]
    click element    xpath=//*[contains(text(),"OK")]
    Page Should Not Contain      Use this card ending x4589
    log to console    the card deleted was...............
    
5.8.6.2_admin_settings_billing_edit_active_card
    [Tags]    tobetested
    # Edit is not working
    click element    xpath=//*[@id="edit1"]
    Input text    xpath=    ksjdfkj
    click element     xpath=ok
    ${f}    get text    xpath=
    log to console    card name is saved properly..........${f}
    
5.8.6.3_admin_settings_billing_edit_inactive_card
    [Tags]    tobetested
    # Edit is not working
    click element     xpath=    //*[@id="edit1"]
    Element should be enabled    xpath=
    Input text    xpath=    12122023
    click element    ok
    
    #active_card_verification
    ${d}    get text    xpath=
    Should be equal as strings    ${d}    Active
    close browser
    
5.8.6.4_admin_settings_billing_add_new_card1_Visa
    [Tags]    tobetested
    Login pkg1
    #Click element    xpath=//*[@href="/user/permission-approvals"]
    Click element    xpath=//*[@href="/user/admin-settings"]    
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    Input text    xpath=//*[@id="card_number"]    4242 4242 4242 4242
    Input text    xpath=//*[@id="cc-exp"]    10/2024
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     4242    15
    Page Should Contain Radio Button     4242
    Wait Until Page Contains Element     radioLabel4242    15
    4_1_9_7_radio_label    radioLabel4242     visa ending x4242 (10/2024)
5.8.6.4_admin_settings_billing_add_new_card2_Visa_debit
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    Input text    xpath=//*[@id="card_number"]    4000 0566 5566 5556
    Input text    xpath=//*[@id="cc-exp"]    11/2023
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     5556    15
    Page Should Contain Radio Button     5556
    Wait Until Page Contains Element     radioLabel5556    15
    4_1_9_7_radio_label    radioLabel5556     visa ending x5556 (11/2023)
    
5.8.6.4_admin_settings_billing_add_new_card3_Mastercard
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    Input text    xpath=//*[@id="card_number"]    5555 5555 5555 4444
    Input text    xpath=//*[@id="cc-exp"]    11/2023
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s    
    Wait Until Page Contains Element     4444    15
    Page Should Contain Radio Button     4444
    Wait Until Page Contains Element     radioLabel4444    15
    4_1_9_7_radio_label    radioLabel4444     mastercard ending x4444 (11/2023)
5.8.6.4_admin_settings_billing_add_new_card4_Mastercard_2series
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    Input text    xpath=//*[@id="card_number"]    2223 0031 2200 3222
    Input text    xpath=//*[@id="cc-exp"]    11/2022
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     3222   15
    Page Should Contain Radio Button     3222
    Wait Until Page Contains Element     radioLabel3222    15
    4_1_9_7_radio_label    radioLabel3222     mastercard ending x3222 (11/2023)
5.8.6.4_admin_settings_billing_add_new_card5_Mastercard_debit
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    Input text    xpath=//*[@id="card_number"]    5200 8282 8282 8210
    Input text    xpath=//*[@id="cc-exp"]    12/2023
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     8210   15
    Page Should Contain Radio Button     8210
    Wait Until Page Contains Element     radioLabel8210    15
    4_1_9_7_radio_label    radioLabel8210     mastercard ending x8210 (12/2023)
    
5.8.6.4_admin_settings_billing_add_new_card6_Mastercard_prepaid
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Input text    xpath=//*[@id="card_number"]    5100 0600 0000 0002
    Input text    xpath=//*[@id="card_number"]    5105 1051 0510 5100
    Input text    xpath=//*[@id="cc-exp"]    11/2022
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     5100   15
    Page Should Contain Radio Button     5100
    Wait Until Page Contains Element     radioLabel5100    15
    4_1_9_7_radio_label    radioLabel5100     mastercard ending x8210 (11/2022)
5.8.6.4_admin_settings_billing_add_new_card7_Amex
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Input text    xpath=//*[@id="card_number"]    5100 0600 0000 0002
    Input text    xpath=//*[@id="card_number"]    378282246310005
    Input text    xpath=//*[@id="cc-exp"]    11/2022
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     0005   15
    Page Should Contain Radio Button     0005
    Wait Until Page Contains Element     radioLabel0005    15
    4_1_9_7_radio_label    radioLabel0005     amex ending x0005 (11/2022)
5.8.6.4_admin_settings_billing_add_new_card8_Discover
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Input text    xpath=//*[@id="card_number"]    5100 0600 0000 0002
    Input text    xpath=//*[@id="card_number"]    6011 1111 1111 1117
    Input text    xpath=//*[@id="cc-exp"]    11/2022
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     1117   15
    Page Should Contain Radio Button     1117
    Wait Until Page Contains Element     radioLabel1117    15
    4_1_9_7_radio_label    radioLabel0005     discover ending x1117 (11/2022)
5.8.6.4_admin_settings_billing_add_new_card9_DinersClub
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Input text    xpath=//*[@id="card_number"]    5100 0600 0000 0002
    Input text    xpath=//*[@id="card_number"]    3056 9300 0902 0004
    Input text    xpath=//*[@id="cc-exp"]    11/2022
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     0004   15
    Page Should Contain Radio Button     0004
    Wait Until Page Contains Element     radioLabel0004    15
    4_1_9_7_radio_label    radioLabel0004     dinersclub ending x0004 (11/2022)
5.8.6.4_admin_settings_billing_add_new_card10_DinersClub_14digit
    [Tags]    skipfornowtotesteditcard
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Input text    xpath=//*[@id="card_number"]    5100 0600 0000 0002
    Input text    xpath=//*[@id="card_number"]    36227206271667
    Input text    xpath=//*[@id="cc-exp"]    11/2022
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    #Select from list by Label    xpath=//*[@id="bstate"]    AL
    #click element     xpath=//*[@id="checkBox"]
    #click element    xpath=//*[@id="saveChanges2"]
    #click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    #${f}    get text    xpath=
    log to console    added a new card 
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Wait Until Page Contains Element     1667   15
    Page Should Contain Radio Button     1667
    Wait Until Page Contains Element     radioLabel1667    15
    4_1_9_7_radio_label    radioLabel1667     dinersclub ending x0004 (11/2022)
5.8.6.5_admin_settings_billing_add_new_card_not_suuported_byBest8Eats_JCB  
    [Tags]    movedfofenericfunctionsfile
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #JCB card not supported
    Input text    xpath=//*[@id="card_number"]    3566 0020 2036 0505
    Input text    xpath=//*[@id="cc-exp"]    11/2025
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    log to console    added card that is not supported
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    #radio button label id=radioLabel0505, value=jcb ending x0505 (11/2025)
    Page should not contain element    radioLabel0505
    #radio button id=0505
    Page should not contain radio button    0505
    #4_1_9_7_radio_label    radioLabel0505     jcb ending x0505 (11/2025)
5.8.6.5_admin_settings_billing_add_new_card_not_suuported_byBest8Eats_UnionPay
    [Tags]    movedfofenericfunctionsfile
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Union Pay card not supported
    Input text    xpath=//*[@id="card_number"]    6200 0000 0000 0005
    Input text    xpath=//*[@id="cc-exp"]    11/2025
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    log to console    added card that is not supported
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    #radio button label id=radioLabel0005, value=jcb ending x0005 (11/2025)
    Page should not contain element    radioLabel0005
    #radio button id=0005
    Page should not contain radio button    0005
    #4_1_9_7_radio_label    radioLabel0005     unionpay ending x0005 (11/2025)
5.8.6.6_admin_settings_billing_add_new_card_not_suported_byRestaurant_TBD
    [Tags]    tobetested
    #should we get the card not supported by Restaurant fromthe PRD or from Account Settings.
    #Test should be the same as 5.8.6.5_admin_settings_billing_add_new_card_not_suuported_byBest8Eats_UnionPay
    #except the piece to get the card info
5.8.6.5_admin_settings_billing_add_new_card_not_suported_byBest8Eats
    [Tags]   CallingfromGenericfunctionsrobotfile
    #[Arguments]    ${CardNo}    ${IDforRadioButton}    ${IDforRadioLabel}
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    #Use 3rd party feature Stripe to enter the card details
    click element    xpath=//*[@id="next"]
    #save is not working
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
    #Union Pay card not supported
    Input text    xpath=//*[@id="card_number"]    ${CardNo}
    Input text    xpath=//*[@id="cc-exp"]    11/2025
    Input text    xpath=//*[@id="cc-csc"]    123
    click element    xpath=//*[@id="submitButton"]
    Sleep   3s
    Unselect Frame
    Sleep   3s
    log to console    added card that is not supported
    log to console    verifying new card
    Reload page    
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    5
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Sleep   15s
    Page should not contain element    ${IDforRadioButton}
    Page should not contain radio button    ${IDforRadioButton}
    Page should not contain element    ${IDforRadioLabel}
    #4_1_9_7_radio_label    radioLabel0505     jcb ending x0505 (11/2025)
    #4_1_9_7_radio_label    radioLabel0005     unionpay ending x0005 (11/2025)
5.8.6.5_admin_settings_billing_add_new_card_not_suported_byBest8Eats_JCB
    adminsettings_billing_add_new_card_not_supported_byBest8Eats    ${JCBCardNo}    ${JCBRadiobutton}    ${JCBRadioLabel}    ${JCBValueOfRadioLabel}
5.8.6.5_admin_settings_billing_add_new_card_not_suported_byBest8Eats_UnionPay
    #adminsettings_billing_add_new_card_not_supported_byBest8Eats    ${UnionPayCardNo}    ${UnionPayRadiobutton}   ${UnionPayRadioLabel}    ${UnionPayValueOfRadioLabel}
5.8.6.4_Add_Max_Cards
    [Tags]    skipfornowtotesteditcard
    #Test with 10 cards
    Add_Card    ${VisaCardNo}    ${VisaRadiobutton}    ${VisaRadioLabel}    ${VisaValueOfRadioLabel}
    Add_Card    ${VisaDebitCardNo}    ${VisaDebitRadiobutton}    ${VisaDebitRadioLabel}    ${VisaDebitValueOfRadioLabel}
    Add_Card    ${MastercardCardNo}    ${MastercardRadiobutton}    ${MastercardRadioLabel}    ${MastercardValueOfRadioLabel}
    Add_Card    ${Mastercard2SeriesCardNo}    ${Mastercard2SeriesRadiobutton}    ${Mastercard2SeriesRadioLabel}    ${Mastercard2SeriesValueOfRadioLabel}
    Add_Card    ${MastercardDebitCardNo}    ${MastercardDebitRadiobutton}    ${MastercardDebitRadioLabel}    ${VisaValueOfRadioLabel}
    Add_Card    ${MastercardPrepaidCardNo}    ${MastercardPrepaidRadiobutton}    ${MastercardPrepaidRadioLabel}    ${MastercardPrepaidValueOfRadioLabel}
    Add_Card    ${AmexCardNo}    ${AmexRadiobutton}    ${AmexRadioLabel}    ${AmexValueOfRadioLabel}            
    Add_Card    ${DiscoverCardNo}    ${DiscoverRadiobutton}    ${DiscoverRadioLabel}    ${DiscoverValueOfRadioLabel}
    Add_Card    ${DinersClubCardNo}    ${DinersClubRadiobutton}    ${DinersClubRadioLabel}    ${DinersClubValueOfRadioLabel}
    Add_Card    ${DinersClub14DigitsCardNo}    ${DinersClub14DigitsRadiobutton}    ${DinersClub14DigitsRadioLabel}    ${DinersClub14DigitsValueOfRadioLabel}
    Delete_Card    ${VisaCardNo}    ${VisaRadiobutton}    ${VisaRadioLabel}
    Delete_Card    ${VisaDebitCardNo}    ${VisaDebitRadiobutton}    ${VisaDebitRadioLabel}
    Delete_Card    ${MastercardCardNo}    ${MastercardRadiobutton}    ${MastercardRadioLabel}
    Delete_Card    ${Mastercard2SeriesCardNo}    ${Mastercard2SeriesRadiobutton}    ${Mastercard2SeriesRadioLabel}
    Delete_Card    ${MastercardDebitCardNo}    ${MastercardDebitRadiobutton}    ${MastercardDebitRadioLabel}
    Delete_Card    ${MastercardPrepaidCardNo}    ${MastercardPrepaidRadiobutton}    ${MastercardPrepaidRadioLabel}
    Delete_Card    ${AmexCardNo}    ${AmexRadiobutton}    ${AmexRadioLabel} 
    Delete_Card    ${DiscoverCardNo}    ${DiscoverRadiobutton}    ${DiscoverRadioLabel}
    Delete_Card    ${DinersClubCardNo}    ${DinersClubRadiobutton}    ${DinersClubRadioLabel}
    Delete_Card    ${DinersClub14DigitsCardNo}    ${DinersClub14DigitsRadiobutton}    ${DinersClub14DigitsRadioLabel}
    
 5.8.6.1_Add_Edit_Delete_Cards
    [Tags]    DebugWip
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Page Should Contain      Subscription & Billing    
    Scroll Element Into View    xpath=//*[@id="next"]
    #Page should not contain element    xpath=//*[@id="${VisaRadiobutton}"]
    #Page should not contain element    ${VisaRadiobutton}
    
    Log To Console    Delete card if it exists
    ${cardexists}=    Run Keyword And Return Status   Page should contain element    ${VisaRadiobutton}
    Log To Console    Card Exists status=${cardexists}
    Run Keyword If   '${cardexists}' == 'True'    Click Button    xpath=//*[@id="${VisaDeletebutton}"]
    #Run Keyword If   '${cardexists}'    Click Button    xpath=//*[@id="${VisaDeletebutton}"]
    #Delete_Card    ${VisaDeletebutton}    ${VisaRadiobutton}    ${VisaRadioLabel}
    #Sleep   10s
    #Log To Console    Verify that the card has been deleted if it had been added before
    #Page Should Not Contain Radio Button     ${VisaRadiobutton}
    
    Log To Console    Add a new card
    #Add_Card    ${VisaCardNo}    ${VisaRadiobutton}    ${VisaRadioLabel}    ${VisaValueOfRadioLabel}
    #Select radio button    radioGroupcardDetails    ${VisaCardNo_Last4}
    #Log To Console    Edit the new card
    Edit_Card    ${VisaEditbutton}    ${VisaCardNo}    ${VisaRadiobutton}    ${VisaRadioLabel}    ${VisaValueOfRadioLabel}
    Select radio button    ${VisaRadiobutton}
    Radio button should be set to	radioGroupcardDetails    pm_1KZSfyDax0c6PWSSqH1nZjGd
    Select radio button    ${DiscoverRadiobutton}
    Radio button should be set to	radioGroupcardDetails    pm_1K4tlBDax0c6PWSS03x1TqOO
    #Log To Console    Delete card to run test in continuation
    Delete_Card    ${VisaDeletebutton}    ${VisaRadiobutton}    ${VisaRadioLabel}
    close browser
    
5.8.6.1_admin_settings_billing_delete_card
    [Tags]    coveredunder5.8.6.1.in.newtestfile
    Login pkg1
    Page Should Contain       Admin Settings
    Click element    xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billings
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Page Should Contain      Use this card ending x4589
    Page Should Contain      Use this card ending x1771
    Page Should Contain      Use this card ending x1900
    click button            xpath=//*[@id="delete1"]
    click element    xpath=//*[contains(text(),"OK")]
    Page Should Not Contain      Use this card ending x4589
    log to console    the card deleted was...............
    
5.8.6.2_admin_settings_billing_edit_active_card
    [Tags]    coveredunder5.8.6.2.in.newtestfile
    click element    xpath=//*[@id="edit1"]
    Input text    xpath=    ksjdfkj
    click element     xpath=ok
    ${f}    get text    xpath=
    log to console    card name is saved properly..........${f}
    
5.8.6.3_admin_settings_billing_edit_inactive_card
    [Tags]    coveredunder5.8.6.2.in.newtestfile
    click element     xpath=    //*[@id="edit1"]
    Element should be enabled    xpath=
    Input text    xpath=    12122023
    click element    ok
    #active_card_verification
    ${d}    get text    xpath=
    Should be equal as strings    ${d}    Active
    close browser
