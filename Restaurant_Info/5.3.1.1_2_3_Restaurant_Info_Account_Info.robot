*** Settings ***
Default Tags      accountinfo
Library           SeleniumLibrary
#Library            FakerLibrary    
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Text on form.robot




*** Test Cases ***
#5.3.1.1_restaurant_details_account_info_unique_physical_address_same_phone_number_allowed_for_multiple_restaurants
     # [Tags]   Do Not Run
#    login pkg2_tobecreated
#    log to console    login successful
#    log to console    selecting a new restaurant resname1
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
#    log to console    input restaurant name as-----------resname
#    Input text    xpath=//*[@id="text-restaurant-name"]    resname
#    log to console    selecting cuisine------------Belgian
#    Select from list by label    xpath=//*[@id="outlined"]    Belgian
#    Input text    xpath=//*[@id="text-phone-number"]    1227856374
#    log to console        entering phone number as--------------1227856374
#    log to console    input restaurant address as main street, 1st road, lincol main
#    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
#    log to console    input restaurant address as main street 2, 2nd road, rober main
#    Input text    xpath=//*[@id="text-restaurant-addressline12"]    main street 2, 2nd road, rober main
#    log to console    selecting city as------------------DC
#    Input text    xpath=//*[@id="text-city"]    DC
#    log to console    selecting zipcode as -----------------------453453
#    Input text    xpath=//*[@id="text-zipcode"]    453453
#    log to console    selecting state as -------------------DC
#    Select from list by label    xpath=//*[@id="select-state"]    DC
#    log to console    unselecting the same as physical address checkbox
#    Click element    xpath=//*[@id="check-same-address"]
#    log to console    entering mailing address as........mailing street, mailing building #1, test road
#    Input text    xpath=//*[@id="textMailingAddressline1"]    mailing street, mailing building #1, test road
#    log to console    input restaurant address as mail main street 2, 2nd road, rober main 2
#    Input text    xpath=//*[@id="textMailingAddressline2"]    mail main street 2, 2nd road, rober main 2
#    log to console    selecting city as------------------GA
#    Input text    xpath=//*[@id="textMailingCity"]    GA
#    log to console    selecting zipcode as -----------------------453453
#    Input text    xpath=//*[@id="textMailingZipcode"]    453453
#    log to console    selecting state as -------------------GA
#    Select from list by label    xpath=//*[@id="selectMailingState"]    GA
#    log to console    selecting state as -------------------15 Minutes
#    Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
#    log to console    selecting state as -------------------15 Minutes
#    Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
#    log to console    entering working days
#    click element    xpath=//*[@id="check-monday"]
#    click element    xpath=//*[@id="simple-tab-1"]
#    click element    xpath=//*[@id="check-tuesday"]
#    click element    xpath=//*[@id="simple-tab-2"]
#    click element    xpath=//*[@id="check-wednesday"]
#    click element    xpath=//*[@id="simple-tab-3"]
#    click element    xpath=//*[@id="check-thursday"]
#    click element    xpath=//*[@id="simple-tab-4"]
#    click element    xpath=//*[@id="check-friday"]
#    click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[17]/div/header/div/div[4]/svg/path
#    click element    xpath=//*[@id="simple-tab-5"]
#    click element    xpath=//*[@id="check-saturday"]
#    log to console    saving the data buy clicking save
#    click element    xpath=//*[@id="save-and-other-rest-info"]/span[1]
#    entering details for another restaurant with same addess as above
#    log to console    selecting a new restaurant resname
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname
#    log to console    input restaurant name as-----------resname
#    Input text    xpath=//*[@id="text-restaurant-name"]    resname
#    log to console    selecting cuisine------------Belgian
#    Select from list by label    xpath=//*[@id="outlined"]    Belgian
#    Input text    xpath=//*[@id="text-phone-number"]    1227856374
#    log to console        entering phone number as--------------1227856374
#    log to console    input restaurant address as main street, 1st road, lincol main
#    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
#    log to console    input restaurant address as main street 2, 2nd road, rober main
#    Input text    xpath=//*[@id="text-restaurant-addressline12"]    main street 2, 2nd road, rober main
#    log to console    selecting city as------------------DC
#    Input text    xpath=//*[@id="text-city"]    DC
#    log to console    selecting zipcode as -----------------------453453
#    Input text    xpath=//*[@id="text-zipcode"]    453453
#    log to console    selecting state as -------------------DC
#    Select from list by label    xpath=//*[@id="select-state"]    DC
#    log to console    selecting the same as physical address checkbox
#    log to console    selecting state as -------------------15 Minutes
#    Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
#    log to console    selecting state as -------------------15 Minutes
#    Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
#    log to console    entering working days
#    click element    xpath=//*[@id="check-monday"]
#    click element    xpath=//*[@id="simple-tab-1"]
#    click element    xpath=//*[@id="check-tuesday"]
#    click element    xpath=//*[@id="simple-tab-2"]
#    click element    xpath=//*[@id="check-wednesday"]
#    click element    xpath=//*[@id="simple-tab-3"]
#    click element    xpath=//*[@id="check-thursday"]
#    click element    xpath=//*[@id="simple-tab-4"]
#    click element    xpath=//*[@id="check-friday"]
#    click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[17]/div/header/div/div[4]/svg/path
#    click element    xpath=//*[@id="simple-tab-5"]
#    click element    xpath=//*[@id="check-saturday"]
#    log to console    saving the data buy clicking save
#    click element    xpath=//*[@id="save-and-other-rest-info"]/span[1]
#    ${error}    get text    xpath=
#    log to console    ${error}
#    reload page
#    changing the address and now using same phone number
#    log to console    selecting a new restaurant resname
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname
#    log to console    input restaurant name as-----------resname
#    Input text    xpath=//*[@id="text-restaurant-name"]    resname
#    log to console    selecting cuisine------------Belgian
#    Select from list by label    xpath=//*[@id="outlined"]    Belgian
#    Input text    xpath=//*[@id="text-phone-number"]    1227856374
#    log to console        entering phone number as--------------1227856374
#    log to console    input restaurant address as main street12, 1st road, lincol main
#    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street12, 1st road, lincol main
#    log to console    input restaurant address as main street 2, 2nd road, rober main
#    Input text    xpath=//*[@id="text-restaurant-addressline12"]    main street 2, 2nd road, rober main
#    log to console    selecting city as------------------DC
#    Input text    xpath=//*[@id="text-city"]    DC
#    log to console    selecting zipcode as -----------------------453453
#    Input text    xpath=//*[@id="text-zipcode"]    453453
#    log to console    selecting state as -------------------DC
#   Select from list by label    xpath=//*[@id="select-state"]    DC
#    log to console    selecting the same as physical address checkbox
#    log to console    selecting state as -------------------15 Minutes
#    Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
#    log to console    selecting state as -------------------15 Minutes
#    Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
#    log to console    entering working days
#    click element    xpath=//*[@id="check-monday"]
#    click element    xpath=//*[@id="simple-tab-1"]
#    click element    xpath=//*[@id="check-tuesday"]
#    click element    xpath=//*[@id="simple-tab-2"]
#    click element    xpath=//*[@id="check-wednesday"]
#    click element    xpath=//*[@id="simple-tab-3"]
#    click element    xpath=//*[@id="check-thursday"]
#    click element    xpath=//*[@id="simple-tab-4"]
#    click element    xpath=//*[@id="check-friday"]
#    click element    xpath=//*[@id="root"]/div/div/div[2]/div[1]/div/div/div[1]/div/div[17]/div/header/div/div[4]/svg/path
#    click element    xpath=//*[@id="simple-tab-5"]
#    click element    xpath=//*[@id="check-saturday"]
#    log to console    saving the data buy clicking save
#    click element    xpath=//*[@id="save-and-other-rest-info"]/span[1]
#    ${pass}    get text    xpath=
#    log to console    ${pass}
#    close browser
    

     # [Tags]   Do Not Run
