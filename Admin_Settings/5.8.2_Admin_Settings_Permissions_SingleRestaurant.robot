*** Settings ***
Default Tags      permissions_singlerest
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers

*** Test Cases ***
5.8.2.1_admin_settings_permapprov_permtable_checkaccess
    Login using an already created Admin User with approve users access usr001
    click element    xpath=//*[@href="/user/permission-approvals"]
    close browser
    

5.8.2.2_admin_settings_permapprov_permtable_admin_changeperm
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    Select Checkbox    xpath=//*[@id="paymentCashR1C1"]
    Select Checkbox    xpath=//*[@id="paymentCashR1C2"]
    Select Checkbox    xpath=//*[@id="paymentCashR1C3"]
    Select Checkbox    xpath=//*[@id="paymentCashR1C4"]
    click element    xpath=//*[@id="approveR1C3"]
    click element    xpath=//*[@id="saveChanges"]
    Checkbox should be selected    xpath=//*[@id="paymentCashR1C1"]
    Checkbox should be selected    xpath=//*[@id="paymentCashR1C2"]
    Checkbox should be selected    xpath=//*[@id="paymentCashR1C3"]
    Checkbox should be selected    xpath=//*[@id="paymentCashR1C4"]
    Unselect Checkbox    xpath=//*[@id="paymentCashR1C3"]
    Unselect Checkbox    xpath=//*[@id="paymentCashR1C4"]
    click element    xpath=//*[@id="approveR1C3"]
    click element    xpath=//*[@id="saveChanges"]
    Checkbox should be selected    xpath=//*[@id="paymentCashR1C1"]
    Checkbox should be selected    xpath=//*[@id="paymentCashR1C2"]
    Checkbox Should Not Be Selected    xpath=//*[@id="paymentCashR1C3"]
    Checkbox Should Not Be Selected    xpath=xpath=//*[@id="paymentCashR1C4"]
    Logout
    close browser
    
5.8.2.3_admin_settings_permapprov_permtable_deluser
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    click element    xpath=//*[@id="panel2-header"]
    ${f}    get text    //*[@id="panel2-content"]/div/div/table/tbody/tr[1]/th
    log to console    user getting deleted is ...........${f}
    click element    xpath=//*[@id="delete1"]
    click element    xpath=//*[@id="clickToContinue"]
    Page Should Not Contain    ${f}
    logout
    Login
    log to console    login should fail
    close browser
    
5.8.2.4_admin_settings_permapprov_permtable_cannotdeladminuser
    Login
    click element    xpath=//*[@id="root"]
    click element    xpath=//*[@id="panel2-header"]
    ${rows}    get element count    xpath=//*[@id="panel2-content"]
    ${cols}    get element count    xpath=//*[@id="panel2-content"]
    ${d}    Get Table Cell    xpath=//*[@id="panel2-content"]/div/div/table    3    9    
    log to console    the admin cell contains.......${d}
    close browser
    
5.8.2.5_admin_settings_permapprov_permtable_admin_change_designation
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    click element    xpath=//*[@id="panel2-header"]
    Select from list by label    xpath=//*[@id="permissionsR1C1"]    Admin
    Select from list by label    xpath=//*[@id="permissionsR1C2"]    Bartender
    Select from list by label    xpath=//*[@id="permissionsR1C3"]    Bartender
    click element    xpath=//*[@id="saveChanges"]
    click element    xpath=
    List Selection should be    xpath=//*[@id="permissionsR1C1"]    Admin
    List Selection should be    xpath=//*[@id="permissionsR1C2"]    Bartender
    List Selection should be    xpath=//*[@id="permissionsR1C3"]    Bartender
    close browser
    
5.8.2.6_admin_settings_permapprov_permtable_approvuser_change_designation
    Login
    click element    xpath=//*[@id="root"]/div/div/div[1]/div[2]/div/div/div[2]/ul/a[4]/div/div
    click element    xpath=//*[@id="panel2-header"]
    Select from list by label    xpath=//*[@id="permissionsR1C1"]    Admin
    click element    xpath=//*[@id="saveChanges"]
    click element    xpath=
    List Selection should be    xpath=//*[@id="permissionsR1C1"]    Bartender
    ${f}    get text    xpath=
    log to console    The success message is..........${f}
    close browser
    

