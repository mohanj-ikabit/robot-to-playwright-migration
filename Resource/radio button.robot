*** Settings ***
Library   SeleniumLibrary
#Library    FakerLibrary    locale=en_US
Library   String
Library   Collections

*** Keywords ***
4_1_9_1_radio_button_default_not_selected
    [Arguments]    ${id}	${gname}
    Radio button should not be selected			${gname}
    reload page
    scroll element into view     xpath=//*[@id="${id}"]
    Radio button should not be selected			${gname}
    log to console	radio button is not selected.......xpath=//*[@id="${id}"]


4_1_9_2_radio_button_default_selected
    [Arguments]    ${gname}	${value}
    Radio button should be set to	${gname}    ${value}
    log to console	radio button is set to.......${gname}....${value}


4_1_9_3_radio_button_multiple_selection_allowed
    [Arguments]    ${gname}	${value1}	   ${value2}
    Select radio button 	${gname}    ${value1}
    Select radio button 	${gname}    ${value2}
    Radio button should be set to		${gname}	${value1}
    Radio button should be set to	${gname}    ${value2}
    log to console	${gname}.......radio button is set to and multiple selection is allowed.......${value1}....${value2}

4_1_9_4_radio_button_multiple_selection_not_allowed
    [Arguments]      ${gname}	${value1}	   ${value2}
    Select radio button 	${gname}    ${value1}
    Select radio button 	${gname}    ${value2}
    Radio button should be set to	${gname}    ${value2}
    log to console	${gname}.......radio button is set to and single selection is allowed, multiple selection is not allowed......${value2}
 
4_1_9_5_radio_button_default_state_enabled
    [arguments]	    ${id}
	Element should be enabled	xpath=//*[@id="${id}"]
	log to console	${id}.......radio button is enabled

4_1_9_5_radio_button_default_state_enabled_using_value
    [arguments]	    ${value}
	Element should be enabled	xpath=//*[@value="${value}"]
	log to console	${value}.......radio button is enabled

4_1_9_6_radio_button_default_state_disabled
    [arguments]	    ${id}
	Element should be disabled	xpath=//*[@id="${id}"]
	log to console	${id}.......radio button is disabled 

4_1_9_6_radio_button_default_state_disabled_using_value
    [arguments]	    ${value}
	Element should be disabled	xpath=//*[@value="${value}"]
	log to console	${value}.......radio button is disabled 

4_1_9_7_radio_label
    [Arguments]    ${id}    ${text}
    ${pattern}=		get text	 xpath=//*[@id="${id}"]
    Should be equal as strings		${pattern}     ${text}
    log to console	radio field label is.............${pattern}
    
4_1_9_8_radio_button_attribute
   [arguments]   ${id}   ${attribute}   ${attribute_value}
   ${temp_data}=  Get Element Attribute   ${id}    ${attribute}
   #Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${attribute}   ${attribute_value}
   Log To Console    Value read ${temp_data}   Value expected ${attribute_value}
   Should Be Equal As Strings    ${temp_data}    ${attribute_value}
   Log to Console   Button ${id} attribute ${attribute} is ${attribute_value}. Test Passed.

4_1_9_8_radio_button_attribute_using_value
   [arguments]   ${value}   ${attribute}   ${attribute_value}
   #${temp_data}=  Get Element Attribute   ${value}   ${attribute}
   ${temp_data}=  Get Element Attribute   xpath=//*[@value="${value}"]   ${attribute}
   #Element Attribute Value Should Be    xpath=//*[@value="${value}"]   ${attribute}   ${attribute_value}
   Log To Console    Value read ${temp_data}   Value expected ${attribute_value}
   Should Be Equal As Strings    ${temp_data}    ${attribute_value}
   Log to Console   Button ${value} attribute ${attribute} is ${attribute_value}. Test Passed.
