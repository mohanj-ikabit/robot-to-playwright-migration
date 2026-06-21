*** Settings ***
Default Tags      adminsettings_billing
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
${VisaRadiobuttongroup}             card_visa4242
${VisaRadiobutton}                  visa4242
${VisaRadiobuttonname}              visa4242
${VisaRadiobuttonvalue}             visa4242
${VisaRadioLabel}                   radioLabel4242
${VisaValueOfRadioLabel}            visa ending x4242 (12/2025)
${VisaCardNo_Last4}                 4242
${VisaDeletebutton}                 deletecard_x4242
${VisaEditbutton}                   editcard_x4242

${VisaDebitCardNo}                  4000 0566 5566 5556
${VisaDebitRadiobuttongroup}        card_visa5556
${VisaDebitRadiobutton}             visa5556
${VisaDebitRadiobuttonname}         visa5556
${VisaDebitRadiobuttonvalue}        visa5556
${VisaDebitRadioLabel}              radioLabel5556
${VisaDebitValueOfRadioLabel}       visa ending x5556 (10/2024)
${VisaDebitCardNo_Last4}            5556
${VisaDebitDeletebutton}            deletecard_x5556
${VisaDebitEditbutton}              editcard_x5556

${MastercardCardNo}                 5555 5555 5555 4444
${MastercardRadiobuttongroup}       card_master4444
${MastercardRadiobutton}            master4444
${MastercardRadiobuttonname}        master4444
${MastercardRadiobuttonvalue}       master4444
${MastercardRadioLabel}             radioLabel4444
${MastercardValueOfRadioLabel}      mastercard ending x4444 (10/2024)
${MastercardCardNo_Last4}           4444
${MastercardDeletebutton}           deletecard_x4444
${MastercardEditbutton}             editcard_x4444

${Mastercard2SeriesCardNo}               2223 0031 2200 3222
${Mastercard2SeriesRadiobuttongroup}     card_master2series3222
${Mastercard2SeriesRadiobutton}          master2series3222
${Mastercard2SeriesRadiobuttonname}      master2series3222
${Mastercard2SeriesRadiobuttonvalue}     master2series3222
${Mastercard2SeriesRadioLabel}           radioLabel03222
${Mastercard2SeriesValueOfRadioLabel}    mastercard ending x3222 (10/2024)
${Mastercard2SeriesCardNo_Last4}         3222
${Mastercard2SeriesDeletebutton}         deletecard_x3222
${Mastercard2SeriesEditbutton}           editcard_x3222

