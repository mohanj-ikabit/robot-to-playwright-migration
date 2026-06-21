*** Settings ***
Default Tags      logotagline
Library           SeleniumLibrary
#Library            FakerLibrary
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
5.3.2.1_restaurant_details_logo_tagline_validdata_formnavigation
    [Tags]   Do Not Run
    login pkg1
    log to console    login successful
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    #log to console    input restaurant name as-----------resname
    #Input text    xpath=//*[@id="Restaurant-Name"]    resname
    #log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    #Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    #log to console        entering phone number as--------------1227856374
    #log to console    input restaurant address as main street, 1st road, lincol main
    #Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    #log to console    input restaurant address as main street 2, 2nd road, rober main
    #Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    #log to console    selecting city as------------------DC
    #Input text    xpath=//*[@id="text-city"]    DC
    #log to console    selecting zipcode as -----------------------453453
    #Input text    xpath=//*[@id="text-zipcode"]    453453
    #log to console    selecting state as -------------------DC
    #Scroll Element Into View    xpath=//*[@id="textMailingAddressline1"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Click Element    xpath=//*[contains(text(),"AR")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    #Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    #Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    #log to console    selecting the same as physical address checkbox
    #Scroll Element Into View    xpath=//*[@id="next"]
    #log to console    entering working days
    #click element    xpath=//*[@id="check-monday"]
    #click element    xpath=//*[@id="simple-tab-1"]
    #click element    xpath=//*[@id="check-tuesday"]
    #click element    xpath=//*[@id="simple-tab-2"]
    #click element    xpath=//*[@id="check-wednesday"]
    #click element    xpath=//*[@id="simple-tab-3"]
    #click element    xpath=//*[@id="check-thursday"]
    #click element    xpath=//*[@id="simple-tab-4"]
    #click element    xpath=//*[@id="check-friday"]
    #click element    xpath=//*[@id="simple-tab-5"]
    #click element    xpath=//*[@id="check-saturday"]
    #click element    xpath=//*[@id="simple-tab-6"]
    #click element    xpath=//*[@id="check-sunday"]
    #log to console    saving the data by clicking save
    #click element    xpath=//*[@id="next"]
    #log to console    saving the data buy clicking next
    #click element    xpath=//*[@id="next"]
    click element     xpath=//*[@href="/user/restaurant-info/aesthetics"]
    #Create File    C:\\Users\\prathik\\Downloads\\test.png    file    SYSTEM
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    test.png
    Sleep    1
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    click element    xpath=//*[@id="image-logo-select"]
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    test.png
    Sleep    1
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    click element    xpath=//*[@id="image-logo-select"]
    log to console    entered both images for restaurant pic and logo image name: test.png entering restaurant tagline as test tagline
    Input text    xpath=//*[@id="tagline"]    test tagline
    click element    xpath=//*[@id="click-to-continue"]
    Wait Until Page Contains    Restaurant Info - Policies & Payments
    click element    xpath=//*[@id="go-back"]
    Wait Until Page Contains    test tagline
    Wait Until Page Contains Element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[2]/div[2]/div/div[2]/img
    log to console    previous data on page are present.
    log to console    go to previous page
    click element    xpath=//*[@id="go-back"]
    Wait Until Page Contains    Restaurant Physical Address*
    click element    xpath=//*[@id="click-to-continue"]
    log to console    go back to the page with Logo & Tagline. Verify that the logo & tagline entered above
    Wait Until Page Contains    Your Restaurant Logo
    Wait Until Page Contains    test tagline
    Wait Until Page Contains Element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[2]/div[2]/div/div[2]/img
    Remove File    C:\\Users\\prathik\\Downloads\\test.png
    close browser
    
5.3.2.2_restaurant_details_logo_tagline_blankdata
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]

    # Editing Restaurant Name
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="text-restaurant-name"]    resname

    # Editing Phone Number
    Press keys   xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console    entering phone number as--------------1227856374

    # Editing Address Line 1
    log to console    input restaurant address as main street, 1st road, lincol main
    Press keys   xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main

    # Editing Address Line 2
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press keys   xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main

    # Editing City
    log to console    selecting city as------------------DC
    Press keys   xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC

    # Editing Zipcode
    log to console    selecting zipcode as-----------------------453453
    Press keys   xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453

    # Editing Customer Support Phone
    Press keys   xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text  xpath=//*[@id="textCustomerSupportPhone"]    4565546789

    # Editing Customer Support Email
    Press keys   xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text  xpath=//*[@id="text-customer-support-email"]    div08@gmail.com

    # Scroll and Navigate
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    log to console    saving the data by clicking next
    click element    xpath=//*[@id="next"]
    sleep  10s

    # Navigating to Aesthetics and Policies Page
    click Element     xpath=//*[@href="/user/restaurant-info/aesthetics"]
    click element    xpath=//*[@id="clickToContinue"]
    page should contain    Restaurant Info - Policies & Payments

    log to console    There are no mandatory fields in Logo and Tagline so there are no blockers from one page to another.
    close browser
    
