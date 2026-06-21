*** Settings ***
Default Tags        main
Library           SeleniumLibrary
#Resource          ../Resource/genericfunctions.robot
Library            FakerLibrary
Library            String
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/radio button.robot

*** variables ***
${LOGIN URL}    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com
${BROWSER}    chrome

*** KeyWords ***
login front
    Open Browser   ${LOGIN URL}    ${BROWSER}
    wait until element is visible        xpath=//*[@id="standard-basic"]    10
    
    
login createuser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Click element    xpath=//*[@href="/sign-up"]
    
create user data
    ${fname}    First Name
    log to console    entering first name as............${fname}
    Input text    xpath=//*[@id="firstName"]    ${fname}
    ${lname}    Last Name
    log to console    entering last name as.............${lname}
    Input text    xpath=//*[@id="lastName"]    ${lname}
    ${phone}    Generate random string    10    0123456789
    log to console    entering phone number as.............${phone}
    Input text    xpath=//*[@id="phone"]    ${phone}
    ${email}    Email
    log to console    entering Email as.............${email}
    Input text    xpath=//*[@id="email"]    ${email}
    log to console    entering confirm Email as.............${email}
    Input text    xpath=//*[@id="confirmEmail"]    ${email}
    ${password}    Password
    log to console    entering password and confirm password as..........${password}
    Input text    xpath=//*[@id="password"]    ${password}
    Input text    xpath=//*[@id="confirmPassword"]    ${password}
    click element    xpath=//*[@id="submit"]
    log to console    clicking submit
    wait until element is visible    xpath=//*[@id="verifyPhoneNumber"]
    log to console    submit successful
    
login
    Open Browser    ${LOGIN URL}    ${BROWSER}
    #Open Browser    ${LOGIN URL}     ${BROWSER}
    log to console    www
    Maximize Browser Window
    wait until element is visible        xpath=//*[@id="standard-basic"]    10
    click element    xpath=//*[@id="standard-basic"]
    click element    xpath=//*[@href="/login"]
    #Set Browser Implicit wait    2
    #    SeleniumLibrary.Input Text  xpath=//input[@id="loginID"]    consultant2@ikabit.com
    SeleniumLibrary.Input Text  xpath=//input[@id="email"]    manohar.an@ikabit.com
    #abhinn.p@ikabit.com
     SeleniumLibrary.Input Text  xpath=//input[@id="password"]     Abcd@1234
     #test123A
    #    SeleniumLibrary.Input Text  xpath=//input[@id="password"]     Test12@34
    SeleniumLibrary.Input Text  xpath=//input[@id="company-id"]     4019527193
    #99115109115
    set selenium Speed	  1
    wait until element is visible    xpath=//*[@id="submit"]
    Click Button   xpath=//*[@id="submit"]
     # and @id="submit"
    wait until element is visible    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/div/div/div/h2    10
    
login loginpage
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Click element    xpath=//*[@href="/login"]
    
*** Test Cases ***
4.3.1_fv_restruarant_details_account_info
    login
    Click Element    xpath=//*[@href="/user/restaurant-info"]
    
Restaurant_hours_Monday_Start
    scroll element into view    xpath=//*[@id="after-restaurant-opens"]
    Input text    xpath=//*[@id="monday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="monday-start-time1"]
    log to console    monday-start-time1 accepts..........${a}
    
Monday_End
    Input text    xpath=//*[@id="monday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="monday-end-time1"]
    log to console    monday-end-time1 accepts..........${a}
    
Monday_Start1
    Input text    xpath=//*[@id="monday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="monday-start-time2"]
    log to console    monday-start-time2 accepts..........${a}
    
Monday_End1
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="monday-end-time2"]
    log to console    monday-end-time2 accepts..........${a}
    
Checkbox_Monday
    4_1_8_1_checkbox_default_not_selected    check-monday
    Assign Id To Element    xpath=//*[@id="monday"]/div/p/div/div/div[7]/label/span[2]    mon
    4_1_8_7_checkbox_label    mon    Closed
    
Restaurant_hours_tuesday_Start
    click element    xpath=//*[@id="simple-tab-1"]
    Input text    xpath=//*[@id="tuesday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="tuesday-start-time1"]
    log to console    tuesday-start-time1 accepts..........${a}
    
Tuesday_End
    Input text    xpath=//*[@id="tuesday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="tuesday-end-time1"]
    log to console    tuesday-end-time1 accepts..........${a}
    
tuesday_Start1
    Input text    xpath=//*[@id="tuesday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="tuesday-start-time2"]
    log to console    tuesday-start-time2 accepts..........${a}
    
tuesday_end1
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="tuesday-end-time2"]
    log to console    tuesday-end-time2 accepts..........${a}
    
Checkbox_tuesday
    4_1_8_1_checkbox_default_not_selected    check-tuesday
    Assign Id To Element    xpath=//*[@id="tuesday"]/div/p/div/div/div[7]/label/span[2]    tue
    4_1_8_7_checkbox_label    tue    Closed
    
