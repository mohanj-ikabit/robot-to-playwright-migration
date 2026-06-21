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
4_1_3_1_link_rightName
     [Arguments]    ${id}   ${text}
     ${pattern}=	get text	xpath=//*[@href="${id}"]
     should be equal as strings     ${pattern}     ${text}
     log to console   the link has text........${text}

4_1_3_2_link_right_color
    [Arguments]    ${id}
     ${pattern}=	Get Element Attribute	xpath=//*[@href="${id}"]    style=color
     log to console   the link has color........${pattern}
     
4_1_3_4_link_clickActive
     [Arguments]    ${id}
     Element should be enabled	    xpath=//*[@href="${id}"]
     Click Element    xpath=//*[@href="${id}"]
     Sleep   3s
     Execute Javascript  history.back()
     Sleep   2s
     log to console     the link is active........${id}

4_1_3_5_link_clickInactive
     [Arguments]    ${id}
     Element should be disabled	    xpath=//*[@href="${id}"]
     log to console     the link is inactive........${id}
    
