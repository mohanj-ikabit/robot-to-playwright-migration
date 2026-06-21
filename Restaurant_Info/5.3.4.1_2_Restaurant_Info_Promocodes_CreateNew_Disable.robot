*** Settings ***
Default Tags      promocode
Library           SeleniumLibrary
Library           String
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close all browsers


*** Variables ***
${PROMO_CODE_NAME}     halloween 50% off

*** Test Cases ***
5.3.4.1_restaurant_details_promocodes_create_new_duplicate_not_allowed

      login pkg1
    # Generate random promo code
    ${promocode}=    Generate Random String    4    [LOWER]
    Set Global Variable    ${promocode}

    Enter Promo Code Details    ${PROMO_CODE_NAME}    ${promocode}    5    25    200

    # Submit the form
    Click Element And Wait    id=createPromoCode

    # Try creating duplicate
    Enter Promo Code Details    ${PROMO_CODE_NAME}    ${promocode}    5    25    200

    # Submit again and verify error
    Click Element And Wait    id=createPromoCode
    Page Should Contain    Error
    Log To Console    Error for duplicate promo code displayed successfully

    # Close error popup
    Wait Until Element Is Visible    id=closePopUpSaveChanges1    timeout=4s
    Click Element    id=closePopUpSaveChanges1


5.3.4.2_restaurant_details_promocodes_disable_create_duplicate
    [Template]    Disable And Verify Promo Code Creation Is Blocked

    # This will run with the global ${promocode} set from previous test
    ${promocode}



