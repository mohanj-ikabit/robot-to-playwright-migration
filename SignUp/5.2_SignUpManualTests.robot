*** Settings ***
#Default Tags      signupmanualtests
Library           SeleniumLibrary
Library           FakerLibrary    locale=en_US
Library           String
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
    
Suite Teardown    Close all browsers

*** Test Cases ***
5.2.1.1_signup_email_id_unique_for_each_login
    [Tags]  cannotrunasautomated
    #After SignUp information (Name, Phone, Email), otp sent needs to be validated on phone & email. So this Test needs to be run manually.
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    ${fname}    First Name
    log to console    entering first name as...........${fname}
    input text    xpath=//*[@id="firstName"]        ${fname}
    ${lname}    Last Name
    log to console    entering last name as...........${lname}
    input text    xpath=//*[@id="lastName"]        ${lname}   
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phone"]        ${pno}
    ${email}    Email
    log to console    entering email as...........${email}
    input text    xpath=//*[@id="email"]        ${email}
    #log to console    entering confirm-email as...........${email}
    #input text    xpath=//*[@id="confirmemail"]        ${email}
    ${password}    Password
    log to console    entering password as...........${password}
    input text    xpath=//*[@id="password"]        ${password}
    log to console    entering confirm password as...........${password}
    input text    xpath=//*[@id="confirmPassword"]        ${password}
    log to console    clicking Click Next to continue
    #Verify OTP sent to Phone
    click element    xpath=//*[@id="submit"]
    log to console    clicking Get Me Started to enter the Billing Info - Credit Card, Billing Address & Mailing Address
    click element    xpath=//*[@id="next"]
    log to console    selecting a package
    click element    xpath=//*[@id="pkg1"]
    log to console    clicking next
    click element    xpath=//*[@id="submit"]
    log to console    entering Payment details
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as ${fname}
    input text    xpath=//*[@id="cardholder"]        ${fname}
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${state}=     Select From List By Index    xpath=//*[@id="state"]    2
    log to console    entering state........${state}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    close browser
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    ${fname}    First Name
    log to console    entering first name as...........${fname}
    input text    xpath=//*[@id="firstName"]        ${fname}
    ${lname}    Last Name
    log to console    entering last name as...........${lname}
    input text    xpath=//*[@id="lastName"]        ${lname}
    ${pno}    Phone Number
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phone"]        ${pno}
    ${email}    Email
    log to console    entering email as...........${email}
    input text    xpath=//*[@id="email"]        ${email}
    #log to console    entering confirm-email as...........${email}
    #input text    xpath=//*[@id="confirmemail"]        ${email}
    ${password}    Password
    log to console    entering password as...........${password}
    input text    xpath=//*[@id="password"]        ${password}
    log to console    entering confirm password as...........${password}
    input text    xpath=//*[@id="confirmPassword"]        ${password}
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    ${error}=    get text    xpath=
    log to console    ${error}
    close browser
    
5.2.1.2_signup_phone_no_allowed_in_multiple_logins
    [Tags]  cannotrunasautomated
    #After SignUp information (Name, Phone, Email), otp sent needs to be validated on phone & email. So this Test needs to be run manually.
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    ${fname}    First Name
    log to console    entering first name as...........${fname}
    input text    xpath=//*[@id="firstName"]        ${fname}
    ${lname}    Last Name
    log to console    entering last name as...........${lname}
    input text    xpath=//*[@id="lastName"]        ${lname}
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phone"]        ${pno}
    ${email}    Email
    log to console    entering email as...........${email}
    input text    xpath=//*[@id="email"]        ${email}
    #log to console    entering confirm-email as...........${email}
   # input text    xpath=//*[@id="confirmemail"]        ${email}
    ${password}    Password
    log to console    entering password as...........${password}
    input text    xpath=//*[@id="password"]        ${password}
    log to console    entering confirm password as...........${password}
    input text    xpath=//*[@id="confirmPassword"]        ${password}
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    log to console    selecting a package
    click element    xpath=//*[@id="pkg1"]
    log to console    clicking next
    click element    xpath=//*[@id="submit"]
    log to console    entering Payment details
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as ${fname}
    input text    xpath=//*[@id="cardholder"]        ${fname}
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${state}=     Select From List By Index    xpath=//*[@id="state"]    2
    log to console    entering state........${state}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    close browser
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    ${fname}    First Name
    log to console    entering first name as...........${fname}
    input text    xpath=//*[@id="firstName"]        ${fname}
    ${lname}    Last Name
    log to console    entering last name as...........${lname}
    input text    xpath=//*[@id="lastName"]        ${lname}
    ${pno}    Phone Number
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phone"]        ${pno}
    ${email}    Email
    log to console    entering email as...........${email}
    input text    xpath=//*[@id="email"]        ${email}
    #log to console    entering confirm-email as...........${email}
    #input text    xpath=//*[@id="confirmemail"]        ${email}
    ${password}    Password
    log to console    entering password as...........${password}
    input text    xpath=//*[@id="password"]        ${password}
    log to console    entering confirm password as...........${password}
    input text    xpath=//*[@id="confirmPassword"]        ${password}
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    ${success}=    get text    xpath=
    log to console    ${success}
    close browser