#    login
#    log to console    selecting a new restaurant resname
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname
#    log to console    input restaurant name as-----------resname
#    log to console    selecting city as------------------DE
#    Input text    xpath=//*[@id="text-city"]    DE
#    log to console    selecting zipcode as -----------------------453411
#    Input text    xpath=//*[@id="text-zipcode"]    453411
#    log to console    selecting state as -------------------DE
#    Select from list by label    xpath=//*[@id="select-state"]    DE
#    log to console    Selecting new restaurant-------------resname1
#    ${message}    get text    xpath=
#    log to console    ${message}
#    log to console    clicking dont save
#    click element    xpath=
#    ${res1visible}    page should contain    resname1
#    Run Keyword If    ${res1visible}==True    log to console    viewing restaurant 1 now
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname2
#    ${message}    get text    xpath=
#    log to console    ${message}
#    ${text}    Get text    xpath=//*[@id="text-zipcode"]
#   Element Text Should Not Be    xpath=//*[@id="text-zipcode"]    453411
#    log to console    453411 zip code is not saved
#    ${text}    Get text    xpath=//*[@id="text-city"]
#    Element Text Should Not Be    xpath=//*[@id="text-city"]    DE
#    log to console    DE city is not saved
#    ${text}    Get text    xpath=//*[@id="select-state"]
#    Element Text Should Not Be    xpath=//*[@id="select-state"]    DE
#    log to console    DE state is not saved
#    #now saving the data to test
#    log to console    selecting a new restaurant resname
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname
#    log to console    input restaurant name as-----------resname
#    log to console    selecting city as------------------DE
#    Input text    xpath=//*[@id="text-city"]    DE
#    log to console    selecting zipcode as -----------------------453411
#    Input text    xpath=//*[@id="text-zipcode"]    453411
#    log to console    selecting state as -------------------DE
#    Select from list by label    xpath=//*[@id="select-state"]    DE
#    log to console    Selecting new restaurant-------------resname1
#    ${message}    get text    xpath=
#    log to console    ${message}
#    log to console    clicking  save
#    click element    xpath=
#    ${res1visible}    page should contain    resname1
#    Run Keyword If    ${res1visible}==True    log to console    viewing restaurant 1 now
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname2
#    ${message}    get text    xpath=
#    log to console    ${message}
#    ${text}    Get text    xpath=//*[@id="text-zipcode"]
#    Element Text Should Be    xpath=//*[@id="text-zipcode"]    453411
#    log to console    453411 zip code is saved
#    ${text}    Get text    xpath=//*[@id="text-city"]
#    Element Text Should Be    xpath=//*[@id="text-city"]    DE
#    log to console    DE city is saved
#    ${text}    Get text    xpath=//*[@id="select-state"]
#    Element Text Should Be    xpath=//*[@id="select-state"]    DE
#    log to console    DE state is saved
#    Input text    xpath=//*[@id="text-city"]    DC
#    Input text    xpath=//*[@id="text-zipcode"]    453453
#    Select from list by label    xpath=//*[@id="select-state"]    DC
#    click element    xpath=save
#    log to console    data reverted back to test data
#    #selecting differnt restaurant and going to tagline to check if data is removed
#    log to console    selecting a new restaurant resname
#    Select from list by label    xpath=//*[@id="select-restaurant"]    resname
#    log to console    input restaurant name as-----------resname
#    log to console    selecting city as------------------DE
#    Input text    xpath=//*[@id="text-city"]    DE
#    Click element    xpath=Next
#    Click element    xpath=Back
#    ${text}    Get text    xpath=//*[@id="text-city"]
#    Element Text Should Be    xpath=//*[@id="text-city"]    DE
#    log to console    DE state is saved
#    close browser
    

