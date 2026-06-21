*** Settings ***
Default Tags      unsubscribe_billing
Library           SeleniumLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers



*** Test Cases ***
5.8.7.1_admin_settings_subnbilling_unsubscribe_cancel
    [Tags]    unsubscribe_billing

    # Login and navigate to Subscription & Billing page
    Login pkg1
    Page Should Contain       Admin Settings
    Click Element And Waitt    xpath=//*[@href="/user/admin-settings"]
    Click Element And Waitt    xpath=//*[@href="/user/admin-settings/subscription-billing"]

    # Scenario 1: Click "OK" (No) in the Unsubscribe popup
    Scroll Into View And Click    id=unsubscribe
    Confirm Popup Visibility
    Click Element And Waitt       id=OK

    # Scenario 2: Click Close (X) icon in the Unsubscribe popup
    Scroll Into View And Click    id=unsubscribe
    Confirm Popup Visibility
    Click Element And Waitt        id=closePopUpUnsubscribe

    # Scenario 3: Click Yes, then close confirmation popup
    Scroll Into View And Click    id=unsubscribe
    Confirm Popup Visibility
    Click Element And Waitt        id=yesPopUpUnsubscribe
    Page Should Contain           Confirmation
    Page Should Contain           You are unsubscribed from Best8Eats. All your data will be deleted within 30 days.
    Click Element And Waitt        id=closePopUpUnsubscribeConfirm

    # Verify login still works (unsubscription was canceled)
    Logout
    Login pkg1
    Close Browser
