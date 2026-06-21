*** Settings ***
Default Tags      policy
Library           SeleniumLibrary
Library           AutoItLibrary
Library           OperatingSystem    
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot

Suite Teardown    Close All Browsers

*** Test Cases ***

5.3.3.1_restaurant_details_policy_payments_sales_tax_mandatory
    login pkg1
    log to console    login successful
    
    # Navigate to Policy & Payments
    Wait Until Element Is Visible     xpath=//*[@href="/user/restaurant-info"]
    click element     xpath=//*[@href="/user/restaurant-info"]
    log to console    going to policies and payments
    Wait Until Element Is Visible     xpath=//*[@href="/user/restaurant-info/policy-payments"]
    click element     xpath=//*[@href="/user/restaurant-info/policy-payments"]

    # Clear Sales Tax Location field
    Set Focus To Element     xpath=//*[@id="salesTaxLocation"]
    Sleep   3s
    Press Keys    xpath=//*[@id="salesTaxLocation"]    BACKSPACE    BACKSPACE
    Scroll Element Into View    xpath=//*[contains(text(),"Notices & Policies")]
    Scroll Element Into View    xpath=//*[@id="cancellationReviewStateRadio"]
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]
    
    # Submit and verify validation error
    click element    xpath=//*[@id="clickToContinue"]
    Sleep   3s
    Page Should Contain    Field cannot be Empty, Numbers only
    wait until element is visible    xpath=//*[@id="salesTaxLocation-helper-text"]    timeout=4s
    ${error}    get text    xpath=//*[@id="salesTaxLocation-helper-text"]
    should be equal as strings    ${error}    Field cannot be Empty, Numbers only
    log to console    error shown is.........${error}

5.3.1.2_restaurant_details_policy_payments_saved_data_form_navigation
    login pkg1
    log to console    login successful
    
    # Navigate to Policy & Payments
    Wait Until Element Is Visible     xpath=//*[@href="/user/restaurant-info"]
    click element     xpath=//*[@href="/user/restaurant-info"]
    Wait Until Element Is Visible     xpath=//*[@href="/user/restaurant-info/policy-payments"]
    click element     xpath=//*[@href="/user/restaurant-info/policy-payments"]
    
    # Click Continue
    Set Focus To Element     xpath=//*[@id="salesTaxLocation"]
    Sleep   3s
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]
    click element    xpath=//*[@id="clickToContinue"]
    Sleep   3s
    Page Should Contain Element    xpath=//*[@href="/user/restaurant-info/create-promocodes"]

    # Go back to Policy & Payments
    click element    xpath=//*[@href="/user/restaurant-info/policy-payments"]
    Page Should Contain Element    xpath=//*[@href="/user/restaurant-info/policy-payments"]
    Sleep   3s

    # Navigate to Aesthetics
    click element    xpath=//*[@href="/user/restaurant-info/aesthetics"]
    Page Should Contain Element    xpath=//*[@href="/user/restaurant-info/aesthetics"]
    Sleep   3s
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]
    page should contain element    xpath=//*[@id="tagline"]
    click element    xpath=//*[@id="clickToContinue"]
    Sleep   3s

    # Verify return to Policy & Payments
    Page Should Contain Element    xpath=//*[@href="/user/restaurant-info/policy-payments"]

5.3.1.3_restaurant_details_policy_payments_edited_data_form_navigation
    login pkg1

    # Navigate to Policy & Payments
    Wait Until Element Is Visible     xpath=//*[@href="/user/restaurant-info"]
    click element     xpath=//*[@href="/user/restaurant-info"]
    Wait Until Element Is Visible     xpath=//*[@href="/user/restaurant-info/policy-payments"]
    click element     xpath=//*[@href="/user/restaurant-info/policy-payments"]
    log to console    going to policies and payments

    # Edit Sales Tax Location
    click element     xpath=//*[@name="payInRestaurantYesNo"]
    Set Focus To Element     xpath=//*[@id="salesTaxLocation"]
    Sleep   3s
    Press Keys    xpath=//*[@id="salesTaxLocation"]    BACKSPACE    BACKSPACE
    Input Text    xpath=//*[@id="salesTaxLocation"]    23
    ${sales_tax_location}    Get Element Attribute    xpath=//*[@id="salesTaxLocation"]    value
    log to console    sales tax location value set to: ${sales_tax_location}
    
    # Save changes
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]
    log to console    click to continue
    click element    xpath=//*[@id="clickToContinue"]
    wait until element is visible    xpath=//*[@href="/user/restaurant-info/create-promocodes"]    timeout=4s
    Sleep   3s

    # Return to Policy & Payments and verify data
    click element    xpath=//*[@href="/user/restaurant-info/policy-payments"]
    wait until element is visible    xpath=//*[@href="/user/restaurant-info/policy-payments"]    timeout=4s
    Sleep   3s
    Textfield Value Should Be    xpath=//*[@id="salesTaxLocation"]    ${sales_tax_location}

    # Logout and Login again to verify persistence
    close browser

    login pkg1
    click element     xpath=//*[@href="/user/restaurant-info"]
    click element     xpath=//*[@href="/user/restaurant-info/policy-payments"]
    log to console    going to policies and payments
    Textfield Value Should Be    xpath=//*[@id="salesTaxLocation"]    ${sales_tax_location}
    log to console    verified the value of edited field after logging back in