5.3.1.3_restaurant_details_account_info_mandatory_field_Restaurant_Name
    Login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    click Element     xpath=//*[@href="/user/restaurant-info"]
    wait until page contains element    xpath=//*[@href="/user/restaurant-info"]    10s
    #page should contain    xpath=//*[@href="/user/restaurant-info"]
    #click element    xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    
    
    log to console    selecting default restaurant#1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1  
    Wait Until Element Is Visible        xpath=//*[@id="text-restaurant-name"]    5
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    log to console   restaurant name as blank
    log to console  restaurant name as clear
    #SeleniumLibrary.Input Text    xpath=//input[@id="text-restaurant-name"]    ${empty}
    log to console    selecting default cuisine------------American (default)
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #4_1_6_13_list select by label    selectCuisine     Belgian
     Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    log to console        entering phone number as--------------12223334444
    Input text    xpath=//*[@id="textPhoneNumber"]    12223334444
    
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    log to console    input physical restaurant address line1 ----- main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    log to console    input physical restaurant address line 2 ----- main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    log to console    input city as------------------San Jose
    Input text    xpath=//*[@id="text-city"]    San Jose
    
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    log to console    input zipcode as -----------------------95138A
    Input text    xpath=//*[@id="text-zipcode"]    95138A
 
    log to console    selecting state as -------------------AL
    #4_1_6_13_list select by label    select-state     CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"AL")]
    #sleep   2s 
    #Click Element    xpath=//*[contains(text(),"AL")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    
    log to console    not selecting the same as physical address checkbox
    Click Element      xpath=//*[@id="check-same-address"]
    
    Press Keys  xpath=//*[@id="textMailingAddressline1"]  CTRL+a  BACKSPACE
    log to console    input mailing address line1 -----  main street 3, 3rd road, lincol main
    Input text    xpath=//*[@id="textMailingAddressline1"]    main street 3, 3rd road, lincol main
    
    Press Keys  xpath=//*[@id="textMailingAddressline2"]  CTRL+a  BACKSPACE
    log to console    input mailing address line1 ----- main street 4, 4th road, rober main
    Input text    xpath=//*[@id="textMailingAddressline2"]    main street 4, 4th road, rober main
    
    Press Keys  xpath=//*[@id="textMailingCity"]  CTRL+a  BACKSPACE
    log to console    input city as------------------Phoenix
    Input text    xpath=//*[@id="textMailingCity"]    Phoenix
    
    Press Keys  xpath=//*[@id="textMailingZipcode"]  CTRL+a  BACKSPACE
    log to console    input zipcode as -----------------------85001
    Input text    xpath=//*[@id="textMailingZipcode"]    85001
    
    log to console    selecting state as -------------------AZ
    #4_1_6_13_list select by label    selectMailingState     AZ
    #Click Element    xpath=//*[@id="selectMailingState"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"AZ")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"AZ")] 
    #Wait Until Element Is Visible      xpath=//*[@id="selectMailingState"] 
    
    Scroll Element Into View    xpath=//*[@id="next"]
    
     Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    log to console    input customer support phone as -------------------14445556666
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          14445556666
     Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    log to console    input customer support email as -------------------rest1@gmail.com
    Input Text     xpath=//*[@id="text-customer-support-email"]         rest1@gmail.com
    
    log to console    entering working days and time
    #click element    xpath=//*[@id="monday-start-time1"]
    #click element    xpath=//*[@id="monday-end-time2"]
    #click element    xpath=//*[@id="monday-start-time2"]
    #click element    xpath=//*[@id="monday-end-time2"]
    
    #click element    xpath=//*[@id="simple-tab-1"]
    #click element    xpath=//*[@id="tuesday-start-time1"]
    #click element    xpath=//*[@id="tuesday-end-time2"]
    #click element    xpath=//*[@id="tuesday-start-time2"]
    #click element    xpath=//*[@id="tuesday-end-time2"]
    
    #click element    xpath=//*[@id="simple-tab-2"]
    #click element    xpath=//*[@id="wednesday-start-time1"]
    #click element    xpath=//*[@id="wednesday-end-time2"]
    #click element    xpath=//*[@id="wednesday-start-time2"]
    #click element    xpath=//*[@id="wednesday-end-time2"]
    
    #click element    xpath=//*[@id="simple-tab-3"]
    #click element    xpath=//*[@id="thursday-start-time1"]
    #click element    xpath=//*[@id="thursday-end-time2"]
    #click element    xpath=//*[@id="thursday-start-time2"]
    #click element    xpath=//*[@id="thursday-end-time2"]
    
    #click element    xpath=//*[@id="simple-tab-4"]
    #click element    xpath=//*[@id="friday-start-time1"]
    #click element    xpath=//*[@id="friday-end-time2"]
    #click element    xpath=//*[@id="friday-start-time2"]
    #click element    xpath=//*[@id="friday-end-time2"]
    
    #click element    xpath=//*[@id="simple-tab-5"]
    #click element    xpath=//*[@id="saturday-start-time1"]
    #click element    xpath=//*[@id="saturday-end-time2"]
    #click element    xpath=//*[@id="saturday-start-time2"]
    #click element    xpath=//*[@id="saturday-end-time2"]
    
    #click element    xpath=//*[@id="simple-tab-6"]
    #click element    xpath=//*[@id="sunday-start-time1"]
    #click element    xpath=//*[@id="sunday-end-time2"]
    #click element    xpath=//*[@id="sunday-start-time2"]
    #click element    xpath=//*[@id="sunday-end-time2"]
    
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    
    #ids for error text for each missing mandatory fields
    #Restaurant-Name-helper-text    Field cannot be Empty
    #errorPhoneInput1    Field cannot be Empty, Numbers Only!
    #text-restaurant-addressline1-helper-text    Field cannot be Empty
    #text-city-helper-text    Field cannot be Empty
    #text-zipcode-helper-text    Field cannot be Empty
    #textMailingAddressline1-helper-text    Field cannot be Empty
    #textMailingCity-helper-text    Field cannot be Empty
    #textMailingZipcode-helper-text    Field cannot be Empty
    #errorCustomerSupportPhone    Field cannot be Empty, Numbers Only!
    #??no id for helper text for missing customer support email??    no error reported??
    #??no id for helper text for missing After Restaurant Opens*     Field cannot be Empty
    #??no id for helper text for missing Before Restaurant Closes*     Field cannot be Empty
    sleep  10s
     close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_phonenumber
    
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element  xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console   selecting default restaurant#1
    #Click Element     xpath=//*[@href="/user/restaurant-info"]
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
#    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        Do not enter enter phone number 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    log to console    selecting city as------------------San Jose
    Input text    xpath=//*[@id="text-city"]    San JOse
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------AL
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"AL")]
    #sleep   2s 
    #Click Element    xpath=//*[contains(text(),"AL")] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    log to console    input customer support email as -------------------rest1@gmail.com
    Input Text     xpath=//*[@id="text-customer-support-email"]         rest1@gmail.com
    
    
    
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    sleep   20s
    ${res1visible}    page should contain    Field cannot be Empty, Numbers Only!
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty, Numbers Only!
    close browser
     sleep   20s