Restaurant_hours_Wednesday_Start_test
    click element    xpath=//*[@id="simple-tab-2"]
    Input text    xpath=//*[@id="wednesday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="wednesday-start-time1"]
    log to console    wednesday-start-time1 accepts..........${a}
    
wednesday_end_test
    Input text    xpath=//*[@id="wednesday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="wednesday-end-time1"]
    log to console    wednesday-end-time1 accepts..........${a}
  
wednesday_Start1_test
    Input text    xpath=//*[@id="wednesday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="wednesday-start-time2"]
    log to console    wednesday-start-time2 accepts..........${a}
    
wednesday_End1_test
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="wednesday-end-time2"]
    log to console   wednesday-end-time2 accepts..........${a}
    
Checkbox_wednesday_test
    4_1_8_1_checkbox_default_not_selected    check-wednesday
    Assign Id To Element    xpath=//*[@id="wednesday"]/div/p/div/div/div[7]/label/span[2]    wed
    4_1_8_7_checkbox_label    wed    Closed
    
Restaurant_hours_thursday_Start
    click element    xpath=//*[@id="simple-tab-3"]
    Input text    xpath=//*[@id="thursday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="thursday-start-time1"]
    log to console    thursday-start-time1 accepts..........${a}
    
thursday_End
    Input text    xpath=//*[@id="thursday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="thursday-end-time1"]
    log to console    thursday-end-time1 accepts..........${a}
  
thursday_Start1
    Input text    xpath=//*[@id="thursday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="thursday-start-time2"]
    log to console    thursday-start-time2 accepts..........${a}
    
thursday_End1
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="thursday-end-time2"]
    log to console   thursday-end-time2 accepts..........${a}
    
Checkbox_thursday_test
    4_1_8_1_checkbox_default_not_selected    check-thursday
    Assign Id To Element    xpath=//*[@id="thursday"]/div/p/div/div/div[7]/label/span[2]    thur
    4_1_8_7_checkbox_label    thur    Closed
    
Restaurant_hours_friday_Start
    click element    xpath=//*[@id="simple-tab-4"]
    Input text    xpath=//*[@id="friday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="friday-start-time1"]
    log to console    friday-start-time1 accepts..........${a}
    
friday_End
    Input text    xpath=//*[@id="friday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="friday-end-time1"]
    log to console    friday-end-time1 accepts..........${a}
  
friday_Start1
    Input text    xpath=//*[@id="friday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="friday-start-time2"]
    log to console    friday-start-time2 accepts..........${a}
    
friday_End1
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="friday-end-time2"]
    log to console   friday-end-time2 accepts..........${a}
    
Checkbox_friday
    4_1_8_1_checkbox_default_not_selected    check-friday
    Assign Id To Element    xpath=//*[@id="friday"]/div/p/div/div/div[7]/label/span[2]    fri
    4_1_8_7_checkbox_label    fri    Closed
    
Restaurant_hours_saturday_Start
    #Assign Id To Element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[17]/div/header/div/div[4]    sideclick
    #click element    xpath=//*[@id="sideclick"]
    click element    xpath=//*[@id="simple-tab-5"]
    Input text    xpath=//*[@id="saturday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="saturday-start-time1"]
    log to console    saturday-start-time1 accepts..........${a}
    
saturday_End
    Input text    xpath=//*[@id="saturday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="saturday-end-time1"]
    log to console    saturday-end-time1 accepts..........${a}
  
saturday_Start1
    Input text    xpath=//*[@id="saturday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="saturday-start-time2"]
    log to console    saturday-start-time2 accepts..........${a}
    
saturday_End1
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="saturday-end-time2"]
    log to console   saturday-end-time2 accepts..........${a}
    
Checkbox_saturday
    4_1_8_1_checkbox_default_not_selected    check-saturday
    Assign Id To Element    xpath=//*[@id="saturday"]/div/p/div/div/div[7]/label/span[2]    sat
    4_1_8_7_checkbox_label    sat    Closed
    
Restaurant_hours_sunday_Start
    click element    xpath=//*[@id="simple-tab-6"]
    Input text    xpath=//*[@id="sunday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="sunday-start-time1"]
    log to console    sunday-start-time1 accepts..........${a}
    
sunday_End
    Input text    xpath=//*[@id="sunday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="sunday-end-time1"]
    log to console    sunday-end-time1 accepts..........${a}
  
sunday_Start1
    Input text    xpath=//*[@id="sunday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="sunday-start-time2"]
    log to console    sunday-start-time2 accepts..........${a}
    
sunday_End1
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="sunday-end-time2"]
    log to console   sunday-end-time2 accepts..........${a}
    
Checkbox_sunday
    4_1_8_1_checkbox_default_not_selected    check-sunday
    Assign Id To Element    xpath=//*[@id="sunday"]/div/p/div/div/div[7]/label/span[2]    sun
    4_1_8_7_checkbox_label    sun    Closed
