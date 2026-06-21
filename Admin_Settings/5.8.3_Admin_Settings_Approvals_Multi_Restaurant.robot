*** Settings ***
Default Tags      approvals_multirest
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

*** Test Cases ***
5.8.3.1_admin_settings_approvals_multi_adminall_approve_admin_usrs
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR1C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR2C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR3C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR4C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR5C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR6C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR7C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR8C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR9C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR10C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR11C4"]
    Checkbox Should Be Selected    xpath=//*[@id="paymentCashR12C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR1C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR2C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR3C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR4C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR5C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR6C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR7C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR8C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR9C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR10C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR11C4"]
    Element should be disabled    xpath=//*[@id="paymentCashR12C4"]
    Click element    xpath=//*[@id="paymentCashR2C3"]
    Click element    xpath=//*[@id="approveR1C3"]
    click element    xpath=//*[@id="saveChanges"]
    close browser
    
5.8.3.2_admin_settings_approvals_multi_admin_rest1_approve_rest1_usrs
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    ${d}    Get Table Cell    xpath=//*[@id="panel2-content"]/div/div/table    3    9    
    log to console    the admin cell contains.......${d}
    click element    xpath=
    click element    xpath=//*[@id="panel2-header"]
    Table Should Contain    locator    expected
    close browser
    
5.8.3.3_admin_settings_approvals_multi_approveusrs_rest1_approve_other_usrs_rest1
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    click element    xpath=//*[@id="paymentCashR1C3"]
    click element    xpath=//*[@id="saveChanges"]
    click element    xpath=
    Table Should Contain    locator    expected
    close browser
    
5.8.3.4_admin_settings_approvals_multi_access_check
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    Logout
    close browser
    
5.8.1.3_admin_settings_approvals_restinfo_usraccess_check
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div/div
    wait until element is visible    xpath=//*[@id="next"]
    click element    xpath=//*[@id="panel2"]/div[2]
    wait until element is visible    xpath=//*[@id="next"]
    click element    xpath=//*[@id="panel3"]/div[2]/span[1]/svg/path
    wait until element is visible    xpath=//*[@id="next"]
    click element    xpath=//*[@id="panel3"]/div[2]/span[1]/svg/path
    wait until element is visible    xpath=//*[@id="next"]
    click element    xpath=//*[@id="panel4"]/div[2]/span[1]/svg
    wait until element is visible    xpath=//*[@id="next"]
    click element    xpath=//*[@id="panel5"]/div[2]/span[1]/svg
    wait until element is visible    xpath=//*[@id="next"]
    Logout
    close browser
    
5.8.1.4_admin_settings_approvals_approveusr_usraccess_check
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    Logout
    close browser    
    
5.8.1.5_admin_settings_approvals_approveusr_modifymenu_usraccess_check
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    Logout
    close browser
    
5.8.1.6_admin_settings_approvals_restinfo_approveusr_usraccess_check
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    Logout
    close browser

5.8.1.7_admin_settings_approvals_restinfo_modifymenu_usraccess_check
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    Logout
    close browser
    
5.8.1.8_admin_settings_approvals_restinfo_modifymenu_approvacc_usraccess_check
     Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[1]/div/div
    Element should be disabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[2]/div/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[3]/div
    Element should be enabled    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[5]/div/div
    Logout
    close browser
    
5.8.3.5_admin_settings_approvals_multi_admin-rest1_cannot_approve_rest2_usrs
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    click element    xpath=
    log to console    admin rest 1 cannot approve admin rest 2 users.
    ${f}    get text    xpath=
    log to console    the disabled text is ${f}
    Element should be disabled    xpath=//*[@id="permissionsR1C3"]
    logout
    close browser
    
    