5.3.1.3_restaurant_details_account_info_mandatory_field_Raddressline1
    
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console   selecting default restaurant#1
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as ...BLANK
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
   #    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    log to console    selecting city as------------------DC
    Input text    xpath=//*[@id="text-city"]    DC
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]    
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_City
  
    login pkg1
    sleep  2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="nextt"]
    
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    log to console    selecting restaurant name as resname1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="text-restaurant-name"]   resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------BLANK
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    #    Input text    xpath=//*[@id="text-city"]    DC
    
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #3Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]   
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_zipcode
    
    
    login pkg1
    sleep  2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    log to console    input restaurant name as-----------resname
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street, 1st road, lincol main
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    log to console    selecting city as------------------DC
    Input text    xpath=//*[@id="text-city"]    DC
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    log to console    selecting zipcode as -----------------------BLANK
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="next"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_State
   
    login pkg1
    sleep  2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------Blank
    Click Element    xpath=//*[@id="select-state"]
    sleep   2s
    Click Element    xpath=//*[contains(text(),"None")] 
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Click Element    xpath=//*[contains(text(),"AR")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789 
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
   
     click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    sleep  20s
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    sleep  20s
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_mailing address
   
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    Scroll Element Into View    xpath=//*[@id="text-city"] 
    
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------AR
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    AR
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Click Element    xpath=//*[contains(text(),"DC")] 
    log to console    unselecting the same as physical address checkbox
    Click Element      xpath=//*[@id="check-same-address"]
    log to console    entering mailing address as........Blank
    #Input text    xpath=//*[@id="textMailingAddressline1"]    mailing street, mailing building #1, test road
    log to console    selecting city as------------------GA
    Press Keys  xpath=//*[@id="textMailingCity"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingCity"]    GA
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="textMailingZipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingZipcode"]    453453
    log to console    selecting state as -------------------GA
    Scroll Element Into View    xpath=//*[@id="selectMailingState"]
    Set Focus To Element   xpath=//*[@id="selectMailingState"] 
    Click Element     xpath=//*[@id="selectMailingState"]    
    Click Element    xpath=//*[contains(text(),"GA")] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data buy clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    sleep    10s
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_mailing_city
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Select from list by label    xpath=//*[@id="outlined"]    Belgian
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Select from list by label    xpath=//*[@id="select-state"]    DC
    log to console    unselecting the same as physical address checkbox
    Click Element      xpath=//*[@id="check-same-address"]
    log to console    entering mailing address as........mailing street, mailing building #1, test road
    Press Keys  xpath=//*[@id="textMailingAddressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingAddressline1"]    mailing street, mailing building #1, test road
    Press Keys  xpath=//*[@id="textMailingAddressline2"]  CTRL+a  BACKSPACE
    log to console    entering mailing address as........mailing street, mailing building #2, test road
    Input text    xpath=//*[@id="textMailingAddressline2"]    mailing street, mailing building #1, test road
    log to console    selecting city as------------------Blank
    #Input text    xpath=//*[@id="textMailingCity"]    GA
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="textMailingZipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingZipcode"]    453453
    log to console    selecting state as -------------------GA
    Scroll Element Into View    xpath=//*[@id="selectMailingState"]
    Set Focus To Element   xpath=//*[@id="selectMailingState"] 
    Click Element     xpath=//*[@id="selectMailingState"]    
    Click Element    xpath=//*[contains(text(),"GA")] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    #Select from list by label    xpath=//*[@id="selectMailingState"]    GA
    #Log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data buy clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_mailing_zip
    
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    #Select from list by label    xpath=//*[@id="select-restaurant"]    resname1
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Select from list by label    xpath=//*[@id="outlined"]    Belgian
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Select from list by label    xpath=//*[@id="select-state"]    DC
    log to console    unselecting the same as physical address checkbox
    Click Element      xpath=//*[@id="check-same-address"]
    log to console    entering mailing address as........mailing street, mailing building #1, test road
     Press Keys  xpath=//*[@id="textMailingAddressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingAddressline1"]    mailing street, mailing building #1, test road
    log to console    entering mailing address as........mailing street, mailing building #2, test road
    Press Keys  xpath=//*[@id="textMailingAddressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingAddressline2"]    mailing street, mailing building #2, test road
    log to console    selecting city as------------------GA
    Press Keys  xpath=//*[@id="textMailingCity"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingCity"]    GA
    log to console    selecting zipcode as -----------------------Blank
    Press Keys  xpath=//*[@id="textMailingZipcode"]  CTRL+a  BACKSPACE
    #Input text    xpath=//*[@id="textMailingZipcode"]    453453
    log to console    selecting state as -------------------GA
    Scroll Element Into View    xpath=//*[@id="selectMailingState"]
    Set Focus To Element   xpath=//*[@id="selectMailingState"] 
    Click Element    xpath=//*[@id="selectMailingState"]
    Click Element    xpath=//*[contains(text(),"GA")]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    #Select from list by label    xpath=//*[@id="selectMailingState"]    GA
    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="after-restaurant-opens"]    15 Minutes
    #log to console    selecting state as -------------------15 Minutes
    #Select from list by label    xpath=//*[@id="before-restaurant-closes"]    15 Minutes
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data buy clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    sleep  20s
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_mailing_state
    
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    #Click Element     xpath=//*[@href="/user/restaurant-info"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as ------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    log to console    selecting the same as physical address checkbox
    Click Element      xpath=//*[@id="check-same-address"]
    log to console    entering mailing address as........mailing street, mailing building #1, test road
    Press Keys  xpath=//*[@id="textMailingAddressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingAddressline1"]    mailing street, mailing building #1, test road
    log to console    entering mailing address as........mailing street, mailing building #2, test road
    Press Keys  xpath=//*[@id="textMailingAddressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingAddressline2"]    mailing street, mailing building #2, test road
    log to console    selecting city as------------------GA
    Press Keys  xpath=//*[@id="textMailingCity"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingCity"]    GA
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="textMailingZipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textMailingZipcode"]    453453
    log to console    selecting state as ------------------Blank
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Click Element    xpath=//*[contains(text(),"GA")
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Field cannot be Empty
    Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
    sleep   20s
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_monday
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    selecting restaurant name as resname1
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
     Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
     Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
     log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    click element    xpath=//*[@id="check-monday"]
    # click element    xpath=//*[@id="simple-tab-1"]
    # click element    xpath=//*[@id="check-tuesday"]
    # click element    xpath=//*[@id="simple-tab-2"]
    # click element    xpath=//*[@id="check-wednesday"]
    # click element    xpath=//*[@id="simple-tab-3"]
    # click element    xpath=//*[@id="check-thursday"]
    # click element    xpath=//*[@id="simple-tab-4"]
    # click element    xpath=//*[@id="check-friday"]
    # click element    xpath=//*[@id="simple-tab-5"]
    # click element    xpath=//*[@id="check-saturday"]
    # click element    xpath=//*[@id="simple-tab-6"]
    # click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for : Monday
    Run Keyword If    ${res1visible}==True    log to console    showing error: Please fill in values for : Monday
    sleep  20s
    close browser
    