5.2.1.7_signup_information_retained_while_navigating_between_signup_forms
    [Tags]  cannotberunautomated
    #After SignUp information (Name, Phone, Email), otp sent needs to be validated on phone & email. Test needs to be run maually.
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]

    log to console    entering first name as...........John
    input text    xpath=//*[@id="firstName"]        John
    log to console    entering last name as...........Mc
    input text    xpath=//*[@id="lastName"]        Mc   
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........3746593948
    input text    xpath=//*[@id="phone"]        3746593948
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    #log to console    entering confirm-email as...........${email}
   # input text    xpath=//*[@id="confirmemail"]        ${email}
    log to console    entering password as...........Test123A@#DF
    input text    xpath=//*[@id="password"]        Test123A@#DF
    log to console    entering confirm password as...........Test123A@#DF
    input text    xpath=//*[@id="confirmPassword"]        Test123A@#DF
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    log to console    selecting a package
    click element    xpath=//*[@id="pkg2"]
    Select from list by label    xpath=
    log to console    clicking back to verify all the data is still there in sign up free page
    click element    xpath=//*[@id="back"]
    4_1_10_1_text_present    John
    4_1_10_1_text_present    Mc
    4_1_10_1_text_present    3746593948
    4_1_10_1_text_present    g@gmail.com
    4_1_10_1_text_present    John
    click element    xpath=//*[@id="submit"]
    Radio Button Should Be Set To    group_name    value
    List Selection Should Be    xpath=//*[@id="submit"]    loc
    log to console    After coming back to select package the package is the same as selected before.
    log to console    changing package to package 3
    Click element    xpath=//*[@id="pack3"]
    Select from list by label    xpath=//*[@id="pack3"]    3
    log to console    selecting location
    click element    xpath=//*[@id="next"]
    #entering billing information
    log to console    entering Payment details
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Kenny
    input text    xpath=//*[@id="cardholder"]        Kenny
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${state}=     Select From List By Index    xpath=//*[@id="state"]    2
    log to console    entering state........${state}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    Go back
    Radio Button Should Be Set To    group_name    value
    List Selection Should Be    xpath=    
    log to console    data in select package is same as before
    Go Back
    4_1_10_1_text_present    John
    4_1_10_1_text_present    Mc
    4_1_10_1_text_present    3746593948
    4_1_10_1_text_present    g@gmail.com
    4_1_10_1_text_present    John
    log to console    data in user info is same as before
    Click element    xpath=//*[@id="next"]
    log to console    checking if all the selections are same in select a package
    Radio Button Should Be Set To    group_name    value
    List Selection Should Be    xpath=
    log to console    selections are same as before
    click element    xpath=//*[@id="next"]
    log to console    checking if all the selections are same in billing page
    4_1_10_1_text_present    Kenny
    4_1_10_1_text_present    ${credit}
    4_1_10_1_text_present    ${address}
    4_1_10_1_text_present    ${city}
    4_1_10_1_text_present    ${state}
    4_1_10_1_text_present    ${zip}
    log to console    data in billing is same as entered before
    close browser
    
5.2.1.8_signup_select_package1_2_3_verify_cost
    [Tags]  cannotberunautomated
    #After SignUp information (Name, Phone, Email), otp sent needs to be validated on phone & email. Test needs to be run maually.
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    log to console    entering first name as...........John
    input text    xpath=//*[@id="firstName"]        John
    log to console    entering last name as...........Mc
    input text    xpath=//*[@id="lastName"]        Mc   
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........3746593948
    input text    xpath=//*[@id="phone"]        3746593948
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    #log to console    entering confirm-email as...........${email}
   # input text    xpath=//*[@id="confirmemail"]        ${email}
    log to console    entering password as...........Test123A@#DF
    input text    xpath=//*[@id="password"]        Test123A@#DF
    log to console    entering confirm password as...........Test123A@#DF
    input text    xpath=//*[@id="confirmPassword"]        Test123A@#DF
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    log to console    selecting a package
    click element    xpath=//*[@id="pkg1"]
    Select from list by label    xpath=
    ${cost}    get text    xpath=
    log to console    cost for pkg1 is    ${cost}
     click element    xpath=//*[@id="pkg2"]
    Select from list by label    xpath=
    ${cost}    get text    xpath=
    log to console    cost for pkg2 is    ${cost}
    click element    xpath=//*[@id="pkg3"]
    Select from list by label    xpath=
    ${cost}    get text    xpath=
    log to console    cost for pkg3 is    ${cost}

