*** Settings ***
Default Tags      subscription
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

Suite Teardown     Close all browsers


*** Test Cases ***
5.8.4.1_admin_settings_subnbilling_admin-all_access
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billing
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    log to console          Subscription & Billing is accessible
    Logout
    
5.8.4.2_admin_settings_subnbilling_admin-rest_noaccess
    Login pkg1
    sleep  10s
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    sleep  3s
    Page Should Contain      Subscriptions & Billing
    logout
    
5.8.4.3_admin_settings_subnbilling_change_pkg
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billing
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    click element            xpath=//*[@id="package2"]  
    click element    xpath=//*[@id="saveChanges1"]
    wait until element is visible    xpath=//*[@id="yesPopUpSaveChanges1"]
    click element    xpath=//*[@id="yesPopUpSaveChanges1"]
    click element    xpath=//*[contains(text(),"OK")]
    Checkbox Should Be Selected   xpath=//*[@id="package2"]  
     ${d}    get text    xpath=//*[@id="pricingPlan"]
    Should be equal as strings    ${d}    Package2
    ${d}    get text    xpath=//*[@id="pricing"]
    log to console    ${d}
    ${d}    get text    xpath=//*[@id="subscriptionStartDate"]
    log to console    ${d}
    logout
    
5.8.4.3_admin_settings_subnbilling_change_pkg3
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billing
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    click element    xpath=//*[@id="package3"]
    click element    xpath=//*[@id="locations3"]
    click element    xpath=//*[@id="menu-locations2"]
    click element    xpath=//*[@id="saveChanges1"]
    wait until element is visible    xpath=//*[@id="yesPopUpSaveChanges1"]
    click element    xpath=//*[@id="yesPopUpSaveChanges1"]
    click element    xpath=//*[contains(text(),"OK")]
    ${d}    get text    xpath=//*[@id="pricingPlan"]
    Should be equal as strings    ${d}    Package3-Monthly
    ${d}    get text    xpath=//*[@id="pricing"]
    log to console    ${d}
    ${d}    get text    xpath=//*[@id="subscriptionStartDate"]
    log to console    ${d}   

5.8.4.3_admin_settings_subnbilling_change_pkg11
  Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billing
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    click element    xpath=//*[@id="package2"]
    click element    xpath=//*[@id="locations3"]
    click element    xpath=//*[@id="menu-locations2"]
    click element    xpath=//*[@id="saveChanges1"]
    wait until element is visible    xpath=//*[@id="yesPopUpSaveChanges1"]
    click element    xpath=//*[@id="yesPopUpSaveChanges1"]
    click element    xpath=//*[contains(text(),"OK")]
    ${d}    get text    xpath=//*[@id="pricingPlan"]
    Should be equal as strings    ${d}    Package1-Monthly
    ${d}    get text    xpath=//*[@id="pricing"]
    log to console    ${d}
    ${d}    get text    xpath=//*[@id="subscriptionStartDate"]
    log to console    ${d}
    Logout
    close browser
    
    
5.8.4.4_admin_settings_subnbilling_change_nousers
    Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billing
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    ${princing_plan}      get text    xpath=//*[@id="pricingPlan"]
    ${pricing}    get text    xpath=//*[@id="pricing"]
    ${substart}    get text    xpath=//*[@id="subscriptionStartDate"]
    ${expiry}    get text    xpath=//*[@id="subscriptionExpiryDate"]
    click element    xpath=//*[@id="logins"]
    Select From List By Value   xpath=//*[@id="logins"]    6
    click element    xpath=//*[@id="yesPopUpMaxLogin"]
    ${d}    get text    xpath=//*[@id="pricingPlan"]
    Should be equal as strings    ${d}    ${princing_plan}
    ${dd}    get text    xpath=//*[@id="pricing"]
    Should not be equal as strings    ${dd}    ${pricing}
    ${dx}    get text    xpath=//*[@id="subscriptionStartDate"]
    Should not be equal as strings    ${dx}    ${substart}
    ${dy}    get text    xpath=//*[@id="subscriptionExpiryDate"]
    Should not be equal as strings    ${dy}    ${expiry}
    ${nousers}    get text    xpath=//*[@id="loginCount"]
    should be equal as strings    ${nousers}    6
    
5.8.4.5_admin_settings_subnbilling_cancel_change
   Login pkg1
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billing
    click element            xpath=//*[@href="/user/admin-settings/subscription-billing"]
    ${princing_plan}      get text    xpath=//*[@id="pricingPlan"]
    ${pricing}    get text    xpath=//*[@id="pricing"]
    ${substart}    get text    xpath=//*[@id="subscriptionStartDate"]
    ${expiry}    get text    xpath=//*[@id="subscriptionExpiryDate"]
    click element    xpath=//*[@id="logins"]
    Select From List By Value   xpath=//*[@id="logins"]    12
    click element    xpath=//*[@id=" cancel1"]
    click element    xpath=//*[@id="yesPopUpCancelChanges1"]
     ${d}    get text    xpath=//*[@id="pricingPlan"]
    Should be equal as strings    ${d}    ${princing_plan}
    ${dd}    get text    xpath=//*[@id="pricing"]
    Should not be equal as strings    ${dd}    ${pricing}
    ${dx}    get text    xpath=//*[@id="subscriptionStartDate"]
    Should not be equal as strings    ${dx}    ${substart}
    ${dy}    get text    xpath=//*[@id="subscriptionExpiryDate"]
    Should not be equal as strings    ${dy}    ${expiry}
    ${nousers}    get text    xpath=//*[@id="loginCount"]
    should be equal as strings    ${nousers}    6
    close browser
  