5.3.1.3_restaurant_details_account_info_mandatory_field_tuesday
   
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC 
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
     log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    #click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    # click element    xpath=//*[@id="simple-tab-2"]
    # click element    xpath=//*[@id="check-wednesday"]
    # click element    xpath=//*[@id="simple-tab-3"]
    # click element    xpath=//*[@id="check-thursday"]
    # click element    xpath=//*[@id="simple-tab-4"]
    # click element    xpath=//*[@id="check-friday"]
    # click element    xpath=//*[@id="simple-tab-5"]
    # click element    xpath=//*[@id="check-saturday"]
    # click element    xpath=//*[@id="simple-tab-6"]
    # click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for :Tuesday 
    Run Keyword If    ${res1visible}==True    log to console   Please fill in values for :Tuesday
    close browser 
    
5.3.1.3_restaurant_details_account_info_mandatory_field_wednesday
    login pkg1
     
   log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as ------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
     log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    # click element    xpath=//*[@id="check-monday"]
     #click element    xpath=//*[@id="simple-tab-1"]
    # click element    xpath=//*[@id="check-tuesday"]
     click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    # click element    xpath=//*[@id="simple-tab-3"]
    # click element    xpath=//*[@id="check-thursday"]
    # click element    xpath=//*[@id="simple-tab-4"]
    # click element    xpath=//*[@id="check-friday"]
    # click element    xpath=//*[@id="simple-tab-5"]
    # click element    xpath=//*[@id="check-saturday"]
    # click element    xpath=//*[@id="simple-tab-6"]
    # click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for :Wednesday   
    Run Keyword If    ${res1visible}==True    log to console    Please fill in values for :Wednesday
    sleep  20s    
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_thursday 
    login pkg1  
    log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
     Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    # click element    xpath=//*[@id="check-monday"]
    # click element    xpath=//*[@id="simple-tab-1"]
    # click element    xpath=//*[@id="check-tuesday"]
    # click element    xpath=//*[@id="simple-tab-2"]
    # click element    xpath=//*[@id="check-wednesday"]
     click element    xpath=//*[@id="simple-tab-3"]
     click element    xpath=//*[@id="check-thursday"]
    # click element    xpath=//*[@id="simple-tab-4"]
    # click element    xpath=//*[@id="check-friday"]
    # click element    xpath=//*[@id="simple-tab-5"]
    # click element    xpath=//*[@id="check-saturday"]
    # click element    xpath=//*[@id="simple-tab-6"]
    # click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for :Thursday   
    Run Keyword If    ${res1visible}==True    log to console    Please fill in values for :Thursday
    sleep   20s   
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_friday
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    # click element    xpath=//*[@id="check-monday"]
    # click element    xpath=//*[@id="simple-tab-1"]
    # click element    xpath=//*[@id="check-tuesday"]
    # click element    xpath=//*[@id="simple-tab-2"]
    # click element    xpath=//*[@id="check-wednesday"]
    # click element    xpath=//*[@id="simple-tab-3"]
    # click element    xpath=//*[@id="check-thursday"]
     click element    xpath=//*[@id="simple-tab-4"]
     click element    xpath=//*[@id="check-friday"]
    # click element    xpath=//*[@id="simple-tab-5"]
    # click element    xpath=//*[@id="check-saturday"]
    # click element    xpath=//*[@id="simple-tab-6"]
    # click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for :Friday   
    Run Keyword If    ${res1visible}==True    log to console    Please fill in values for :Friday    
    close browser
    
5.3.1.3_restaurant_details_account_info_mandatory_field_saturday
    login pkg1   
    log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as ------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
     log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    # click element    xpath=//*[@id="check-monday"]
    # click element    xpath=//*[@id="simple-tab-1"]
    # click element    xpath=//*[@id="check-tuesday"]
    # click element    xpath=//*[@id="simple-tab-2"]
    # click element    xpath=//*[@id="check-wednesday"]
    # click element    xpath=//*[@id="simple-tab-3"]
    # click element    xpath=//*[@id="check-thursday"]
    # click element    xpath=//*[@id="simple-tab-4"]
    # click element    xpath=//*[@id="check-friday"]
     click element    xpath=//*[@id="simple-tab-5"]
     click element    xpath=//*[@id="check-saturday"]
    # click element    xpath=//*[@id="simple-tab-6"]
    # click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for :Saturday   
    Run Keyword If    ${res1visible}==True    log to console    Please fill in values for :Saturday    
    close browser  
    
5.3.1.3_restaurant_details_account_info_mandatory_field_sunday
    login pkg1   
    log to console    login successful
    log to console    clicking Restaurant Info
    wait until page contains element  xpath=//*[@href="/user/restaurant-info"]
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as ------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
     log to console    selecting the same as physical address checkbox
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="next"]
    log to console    entering working days
    # click element    xpath=//*[@id="check-monday"]
    # click element    xpath=//*[@id="simple-tab-1"]
    # click element    xpath=//*[@id="check-tuesday"]
    # click element    xpath=//*[@id="simple-tab-2"]
    # click element    xpath=//*[@id="check-wednesday"]
    # click element    xpath=//*[@id="simple-tab-3"]
    # click element    xpath=//*[@id="check-thursday"]
    # click element    xpath=//*[@id="simple-tab-4"]
    # click element    xpath=//*[@id="check-friday"]
    # click element    xpath=//*[@id="simple-tab-5"]
    # click element    xpath=//*[@id="check-saturday"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    saving the data by clicking save&next
    click element    xpath=//*[@id="next"]
    ${res1visible}    page should contain    Please fill in values for :Sunday   
    Run Keyword If    ${res1visible}==True    log to console    Please fill in values for :Sunday    
    close browser 

5.3.1.3_restaurant_details_account_info_mandatory_field _food_Monday
    login pkg1
    log to console    login successful
    log to console     selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    log to console    selecting zipcode as -----------------------453453
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    #sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    click element    xpath=//*[@id="check-monday"]
    click element    xpath=//*[@id="simple-tab-0"]
    log to console    entering working days- monday timings - blank 11:11AM  01:01PM  07:07PM
    log to console    entering monday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="monday-start-time1"]     ${EMPTY}
    log to console    entering monday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="monday-start-time2"]    0101p
    log to console    entering monday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="monday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- monday timings - 07:07AM blank  01:01PM  07:07PM
    log to console    entering monday start time1    07:07am
    Press Keys    xpath=//*[@id="monday-start-time1"]      0707a
    log to console    entering monday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="monday-end-time1"]    ${EMPTY}
    log to console    entering monday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="monday-start-time2"]    0101p
    log to console    entering monday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="monday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- monday timings - 07:07AM 11:11AM  blank  07:07PM
    log to console    entering monday start time1    07:07am
    Press Keys    xpath=//*[@id="monday-start-time1"]      0707a
    log to console    entering monday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="monday-end-time1"]   1111a
    log to console    entering monday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="monday-start-time2"]    ${EMPTY}
    log to console    entering monday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="monday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- monday timings - 07:07AM 11:11AM  01:01PM  blank
    log to console    entering monday start time1    07:07am
    Press Keys    xpath=//*[@id="monday-start-time1"]      0707a
    log to console    entering monday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="monday-end-time1"]   1111a
    log to console    entering monday start time2   =01:01pm
    Press Keys    xpath=//*[@id="monday-start-time2"]  0101p 
    log to console    entering monday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="monday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
   
    close browser
    
