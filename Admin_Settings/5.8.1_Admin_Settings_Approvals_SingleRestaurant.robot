*** Settings ***
Default Tags      approvals_singlerest
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

  


*** Test Cases ***
5.8.1.1_admin_settings_approvals_approve_usrs
    Login pkg1
    sleep  10s
    Page Should Contain       Admin Settings
    click element            xpath=//*[@href="/user/admin-settings"]
    Page Should Contain      Permissions & Approvals
#    Element should be disabled    xpath=//*[@id="paymentCashR1C4"]
    wait until element is visible    xpath=//*[@id="approveR2C5"]
    click element    xpath=//*[@id="approveR2C5"]
    click element    xpath=//*[@id="panel1-header"]/div[2]/span[1]/svg
    logout
    
5.8.1.2_admin_settings_approvals_modifymenu_usraccess_check
    Login pkg1
    Page Should Contain       Restaurant Info
    Page Should Contain       Menu Settings  
    Page Should Contain       Account Settings
    Page Should Contain       Admin Settings
    Page Should Contain       Logout
    Logout
    
5.8.1.3_admin_settings_approvals_restinfo_usraccess_check
    Login pkg1
    sleep  10s
    Page Should Contain       Restaurant Info
    Page Should Not Contain        Menu Settings  
    Page Should Contain       Account Settings
    Page Should Not Contain        Admin Settings
    Page Should Contain       Logout
    Logout
    
5.8.1.4_admin_settings_approvals_approveusr_usraccess_check
   Login pkg1 
   sleep  10s
    Page Should Not Contain       Restaurant Info
    Page Should Not Contain       Menu Settings  
    Page Should Contain      Account Settings
    Page Should Contain      Admin Settings
    Page Should Contain      Logout
    click element            xpath=//*[@href="/user/account-settings"]
    Page Should Contain      Your Best8Eats Account Settings
    click element            xpath=//*[@href="/user/permission-approvals"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billings
    Logout    
    
5.8.1.5_admin_settings_approvals_approveusr_modifymenu_usraccess_check
    Login pkg1
    sleep  10s
    Page Should Not Contain       Restaurant Info
    Page Should Contain           Menu Settings  
    Page Should Contain      Account Settings
    Page Should Contain      Admin Settings
    Page Should Contain      Logout
    click element            xpath=//*[@href="/user/permission-approvals"]
    Page Should Contain      Permissions & Approvals
    Page Should Not Contain      Subscriptions & Billings
    Logout
    
5.8.1.6_admin_settings_approvals_restinfo_approveusr_usraccess_check
    Login pkg1
    sleep  10s
    Page Should Contain       Restaurant Info
    Page Should Not Contain           Menu Settings  
    Page Should Contain      Account Settings
    Page Should Contain      Admin Settings
    Page Should Contain      Logout
    click element            xpath=//*[@href="/user/restaurant-info"]
    Page Should Contain      Account Info
    Page Should Contain      Logo & Tagline
    Page Should Contain      Policies & Payments
    Page Should Contain      Promo Codes
    Page Should Contain      Calendar Settings
    click element            xpath=//*[@href="/user/account-settings"]
    Page Should Contain      Your Best8Eats Account Settings
    click element            xpath=//*[@href="/user/permission-approvals"]
    Page Should Contain      Permissions & Approvals
    Page Should Not Contain      Subscriptions & Billings
    Logout

5.8.1.7_admin_settings_approvals_restinfo_modifymenu_usraccess_check
    Login pkg1
    sleep  10s
    Page Should Contain       Restaurant Info
    Page Should Contain           Menu Settings  
    Page Should Contain      Account Settings
    Page Should Not Contain      Admin Settings
    Page Should Contain      Logout
    click element            xpath=//*[@href="/user/restaurant-info"]
    Page Should Contain      Account Info
    Page Should Contain      Logo & Tagline
    Page Should Contain      Policies & Payments
    Page Should Contain      Promo Codes
    Page Should Contain      Calendar Settings
    click element            xpath=//*[@href="/user/menu-help"]
    Page Should Contain      Menu Help
    Page Should Contain      Menu Category
    Page Should Contain      Menu Sub Category
    Page Should Contain      Menu Items
    Page Should Contain      ConfirmationCode
    click element            xpath=//*[@href="/user/account-settings"]
    Page Should Contain      Your Best8Eats Account Settings
    Logout
    
5.8.1.8_admin_settings_approvals_restinfo_modifymenu_approvacc_usraccess_check
    Login pkg1
    sleep  10s
    Page Should Contain       Restaurant Info
    Page Should Contain           Menu Settings  
    Page Should Contain      Account Settings
    Page Should Contain      Admin Settings
    Page Should Contain      Logout
    click element            xpath=//*[@href="/user/restaurant-info"]
    Page Should Contain      Account Info
    Page Should Contain      Logo & Tagline
    Page Should Contain      Policies & Payments
    Page Should Contain      Promo Codes
    Page Should Contain      Calendar Settings
    click element            xpath=//*[@href="/user/menu-help"]
    Page Should Contain      Menu Help
    Page Should Contain      Menu Category
    Page Should Contain      Menu Sub Category
    Page Should Contain      Menu Items
    Page Should Contain      ConfirmationCode
    click element            xpath=//*[@href="/user/account-settings"]
    Page Should Contain      Your Best8Eats Account Settings
    click element            xpath=//*[@href="/user/permission-approvals"]
    Page Should Contain      Permissions & Approvals
    Page Should Not Contain      Subscriptions & Billings
    Logout
    
5.8.1.9_admin_settings_approvals_noaccess_usraccess_check
    Login pkg1
    
     Page Should Contain       Restaurant Info
    Page Should Contain           Menu Settings  
    Page Should Contain      Account Settings
    Page Should Contain      Admin Settings
    Page Should Contain      Logout
    click element            xpath=//*[@href="/user/restaurant-info"]
    Page Should Contain      Account Info
    Page Should Contain      Logo & Tagline
    Page Should Contain      Policies & Payments
    Page Should Contain      Promo Codes
    Page Should Contain      Calendar Settings
    click element            xpath=//*[@href="/user/menu-help"]
    Page Should Contain      Menu Help
    Page Should Contain      Menu Category
    Page Should Contain      Menu Sub Category
    Page Should Contain      Menu Items
    Page Should Contain      ConfirmationCode
    click element            xpath=//*[@href="/user/account-settings"]
    Page Should Contain      Your Best8Eats Account Settings
    click element            xpath=//*[@href="/user/permission-approvals"]
    Page Should Contain      Permissions & Approvals
    Page Should Contain      Subscriptions & Billings
    Logout
    close browser
    
# Manual test 5.8.1.10_admin_settings_approvals_hovernote_check  
    
5.8.1.11_admin_settings_approvals_nopendingapprovals
    Login pkg1
    page should contain    All Done! No Approvals Pending At This Time.
    
    close browser
    
