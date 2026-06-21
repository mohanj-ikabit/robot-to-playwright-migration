*** Settings ***
#Default Tags    
Library    SeleniumLibrary
Library    String
Resource   ../Resource/button.robot
Resource   ../Resource/dropdownlist.robot
Resource    ../Resource/dropdown.robot
Resource   ../Resource/genericfunctions.robot
Resource   ../Resource/numericalvalue.robot
Resource   ../Resource/textfield.robot
Resource   ../Resource/Checkbox.robot
Resource    ../Resource/Text on form.robot
Resource    ../Resource/date.robot
Resource    ../Resource/Email ID.robot

Suite Teardown    close all browsers
*** Test Cases ***
App_Open
    #login createuser
    #go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/restaurant-info
    Login
    click element    xpath=//*[@href="/user/restaurant-info"]
    click element    xpath=//*[@href="/user/calendar-settings"]
    Set Selenium Speed    0.50 second

#Only a range of dates (during next 1 year allowed), so may or may not have leap year in that range
holiday1_right_format
    #4_1_7_2_date_right_format    holiday1
    wait until element is visible    xpath=//*[@id="holiday1"]     5s
    #click element    xpath=//*[@id="${holiday1}"]
    click element    xpath=//*[@id="holiday1"]
    Input Text    xpath=//input[@id="holiday1"]    ${EMPTY}
    Input Text    xpath=//input[@id="holiday1"]    01032022
    #Input text	  xpath=//*[@id="${holiday1}"]		01032022
    #Input text	  ${holiday1} 	01032022
    ${pattern}=	  get text	xpath=//*[@id="holiday1"]
    should be equal as strings   ${pattern}    01/03/2022
    log to console	 the date pattern is.................${pattern}

holiday1_right_format2
    #4_1_7_2_date_right_format    holiday1
    #click element    xpath=//*[@id="${holiday2}"]
    click element    xpath=//*[@id="holiday2"]
    #Input text	  xpath=${holiday1}		01032022
    #Input text	  ${holiday1} 	 12132022
    Input Text    xpath=//input[@id="holiday2"]    ${EMPTY}
    Input Text    xpath=//input[@id="holiday2"]    01032022
    ${pattern}=	  get text	xpath=${holiday1}
    should be equal as strings   ${pattern}    01/03/2022
    log to console	 the date pattern is.................${pattern}
h2
    wait until element is visible    xpath=//*[@id="holiday2"]     5s
    click element    xpath=//*[@id="holiday2"]
    Input text	  xpath=//*[@id="holiday2"]    12-12-2021
h3
    wait until element is visible    xpath=//*[@id="holiday3"]     5s
    click element    xpath=//*[@id="holiday3"]
    Input text	  xpath=//*[@id="holiday3"]    12/12/2021
h4
    Input text	  ${holiday4} 	 12122022
h5
    Input text	  ${holiday5} 	 12122022
h6
    Input text	  ${holiday6} 	 12122022
h7
    Input text	  ${holiday7} 	 12122022
h8
    Input text	  ${holiday8} 	 12122022
h9
    Input text	  ${holiday9} 	 12122022
h10
    Input text	  ${holiday10} 	 12122022
h11
    Input text	  ${holiday11} 	 12122022
h12
    Input text	  ${holiday12} 	 12122022
h13
    Input text	  ${holiday13} 	 12122022
h14
    Input text	  ${holiday14} 	 12122022
h15
    Input text	  ${holiday15} 	 12122022
h16
    Input text	  ${holiday16} 	 12122022
h17
    Input text	  ${holiday17} 	 12122022
h18
    Input text	  ${holiday18} 	 12122022
    
    
    