5.3.1.3_restaurant_details_account_info_mandatory_field_food_Tuesday
    login pkg1
    log to console    login successful
    log to console    selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    click element    xpath=//*[@id="simple-tab-1"]
    click element    xpath=//*[@id="check-tuesday"]
    log to console    entering working days
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering working days- tuesday timings - blank 11:11AM  01:01PM  07:07PM
    #Input text    xpath=//*[@id="tuesday-start-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    #Input text    xpath=//*[@id="tuesday-start-time2"]    0101p
    #Input text    xpath=//*[@id="tuesday-end-time2"]    0707p
    log to console    entering tuesday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="tuesday-start-time1"]     ${EMPTY}
    log to console    entering tuesday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="tuesday-start-time2"]    0101p
    log to console    entering tuesday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="tuesday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- tuesday timings - 07:07AM blank  01:01PM  07:07PM
    #Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    #Input text    xpath=//*[@id="tuesday-end-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="tuesday-start-time2"]    0101p
    #Input text    xpath=//*[@id="tuesday-end-time2"]    0707p
    log to console    entering tuesday start time1    07:07am
    Press Keys    xpath=//*[@id="tuesday-start-time1"]      0707a
    log to console    entering tuesday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="tuesday-end-time1"]    ${EMPTY}
    log to console    entering tuesday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="tuesday-start-time2"]    0101p
    log to console    entering tuesday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="tuesday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- tuesday timings - 07:07AM 11:11AM  blank  07:07PM
    #Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    #Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    #Input text    xpath=//*[@id="tuesday-start-time2"]   ${EMPTY}
    #Input text    xpath=//*[@id="tuesday-end-time2"]    0707p
    log to console    entering tuesday start time1    07:07am
    Press Keys    xpath=//*[@id="tuesday-start-time1"]      0707a
    log to console    entering tuesday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="tuesday-end-time1"]   1111a
    log to console    entering tuesday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="tuesday-start-time2"]    ${EMPTY}
    log to console    entering tuesday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="tuesday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- tuesday timings - 07:07AM 11:11AM  01:01PM  blank
    #Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    #Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    #Input text    xpath=//*[@id="tuesday-start-time2"]   0101p
    #Input text    xpath=//*[@id="tuesday-end-time2"]    ${EMPTY}
    log to console    entering tuesday start time1    07:07am
    Press Keys    xpath=//*[@id="tuesday-start-time1"]      0707a
    log to console    entering tuesday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="tuesday-end-time1"]   1111a
    log to console    entering tuesday start time2   =01:01pm
    Press Keys    xpath=//*[@id="tuesday-start-time2"]  0101p 
    log to console    entering tuesday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="tuesday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
    close browser

    
