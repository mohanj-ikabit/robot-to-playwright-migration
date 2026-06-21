*** Settings ***
Default Tags      adminsettings_address
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers


*** Test Cases ***
5.8.5.1_admin_settings_subnbilling_addresses_testsavefunctionality_samemailing
    login
    click element   xpath=//*[@href="/user/admin-settings"]
    click element   xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Scroll Element Into View    xpath=//*[@id="checkBox"]
    
default_text_in_payment_info
    Page Should Contain    Name on the card    
    log to console    name on the card .......Name on the card 
    Page Should Contain    Card Number*
    log to console    card number ........Card Number*
    Page Should Contain    CVV Number*
    log to console    cvv........CVV Number*
    
default_text_in_billing_info
    Page Should Contain    Address*    
    log to console    address is .......Address*
    Page Should Contain    Address Line2 (Apt, Ste etc.)
    log to console    address line 2 is........Address Line2 (Apt, Ste etc.)
    Page Should Contain    City*
    log to console     city is:.... City*
    Page Should Contain    Zip*
    log to console    the zip is........ Zip*
    Page Should Contain    State    
    log to console    the state default value.....State 
    
default_text_in_mailing_info
    Scroll Element Into View    xpath=//*[@id="unsubscribe"] 
    Page Should Contain    Address*    
    log to console    address is .......Address*
    Page Should Contain    Address Line2 (Apt, Ste etc.)
    log to console    address line 2 is........Address Line2 (Apt, Ste etc.)
    Page Should Contain    City*
    log to console     city is:.... City*
    Page Should Contain    Zip*
    log to console    the zip is........ Zip*
    Page Should Contain    State    
    log to console    the state default value.....State  
    close browser
    
Add_new_data_to_billing
    login
    click element   xpath=//*[@href="/user/admin-settings"]
    click element   xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Scroll Element Into View    xpath=//*[@id="checkBox"]  
    Input text    xpath=//*[@id="badd"]    new address
    Input text    xpath=//*[@id="badd2"]    newline2
    Input text    xpath=//*[@id="bcity"]    New Pork
    Input text    xpath=//*[@id="bzip"]    23423
    Select Checkbox    xpath=//*[@id="checkBox"] 
    sleep  2s
        
Verify_data_in_Mailing
    Scroll Element Into View    xpath=//*[@id="unsubscribe"] 
    Element Attribute Value Should Be    xpath=//*[@id="madd"]    value    new address
    Element Attribute Value Should Be    xpath=//*[@id="madd2"]    value    newline2
    Element Attribute Value Should Be    xpath=//*[@id="mcity"]    value    New Pork
    Element Attribute Value Should Be    xpath=//*[@id="mzip"]    value    23423
    
Save_logout
    click element    xpath=//*[@id="saveChanges2"]
    click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    click element    xpath=//*[@href="/logout/user/logout"]
    close browser

5.8.5.2_admin_settings_subnbilling_addresses_testsavefunctionality_diffmailing
    Login
    click element   xpath=//*[@href="/user/admin-settings"]
    click element   xpath=//*[@href="/user/admin-settings/subscription-billing"]
    Scroll Element Into View    xpath=//*[@id="checkBox"]  
    Input text    xpath=//*[@id="badd"]    new address
    Input text    xpath=//*[@id="badd2"]    newline2
    Input text    xpath=//*[@id="bcity"]    New Pork
    Input text    xpath=//*[@id="bzip"]    23423
    Scroll Element Into View    xpath=//*[@id="unsubscribe"] 
    
Add_new_data_to_mailing
    Input text    xpath=//*[@id="madd"]    new address
    Input text    xpath=//*[@id="madd2"]    newline2
    Input text    xpath=//*[@id="mcity"]    New Pork
    Input text    xpath=//*[@id="mzip"]    23423
    
saving_data
    click element    xpath=//*[@id="saveChanges2"]
    click element    xpath=//*[@id="yesPopUpSaveChanges2"]
    click element    xpath=//*[@href="/logout/user/logout"]
    close browser
    
5.8.5.3_admin_settings_subnbilling_addresses_testcancelfunctionality_diffmailing
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/header/div/div[1]/div/ul/a[2]
    
default_text_in_billing_info_
    ${gain1}    get value    xpath=//*[@id="badd"]
    log to console    address is ........${gain1}
    ${gain2}    get value    xpath=//*[@id="badd2"]
    log to console    address line 2 is.........${gain2}
    ${gain3}    get value    xpath=//*[@id="bcity"]
    log to console    city is:....${gain3}
    ${gain4}    get value    xpath=//*[@id="bzip"]
    log to console    the zip is........${gain4}
    ${gain5}    List Selection Should Be     xpath=//*[@id="bstate"]    IL    
    log to console    the list selection is..........${gain5}
    ${main1}    get value    xpath=//*[@id="madd"]
    log to console    address is ........${main1}
    ${main2}    get value    xpath=//*[@id="madd2"]
    log to console    address line 2 is.........${main2}
    ${main3}    get value    xpath=//*[@id="mcity"]
    log to console    city is:....${main3}
    ${main4}    get value    xpath=//*[@id="mzip"]
    log to console    the zip is........${main4}
    ${main5}    List Selection Should Be     xpath=//*[@id="mstate"]    IL    
    log to console    the list selection is..........${main5}
    Clear element text    xpath=//*[@id="badd"]
    Clear element text    xpath=//*[@id="badd2"]
    Clear element text    xpath=//*[@id="bzip"]
    Clear element text    xpath=//*[@id="bcity"]
    Clear element text    xpath=//*[@id="madd"]
    Clear element text    xpath=//*[@id="madd2"]
    Clear element text    xpath=//*[@id="mcity"]
    Clear element text    xpath=//*[@id="mzip"] 
    Input text     xpath=//*[@id="badd"]    edited address
    Input text     xpath=//*[@id="badd2"]    edited address2
    Input text     xpath=//*[@id="bzip"]    11111
    Input text     xpath=//*[@id="bcity"]    edited
    Input text     xpath=//*[@id="madd"]    editeds
    Input text     xpath=//*[@id="madd2"]    edited2
    Input text     xpath=//*[@id="mcity"]    newcity
    Input text     xpath=//*[@id="mzip"]    322222
    
verification
    click element    xpath=//*[@id="cancel2"]
    click element    xpath=//*[@id="yesPopUpCancelChanges2"]
    ${f}    get value    xpath=//*[@id="badd"]
    log to console    address is ........${f}
    ${fd}    get value    xpath=//*[@id="badd2"]
    log to console    address line 2 is.........${fd}
    ${uj}    get value    xpath=//*[@id="bcity"]
    log to console    city is:....${uj}
    ${ty}    get value    xpath=//*[@id="bzip"]
    log to console    the zip is........${ty}
    ${op}    List Selection Should Be     xpath=//*[@id="bstate"]    IL    
    log to console    the list selection is..........${op}
    ${fx}    get value    xpath=//*[@id="madd"]
    log to console    address is ........${fx}
    ${fdx}    get value    xpath=//*[@id="madd2"]
    log to console    address line 2 is.........${fdx}
    ${ujx}    get value    xpath=//*[@id="mcity"]
    log to console    city is:....${ujx}
    ${tyx}    get value    xpath=//*[@id="mzip"]
    log to console    the zip is........${tyx}
    ${opx}    List Selection Should Be     xpath=//*[@id="mstate"]    IL    
    log to console    the list selection is..........${opx}
    Element Text Should Be    xpath=//*[@id="badd"]    ${f}    
    