5.2.1.9_signup_billing_information_mandatory_field_
    [Tags]  cannotberunautomated, coveredbystripe
    #After SignUp information (Name, Phone, Email), otp sent needs to be validated on phone & email. Test needs to be run maually.
    #Also Billling/Payment Info is covered by a 3rd party tool stripe.
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    log to console    entering first name as...........John
    input text    xpath=//*[@id="firstName"]        John
    log to console    entering last name as...........Mc
    input text    xpath=//*[@id="lastName"]        Mc   
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........3746593948
    input text    xpath=//*[@id="phone"]        3746593948
    log to console    entering email as...........g@gmail.com
    input text    xpath=//*[@id="email"]        g@gmail.com
    #log to console    entering confirm-email as...........${email}
   # input text    xpath=//*[@id="confirmemail"]        ${email}
    log to console    entering password as...........Test123A@#DF
    input text    xpath=//*[@id="password"]        Test123A@#DF
    log to console    entering confirm password as...........Test123A@#DF
    input text    xpath=//*[@id="confirmPassword"]        Test123A@#DF
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    log to console    selecting a package
    click element    xpath=//*[@id="pkg1"]
    click element    xpath=//*[@id="submit"]
    log to console    entering Payment details
    #entering card number as blank
    log to console    entering credit card number blank
    log to console    entering mm/yy    1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as blank
    #input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as blank
    #input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Blank
    #input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
    #checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Blank
    #input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
    #checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    log to console    entering address........Blank
    #input text    xpath=//*[@id="address"]        Blank
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
#checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering city........Blank
   # input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
        reload page
#checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    #input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........Blank
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
#checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........Blank
    #input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
#checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........blank
    #input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........${zip}
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
    reload page
#checking for error validation
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    as 1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as Jim
    input text    xpath=//*[@id="cardholder"]        Jim
    log to console    entering Billing Information
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    click element    xpath=//*[@id="sameasbilling"]
    log to console    entering mailing address........${address}
    input text    xpath=//*[@id="mailingaddress"]        ${address}
    log to console    entering mailing city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    #input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering mailing zip.........blank
    log to console    clicking get me started
    click element    xpath=//*[@id="getstarted"]
    ${error}    get text    xpath=
    log to console    the error is    ${error}
        
5.2.1.10_signup_billing_information_redeem_promo_code
    [Tags]  cannotrunasautomated
    #After SignUp information (Name, Phone, Email), otp sent needs to be validated on phone & email. Test needs to be run maually.
    login front
    log to console    login successful, clicking sign up free
    Click element    xpath=//*[@href="/sign-up"]
    ${fname}    First Name
    log to console    entering first name as...........${fname}
    input text    xpath=//*[@id="firstName"]        ${fname}
    ${lname}    Last Name
    log to console    entering last name as...........${lname}
    input text    xpath=//*[@id="lastName"]        ${lname}   
    set global variable    ${pno}    3746593948
    log to console    entering phone number as...........${pno}
    input text    xpath=//*[@id="phone"]        ${pno}
    ${email}    Email
    log to console    entering email as...........${email}
    input text    xpath=//*[@id="email"]        ${email}
    #log to console    entering confirm-email as...........${email}
   # input text    xpath=//*[@id="confirmemail"]        ${email}
    ${password}    Password
    log to console    entering password as...........${password}
    input text    xpath=//*[@id="password"]        ${password}
    log to console    entering confirm password as...........${password}
    input text    xpath=//*[@id="confirmPassword"]        ${password}
    log to console    clicking Click Next to continue
    click element    xpath=//*[@id="submit"]
    log to console    selecting a package
    click element    xpath=//*[@id="pkg1"]
    log to console    clicking next
    click element    xpath=//*[@id="submit"]
    log to console    entering Payment details
    ${credit}    Credit Card Number
    log to console    entering credit card number ${credit}
    input text    xpath=//*[@id="credit"]        ${credit}
    log to console    entering mm/yy    1220
    input text    xpath=//*[@id="mm"]        1220
    log to console    entering cvv as 230
    input text    xpath=//*[@id="cvv"]        230
    log to console    entering name as ${fname}
    input text    xpath=//*[@id="cardholder"]        ${fname}
    log to console    entering Billing Information
    ${address}    Address
    log to console    entering address........${address}
    input text    xpath=//*[@id="address"]        ${address}
    log to console    entering address line 2........${address}
    input text    xpath=//*[@id="addressline2"]        ${address}
    ${city}    City
    log to console    entering city........${city}
    input text    xpath=//*[@id="city"]        ${city}
    ${state}=     Select From List By Index    xpath=//*[@id="state"]    2
    log to console    entering state........${state}
    ${zip}    Zip
    input text    xpath=//*[@id="zip"]        ${zip}
    log to console    entering zip.........${zip}
    Input text    xpath=//*[@id="promocode"]    30FREE
    ${promotext}=    get text    xpath=
    log to console    promo code value is    ${promotext}
    log to console    clicking get me started
    close browser