5.3.1.3_restaurant_details_account_info_mandatory_field_food_Wednesday
     
    login pkg1
    log to console    login successful
    log to console    selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]  
    click element    xpath=//*[@id="simple-tab-2"]
    click element    xpath=//*[@id="check-wednesday"]
    log to console    entering working days
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering working days- wednesday timings - blank 11:11AM  01:01PM  07:07PM
    #Input text    xpath=//*[@id="wednesday-start-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    #Input text    xpath=//*[@id="wednesday-start-time2"]    0101p
    #Input text    xpath=//*[@id="wednesday-end-time2"]    0707p
    log to console    entering wednesday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="wednesday-start-time1"]     ${EMPTY}
    log to console    entering wednesday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="wednesday-start-time2"]    0101p
    log to console    entering wednesday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="wednesday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- wednesday timings - 07:07AM blank  01:01PM  07:07PM
    #Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    #Input text    xpath=//*[@id="wednesday-end-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="wednesday-start-time2"]    0101p
    #Input text    xpath=//*[@id="wednesday-end-time2"]    0707p
    log to console    entering wednesday start time1    07:07am
    Press Keys    xpath=//*[@id="wednesday-start-time1"]      0707a
    log to console    entering wednesday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="wednesday-end-time1"]    ${EMPTY}
    log to console    entering wednesday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="wednesday-start-time2"]    0101p
    log to console    entering wednesday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="wednesday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- wednesday timings - 07:07AM 11:11AM  blank  07:07PM
    #Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    #Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    #Input text    xpath=//*[@id="wednesday-start-time2"]   ${EMPTY}
    #Input text    xpath=//*[@id="wednesday-end-time2"]    0707p
    log to console    entering wednesday start time1    07:07am
    Press Keys    xpath=//*[@id="wednesday-start-time1"]      0707a
    log to console    entering wednesday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="wednesday-end-time1"]   1111a
    log to console    entering wednesday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="wednesday-start-time2"]    ${EMPTY}
    log to console    entering wednesday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="wednesday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- wednesday timings - 07:07AM 11:11AM  01:01PM  blank
    #Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    #Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    #Input text    xpath=//*[@id="wednesday-start-time2"]   0101p
    #Input text    xpath=//*[@id="wednesday-end-time2"]    ${EMPTY}
    log to console    entering wednesday start time1    07:07am
    Press Keys    xpath=//*[@id="wednesday-start-time1"]      0707a
    log to console    entering wednesday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="wednesday-end-time1"]   1111a
    log to console    entering wednesday start time2   =01:01pm
    Press Keys    xpath=//*[@id="wednesday-start-time2"]  0101p 
    log to console    entering wednesday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="wednesday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_food_Thursday
    login pkg1
    log to console    login successful
    log to console    selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
     Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    click element    xpath=//*[@id="simple-tab-3"]
    click element    xpath=//*[@id="check-thursday"]
    log to console    entering working days
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering working days- thursday timings - blank 11:11AM  01:01PM  07:07PM
    #Input text    xpath=//*[@id="thursday-start-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    #Input text    xpath=//*[@id="thursday-start-time2"]    0101p
    #Input text    xpath=//*[@id="thursday-end-time2"]    0707p
    log to console    entering thursday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="thursday-start-time1"]     ${EMPTY}
    log to console    entering thursday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="thursday-start-time2"]    0101p
    log to console    entering thursday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="thursday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- thursday timings - 07:07AM blank  01:01PM  07:07PM
    #Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    #Input text    xpath=//*[@id="thursday-end-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="thursday-start-time2"]    0101p
    #Input text    xpath=//*[@id="thursday-end-time2"]    0707p
    log to console    entering thursday start time1    07:07am
    Press Keys    xpath=//*[@id="thursday-start-time1"]      0707a
    log to console    entering thursday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="thursday-end-time1"]    ${EMPTY}
    log to console    entering thursday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="thursday-start-time2"]    0101p
    log to console    entering thursday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="thursday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- thursday timings - 07:07AM 11:11AM  blank  07:07PM
    #Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    #Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    #Input text    xpath=//*[@id="thursday-start-time2"]   ${EMPTY}
    #Input text    xpath=//*[@id="thursday-end-time2"]    0707p
    log to console    entering thursday start time1    07:07am
    Press Keys    xpath=//*[@id="thursday-start-time1"]      0707a
    log to console    entering thursday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="thursday-end-time1"]   1111a
    log to console    entering thursday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="thursday-start-time2"]    ${EMPTY}
    log to console    entering thursday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="thursday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- thursday timings - 07:07AM 11:11AM  01:01PM  blank
    #Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    #Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    #Input text    xpath=//*[@id="thursday-start-time2"]   0101p
    #Input text    xpath=//*[@id="thursday-end-time2"]    ${EMPTY}
    log to console    entering thursday start time1    07:07am
    Press Keys    xpath=//*[@id="thursday-start-time1"]      0707a
    log to console    entering thursday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="thursday-end-time1"]   1111a
    log to console    entering thursday start time2   =01:01pm
    Press Keys    xpath=//*[@id="thursday-start-time2"]  0101p 
    log to console    entering thursday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="thursday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_food_Friday
    login pkg1
    log to console    login successful
    log to console    selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    click element    xpath=//*[@id="simple-tab-4"]
    click element    xpath=//*[@id="check-friday"]
    log to console    entering working days
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering working days- friday timings - blank 11:11AM  01:01PM  07:07PM
    #Input text    xpath=//*[@id="friday-start-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="friday-end-time1"]    1111a
    #Input text    xpath=//*[@id="friday-start-time2"]    0101p
    #Input text    xpath=//*[@id="friday-end-time2"]    0707p
    log to console    entering friday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="friday-start-time1"]     ${EMPTY}
    log to console    entering friday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="friday-start-time2"]    0101p
    log to console    entering friday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="friday-end-time2"]    0707p 
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- friday timings - 07:07AM blank  01:01PM  07:07PM
    #Input text    xpath=//*[@id="friday-start-time1"]    0707a
    #Input text    xpath=//*[@id="friday-end-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="friday-start-time2"]    0101p
    #Input text    xpath=//*[@id="friday-end-time2"]    0707p
    log to console    entering friday start time1    07:07am
    Press Keys    xpath=//*[@id="friday-start-time1"]      0707a
    log to console    entering friday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="friday-end-time1"]    ${EMPTY}
    log to console    entering friday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="friday-start-time2"]    0101p
    log to console    entering friday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="friday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- friday timings - 07:07AM 11:11AM  blank  07:07PM
    #Input text    xpath=//*[@id="friday-start-time1"]    0707a
    #Input text    xpath=//*[@id="friday-end-time1"]    1111a
    #Input text    xpath=//*[@id="friday-start-time2"]   ${EMPTY}
    #Input text    xpath=//*[@id="friday-end-time2"]    0707p
    log to console    entering friday start time1    07:07am
    Press Keys    xpath=//*[@id="friday-start-time1"]      0707a
    log to console    entering friday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="friday-end-time1"]   1111a
    log to console    entering friday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="friday-start-time2"]    ${EMPTY}
    log to console    entering friday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="friday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- friday timings - 07:07AM 11:11AM  01:01PM  blank
    #Input text    xpath=//*[@id="friday-start-time1"]    0707a
    #Input text    xpath=//*[@id="friday-end-time1"]    1111a
    #Input text    xpath=//*[@id="friday-start-time2"]   0101p
    #Input text    xpath=//*[@id="friday-end-time2"]    ${EMPTY}
    log to console    entering friday start time1    07:07am
    Press Keys    xpath=//*[@id="friday-start-time1"]      0707a
    log to console    entering friday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="friday-end-time1"]   1111a
    log to console    entering friday start time2   =01:01pm
    Press Keys    xpath=//*[@id="friday-start-time2"]  0101p 
    log to console    entering friday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="friday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_food_Saturday
    login pkg1
    log to console    login successful
    log to console    selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"]
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    click element    xpath=//*[@id="simple-tab-5"]
    click element    xpath=//*[@id="check-saturday"]
    log to console    entering working days
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering working days- saturday timings - blank 11:11AM  01:01PM  07:07PM
    #Input text    xpath=//*[@id="saturday-start-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    #Input text    xpath=//*[@id="saturday-start-time2"]    0101p
    #Input text    xpath=//*[@id="saturday-end-time2"]    0707p
    log to console    entering saturday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="saturday-start-time1"]     ${EMPTY}
    log to console    entering saturday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="saturday-start-time2"]    0101p
    log to console    entering saturday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="saturday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- saturday timings - 07:07AM blank  01:01PM  07:07PM
    #Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    #Input text    xpath=//*[@id="saturday-end-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="saturday-start-time2"]    0101p
    #Input text    xpath=//*[@id="saturday-end-time2"]    0707p
    log to console    entering saturday start time1    07:07am
    Press Keys    xpath=//*[@id="saturday-start-time1"]      0707a
    log to console    entering saturday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="saturday-end-time1"]    ${EMPTY}
    log to console    entering saturday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="saturday-start-time2"]    0101p
    log to console    entering saturday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="saturday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- saturday timings - 07:07AM 11:11AM  blank  07:07PM
    #Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    #Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    #Input text    xpath=//*[@id="saturday-start-time2"]   ${EMPTY}
    #Input text    xpath=//*[@id="saturday-end-time2"]    0707p
    log to console    entering saturday start time1    07:07am
    Press Keys    xpath=//*[@id="saturday-start-time1"]      0707a
    log to console    entering saturday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="saturday-end-time1"]   1111a
    log to console    entering saturday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="saturday-start-time2"]    ${EMPTY}
    log to console    entering saturday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="saturday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- saturday timings - 07:07AM 11:11AM  01:01PM  blank
    #Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    #Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    #Input text    xpath=//*[@id="saturday-start-time2"]   0101p
    #Input text    xpath=//*[@id="saturday-end-time2"]    ${EMPTY}
    log to console    entering saturday start time1    07:07am
    Press Keys    xpath=//*[@id="saturday-start-time1"]      0707a
    log to console    entering saturday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="saturday-end-time1"]   1111a
    log to console    entering saturday start time2   =01:01pm
    Press Keys    xpath=//*[@id="saturday-start-time2"]  0101p 
    log to console    entering saturday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="saturday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
    close browser