${MastercardDebitCardNo}                 5200 8282 8282 8210
${MastercardDebitRadiobuttongroup}       card_masterdebit8210
${MastercardDebitRadiobutton}            masterdebit8210
${MastercardDebitRadiobuttonname}        masterdebit8210
${MastercardDebitRadiobuttonvalue        masterdebit8210
${MastercardDebitRadioLabel}             radioLabel8210
${MastercardDebitValueOfRadioLabel}      mastercard ending x8210 (10/2024)
${MastercardDebitCardNo_Last4}           8210
${MastercardDebitDeletebutton}           deletecard_x8210
${MastercardDebitEditbutton}             editcard_x8210

${MastercardPrepaidCardNo}               5105 1051 0510 5100
${MastercardPrepaidRadiobuttongroup}     card_masterprepaid5100
${MastercardPrepaidRadiobutton}          masterprepaid5100
${MastercardPrepaidRadiobuttonname}      masterprepaid5100
${MastercardPrepaidRadiobuttonvalue}     masterprepaid5100
${MastercardPrepaidRadioLabel}           radioLabel5100
${MastercardPrepaidValueOfRadioLabel}    mastercard ending x5100 (10/2024)
${MastercardPrepaidCardNo_Last4}         5100
${MastercardPrepaidDeletebutton}         deletecard_x5100
${MastercardPrepaidEditbutton}           editcard_x5100

${AmexCardNo}                       378282246310005
${AmexRadiobuttongroup}             card_amex0005
${AmexRadiobutton}                  amex0005
${AmexRadiobuttonname}              amex0005
${AmexRadiobuttonvalue}             amex0005
${AmexRadioLabel}                   radioLabel0005
${AmexValueOfRadioLabel}            amex ending x0005 (10/2024)
${AmexCardNo_Last4}                 0005
${AmexDeletebutton}                 deletecard_x0005
${AmexEditbutton}                   editcard_x0005

${DiscoverCardNo}                   6011 1111 1111 1117
${DiscoverRadiobuttongroup}         card_discover1117
${DiscoverRadiobutton}              discover1117
${DiscoverRadiobuttonname}          discover1117
${DiscoverRadiobuttonvalue}         discover1117
${DiscoverRadioLabel}               radioLabel1117
${DiscoverValueOfRadioLabel}        discover ending x1117 (10/2024)
${DiscoverCardNo_Last4}             1117
${DiscoverDeletebutton}             deletecard_x1117
${DiscoverEditbutton}               editcard_x1117

${DinersClubCardNo}                 3056 9300 0902 0004
${DinersClubRadiobuttongroup}       card_dinersclub0004
${DinersClubRadiobutton}            dinersclub0004
${DinersClubRadiobuttonname}        dinersclub0004
${DinersClubRadiobuttonvalue}       dinersclub0004
${DinersClubRadioLabel}             radioLabel0004
${DinersClubValueOfRadioLabel}      diners ending x0004 (10/2024)
${DinersClubCardNo_Last4}           0004
${DinersClubDeletebutton}           deletecard_x0004
${DinersClubEditbutton}             editcard_x0004

${DinersClub14DigitsCardNo}               36227206271667
${DinersClub14DigitsRadiobuttongroup}     card_dinersclub1667
${DinersClub14DigitsRadiobutton}          dinersclub1667
${DinersClub14DigitsRadiobuttonname}      dinersclub1667
${DinersClub14DigitsRadiobuttonvalue}     dinersclub1667
${DinersClub14DigitsRadioLabel}           radioLabel1667
${DinersClub14DigitsValueOfRadioLabel}    diners ending x1667 (10/2024)
${DinersClub14DigitsCardNo_Last4}         1667
${DinersClub14DigitsDeletebutton}         deletecard_x1667
${DinersClub14DigitsEditbutton}           editcard_x1667

#Cards NOT Supported by Best8Eats
${JCBCardNo}                        3566 0020 2036 0505
${JCBRadiobuttongroup}              card_jcb0505
${JCBRadiobutton}                   jcb0505
${JCBRadiobuttonname}               jcb0505
${JCBRadiobuttonvalue}              jcb0505
${JCBRadioLabel}                    radioLabel0505
${JCBValueOfRadioLabel}             jcb ending x0505
${JCBCardNo_Last4}                  0505
${JCBDeletebutton}                  deletecard_x0505
${JCBEditbutton}                    editcard_x0505

${UnionPayCardNo}                   6200 0000 0000 0005
${UnionPayRadiobuttongroup}         card_unionpay0005
${UnionPayRadiobutton}              unionpay0005
${UnionPayRadiobuttonname}          unionpay0005
${UnionPayRadiobuttonvalue}         unionpay0005
${UnionPayRadioLabel}               radioLabel0005
${UnionPayValueOfRadioLabel}        unionpay ending x0005
${UnionPayCardNo_Last4}             0005
${UnionPayDeletebutton}             deletecard_x0005
${UnionPayEditbutton}               editcard_x0005

#Cards NOT Supported by Restaurant
#TBD

*** Test Cases ***

5.8.6.1_Add_Delete_Cards
    #[Tags]    DebugWip
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Page Should Contain      Subscription & Billing    
    Scroll Element Into View    xpath=//*[@id="next"]

    #Page should not contain element    xpath=//*[@id="${VisaDebitRadiobutton}"]
    #Page should not contain element    ${VisaDebitRadiobutton}

    #Log To Console    Delete card if it exists
    #${cardexists}=    Run Keyword And Return Status    Page should contain element    ${VisaDebitRadiobutton}
    #Log To Console    Card Exists status=${cardexists}
    #Run Keyword If   '${cardexists}' == 'True'    Delete_Card    ${VisaDebitDeletebutton}    ${VisaDebitRadiobutton}    ${VisaDebitValueOfRadioLabel}
    
    ##Run Keyword If   '${cardexists}' == 'True'    Click Button    xpath=//*[@id="${VisaDebitDeletebutton}"]
    ##Run Keyword If   '${cardexists}'    Click Button    xpath=//*[@id="${VisaDebitDeletebutton}"]
    
    #Sleep   10s
    #Log To Console    Verify that the card has been deleted if it had been added before
    Page Should Not Contain Element     ${VisaDebitRadiobutton}
    
    Log To Console    Add a new card
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

    Log To Console    Delete card to run test in continuation
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    
    Page should contain element      xpath=//*[@id="visa4242"] 
    
    Click Button    xpath=//*[@id="deletecard_x4242"] 
    Sleep   10s
    Page should not contain element    xpath=//*[@id="visa4242"] 
    #Page should not contain radio button    ${IDforRadioButton}
    #Page should not contain     ${ValueOfRadioLabel}
    
    #Verify the card is not displayed after navigating to another menu
    #Navigate to Account Settings
    Click Element    xpath=//*[@href="/user/account-settings"]
    #Navigate back to the Admin Settings > Subscription & Billing
    Click Element    xpath=//*[@href="/user/admin-settings"]
    Click Element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page should not contain element    xpath=//*[@id="visa4242"] 
    #Page should not contain radio button    ${IDforRadioButton}
    #Page should not contain     ${ValueOfRadioLabel}
    Logout
    
    #Verify the card is not displayed after logging out & then logging back in
    Login pkg1
    Click element    xpath=//*[@href="/user/admin-settings"]
    Click element    xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Wait Until Element Is Visible        xpath=//*[@id="pricingPlan"]    10
    SeleniumLibrary.Scroll Element Into View    xpath=//*[@id="next"]
    Page should not contain element     xpath=//*[@id="visa4242"]
    #Page should not contain radio button    ${IDforRadioButton}
    #Page should not contain    ${ValueOfRadioLabel}
    
    close browser

5.8.6.2_Edit_Active_Inactive_Cards
    [Tags]    pass
    #Prerequisite that 2 cards exist - Visa 4242 & Discover 1117
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Page Should Contain      Subscription & Billing    
    Scroll Element Into View    xpath=//*[@id="next"]

    Log To Console    Verify that that cards exist
    Page Should Contain Element    ${VisaRadiobutton}
    Page Should Contain Element    ${DiscoverRadiobutton}
    
    Log To Console    Select (make it active) & edit card
    Select radio button    ${VisaRadiobuttonname}    ${VisaRadiobuttonvalue}
    #Selecting a card a few seconds to update data on the WebApp page, hence sleep.
    Sleep   6s
    Radio Button Should Be Set To     ${VisaRadiobuttonname}    ${VisaRadiobuttonvalue}
    Radio Button Should Not Be Selected     ${DiscoverRadiobuttonname}
    Edit_Card    ${VisaEditbutton}    ${VisaCardNo}    ${VisaRadiobutton}    ${VisaRadioLabel}    ${VisaValueOfRadioLabel}
    Sleep   3s
    
    Log To Console    Select a different card (make visa card inactive) & edit visa card
    Select radio button    ${DiscoverRadiobutton}    ${DiscoverRadiobuttonvalue}
    #Selecting a card a few seconds to update data on the WebApp page, hence sleep.
    Sleep   6s
    Radio Button Should Be Set To     ${DiscoverRadiobuttonname}    ${DiscoverRadiobuttonvalue}
    Radio Button Should Not Be Selected     ${VisaRadiobuttonname}
    Edit_Card    ${VisaEditbutton}    ${VisaCardNo}    ${VisaRadiobutton}    ${VisaRadioLabel}    ${VisaValueOfRadioLabel}
    Log To Console    Test Successful
    close browser

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

5.8.6.5_admin_settings_billing_add_new_card_not_suported_byBest8Eats_JCB
    #adminsettings_billing_add_new_card_not_supported_byBest8Eats    ${JCBCardNo}    ${JCBRadiobutton}    ${JCBRadioLabel}    ${JCBValueOfRadioLabel}

5.8.6.5_admin_settings_billing_add_new_card_not_suported_byBest8Eats_UnionPay
    #adminsettings_billing_add_new_card_not_supported_byBest8Eats    ${UnionPayCardNo}    ${UnionPayRadiobutton}   ${UnionPayRadioLabel}    ${UnionPayValueOfRadioLabel}

5.8.6.6_admin_settings_billing_add_new_card_not_suported_byRestaurant_TBD
    [Tags]    TBD
    #should we get the card not supported by Restaurant from the PRD or live from WebApp?
    #Test should be the same as 5.8.6.5_admin_settings_billing_add_new_card_not_suuported_byBest8Eats_JCB[/UnionPay] except the card info passed as arguments



