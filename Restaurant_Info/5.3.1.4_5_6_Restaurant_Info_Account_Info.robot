*** Settings ***
Default Tags      accountinfo2
Library           SeleniumLibrary
Library            FakerLibrary
Library            AutoItLibrary
Library            OperatingSystem    
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot

*** Test Cases ***
5.3.1.4_restaurant_details_account_info_checkbox_same_as_physical_address
    #[Tags]   donotrun
    login pkg1
    log to console    login successful
    Go To Restaurant Info Page

    Scroll Element Into View     xpath=//*[@id="text-zipcode"]

    # Verify checkbox behavior when unchecked
    Unselect Checkbox     xpath=//*[@id="check-same-address"]
    Checkbox Should Not Be Selected    xpath=//*[@id="check-same-address"]
    Verify Mailing Address Fields Are Enabled
    log to console    since check box is not selected, all mailing address fields are enabled

    # Verify checkbox behavior when checked
    Select Checkbox     xpath=//*[@id="check-same-address"]
    Checkbox Should Be Selected    xpath=//*[@id="check-same-address"]
    Verify Mailing Address Fields Are Hidden
    log to console    since check box is selected, all mailing address fields are hidden