5.3.1.3_restaurant_details_account_info_mandatory_field_food_Sunday
    login pkg1
    sleep  2s
    ${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    log to console    login successful
    log to console    selecting any restaurant
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    sleep  2s
    wait until page contains element  xpath=//*[@id="next"]
    #Click Element   xpath=//*[@id="next"]
    log to console    input restaurant name as-----------resname
    Press Keys  xpath=//*[@id="text-restaurant-name"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-name"]    resname
    log to console    selecting cuisine------------Belgian
    #Scroll Element Into View    xpath=//*[@id="selectCuisine"] 
    #Click Element    xpath=//*[@id="selectCuisine"]
    #Click Element    xpath=//*[contains(text(),"Belgian")] 
    #Scroll Element Into View    xpath=//*[@id="text-city"] 
    Press Keys  xpath=//*[@id="textPhoneNumber"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="textPhoneNumber"]    1227856374
    log to console        entering phone number as--------------1227856374
    log to console    input restaurant address as main street, 1st road, lincol main
    Press Keys  xpath=//*[@id="text-restaurant-addressline1"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline1"]    main street, 1st road, lincol main
    log to console    input restaurant address as main street 2, 2nd road, rober main
    Press Keys  xpath=//*[@id="text-restaurant-addressline2"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-restaurant-addressline2"]    main street 2, 2nd road, rober main
    log to console    selecting city as------------------DC
    Press Keys  xpath=//*[@id="text-city"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-city"]    DC
    log to console    selecting zipcode as -----------------------453453
    Press Keys  xpath=//*[@id="text-zipcode"]  CTRL+a  BACKSPACE
    Input text    xpath=//*[@id="text-zipcode"]    453453
    log to console    selecting state as -------------------CA
    #Scroll Element Into View    xpath=//*[@id="select-state"] 
    #Set Focus To Element   xpath=//*[@id="select-state"] 
    #Click Element    xpath=//*[@id="select-state"]
    #Wait Until Element Is Visible    xpath=//*[contains(text(),"CA")]
    sleep   2s
    #Click Element    xpath=//*[contains(text(),"CA")] 
    #Wait Until Element Is Visible      xpath=//*[@id="select-state"] 
    #Scroll Element Into View    xpath=//*[@id="text-customer-support-email"] 
    #Click Element      xpath=//*[@id="check-same-address"]
    Scroll Element Into View    xpath=//*[@id="text-customer-support-email"]
    Press Keys  xpath=//*[@id="textCustomerSupportPhone"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="textCustomerSupportPhone"]          4565546789
    Press Keys  xpath=//*[@id="text-customer-support-email"]  CTRL+a  BACKSPACE
    Input Text     xpath=//*[@id="text-customer-support-email"]         div08@gmail.com
    log to console    selecting the same as physical address checkbox
    Scroll Element Into View    xpath=//*[@id="next"]
    click element    xpath=//*[@id="simple-tab-6"]
    click element    xpath=//*[@id="check-sunday"]
    log to console    entering working days
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering working days- sunday timings - blank 11:11AM  01:01PM  07:07PM
    #Input text    xpath=//*[@id="sunday-start-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    #Input text    xpath=//*[@id="sunday-start-time2"]    0101p
    #Input text    xpath=//*[@id="sunday-end-time2"]    0707p
    log to console    entering sunday start time1   ${EMPTY}
    Press Keys    xpath=//*[@id="sunday-start-time1"]     ${EMPTY}
    log to console    entering sunday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 01:01pm
    Press Keys    xpath=//*[@id="sunday-start-time2"]    0101p
    log to console    entering sunday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="sunday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- sunday timings - 07:07AM blank  01:01PM  07:07PM
    #Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    #Input text    xpath=//*[@id="sunday-end-time1"]    ${EMPTY}
    #Input text    xpath=//*[@id="sunday-start-time2"]    0101p
    #Input text    xpath=//*[@id="sunday-end-time2"]    0707p
    log to console    entering sunday start time1    07:07am
    Press Keys    xpath=//*[@id="sunday-start-time1"]      0707a
    log to console    entering sunday end time1    ${EMPTY}
    Press Keys    xpath=//*[@id="sunday-end-time1"]    ${EMPTY}
    log to console    entering sunday start time2 = 01:01PM
    Press Keys    xpath=//*[@id="sunday-start-time2"]    0101p
    log to console    entering sunday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="sunday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- sunday timings - 07:07AM 11:11AM  blank  07:07PM
    #Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    #Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    #Input text    xpath=//*[@id="sunday-start-time2"]   ${EMPTY}
    #Input text    xpath=//*[@id="sunday-end-time2"]    0707p
    log to console    entering sunday start time1    07:07am
    Press Keys    xpath=//*[@id="sunday-start-time1"]      0707a
    log to console    entering sunday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="sunday-end-time1"]   1111a
    log to console    entering sunday start time2   ${EMPTY}
    Press Keys    xpath=//*[@id="sunday-start-time2"]    ${EMPTY}
    log to console    entering sunday end time2 = 07:07PM
    Press Keys    xpath=//*[@id="sunday-end-time2"]    0707p
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}

    log to console    entering working days- sunday timings - 07:07AM 11:11AM  01:01PM  blank
    #Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    #Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    #Input text    xpath=//*[@id="sunday-start-time2"]   0101p
    #Input text    xpath=//*[@id="sunday-end-time2"]    ${EMPTY}
    log to console    entering sunday start time1    07:07am
    Press Keys    xpath=//*[@id="sunday-start-time1"]      0707a
    log to console    entering sunday end time1    = 11:11AM
    Press Keys    xpath=//*[@id="sunday-end-time1"]   1111a
    log to console    entering sunday start time2   =01:01pm
    Press Keys    xpath=//*[@id="sunday-start-time2"]  0101p 
    log to console    entering sunday end time2    ${EMPTY}
    Press Keys    xpath=//*[@id="sunday-end-time2"]     ${EMPTY}
    ${res1visible}    Get text    xpath=//*[@id="timeHelperText"]
    log to console    ${res1visible}
    close browser

    
    
