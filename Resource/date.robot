*** Settings ***
Library   SeleniumLibrary
#Library    FakerLibrary    locale=en_US
Library   String
Library   Collections    

*** Keywords ***
4_1_7_1_date_right_format_past
     [Arguments]    ${id}
      Input text	xpath=//*[@id="${id}"]		10292000
      ${pattern}=	get text	xpath=//*[@id="${id}"]
      should be equal as strings	${pattern}    10/29/2000
      log to console	the date pattern is.................${pattern}

4_1_7_2_date_right_format
     [Arguments]    ${id}
      #Input text	xpath=//*[@id="${id}"]		02022024
      ${date1}   Get Current Date   result_format=%m/%d/%Y      
      press keys     xpath=//*[@id="${id}"]   ${date1}
      ${date2}=  Get Element Attribute  xpath=//*[@id="${id}"]  value
      ${pattern}=   Convert Date   ${date2}   date_format=%Y-%m-%d   result_format=%m/%d/%Y
      should be equal as strings	${date1}   ${pattern}
      log to console	the date pattern is.................${pattern}
      
      

4_1_7_2_date_right_format_mmyy
     [Arguments]    ${id}
      Input text	xpath=//*[@id="${id}"]		0325
      ${pattern}=	get text	xpath=//*[@id="${id}"]
      should be equal as strings	${pattern}    03/25
      log to console	the date pattern is.................${pattern}


4_1_7_4_date_leap_year_format
    [Arguments]    ${id}
    Input text   xpath=//*[@id="${id}"]		02292050
    ${pattern}=	   get text	xpath=//*[@id="${id}"]
    should be equal as strings   ${pattern}    02/29/2050
    log to console	the date pattern is.................${pattern}
    
4_1_7_5_date_default_state_enabled
     [Arguments]    ${id}
     #Element should be enabled	    xpath=//*[@href="${id}"]
     Element should be enabled	    xpath=//*[@id="${id}"]
     log to console     the date field is active........${id}

4_1_7_6_date_default_state_disabled
     [Arguments]    ${id}
     #Element should be disabled	    xpath=//*[@href="${id}"]
     Element should be disabled	    xpath=//*[@id="${id}"]
     log to console     the date field is inactive........${id}
     
4_1_7_7_date_default_date_label
    [arguments]	    ${ID}   ${text}
	${pattern}=	Get text	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID} has label  ${text}
	
4_1_7_8_date_attribute
   [arguments]  ${id}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   ${temp_value}=  Get Element Attribute  ${id}  ${ATTRIBUTE}
   #Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   Log To Console    Value read ${temp_value}   Value expected ${ATTRIBUTE_VALUE}
   Should Be Equal As Strings    ${temp_value}    ${ATTRIBUTE_VALUE}
   Log to Console    Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.
