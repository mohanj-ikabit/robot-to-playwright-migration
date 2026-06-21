*** Settings ***
Library   SeleniumLibrary
#Library    FakerLibrary    locale=en_US
Library   String
Library   Collections    

*** Variables ***
${LOGIN URL}     https://poc4-test-csmswebapp.d14fcmgiaj61v.amplifyapp.com/
#https://test-csmswebapp.d8et7oslc7qy2.amplifyapp.com/  
#   http://localhost:3000
#     
${BROWSER}         Chrome
${Address1}      36 Wild Rose Ave.
${Address2}      South Mayflower Drive
${City}          Fishers 
${State}         FL
${Zipcode}        32806
${Spl_char}      ")%#@*&!"
${Number}         9837489479
${License Number}   A12345678
${value}   Please select type of user
${csms_loginID}      consultant2@ikabit.com
${csms_password}     Test12@34
${companyID}       99115109115
${max_retry_count}	2
${speed}	2


*** Keywords ***
4_1_2_1_email_ID_wrong_format
    [Arguments]    ${id}
    SeleniumLibrary.Scroll element into view	xpath=//*[@id="${id}"]  
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 user@xyz
    log to console    testing with text..........user@xyz
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 user.com
    log to console    testing with text..........user.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 Onlytext
    log to console    testing with text..........Onlytext
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 example.com
    log to console    testing with text..........example.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 A@b@c@domain.com
    log to console    testing with text..........A@b@c@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 .test@domain.com
    log to console    testing with text...........test@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 test@domain.com
    log to console    testing with text..........test@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 test@domain.com
    log to console    testing with text..........test@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 example@-domain.com
    log to console    testing with text..........example@-domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 abctestemail@domain.com
    log to console    testing with text..........mail@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 abc isnot\valid@domain.com
    log to console    testing with text..........abc isnot\valid@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 test@[IPv6:2018:db8::1]
    log to console    testing with text..........test@[IPv6:2018:db8::1]
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 abc\ is\not\valid@domain.com
    log to console    testing with text..........abc\ is\not\valid@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    log to console   incorrect email formats are rejected
    
4_1_2_2_email_ID_right_format
    [Arguments]    ${id}
    SeleniumLibrary.Scroll element into view	xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 User1@test.netname@gmail.com
    log to console    testing with text...........User1@test.netname@gmail.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 my@m.co.in
    log to console    testing with text...........my@m.co.in
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 Test123@Domain
    log to console    testing with text...........Test123@Domain
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 a@domain.com
    log to console    testing with text...........a@domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 @domain.org
    log to console    testing with text...........domain.org
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 .test"@strange.domain.com
    log to console    testing with text...........""email\".test"@strange.domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 a@domain.org
    log to console    testing with text............a@domain.org
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 admin@mailserver1
    log to console    testing with text...........admin@mailserver1
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 example@localhost
    log to console    testing with text...........example@localhost
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 example-abc@abc-domain.com
    log to console    testing with text...........exampleabc@abc-domain.com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 test@com
    log to console    testing with text...........test@com
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 test@localserver
    log to console    testing with text...........test@localserver
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 test@[IPv6:2018:db8::1]
    log to console    testing with text...........test@[IPv6:2018:db8::1]
    Clear Element text    xpath=//*[@id="${id}"]
    SeleniumLibrary.Input text		xpath=//*[@id="${id}"]		 xyz@example.com
    log to console    testing with text...........xyz@example.com
    Clear Element text    xpath=//*[@id="${id}"]
    log to console   correct email formats are accepted
    

4_1_2_3_email_ID_default_value
    [Arguments]    ${id}    ${text}
    reload page
    ${pattern}=		get text	 xpath=//*[@id="${id}"]
    Should be equal as strings		${pattern}     ${text}
    log to console	field label is.............${pattern}
    

4_1_2_4_email_ID_default_state_enabled
    [arguments]	    ${ID}
	Element should be enabled	xpath=//*[@id="${ID}"]
	log to console	${ID} is enabled
	
	
4_1_2_5_email_ID_default_state_disabled
    [arguments]	    ${ID}
	Element should be disabled	xpath=//*[@id="${ID}"]
	log to console	${ID} is disabled
	
	
4_1_2_6_email_ID_label
    [arguments]	    ${ID}   ${text}
	${pattern}=	Get value	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID} has label  ${text}
	
4_1_2_6_email_ID_label_text
    [arguments]	    ${ID}   ${text}
	${pattern}=	Get text	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID} has label  ${text}
