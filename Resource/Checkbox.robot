*** Settings ***
Library   SeleniumLibrary
#Library    FakerLibrary    locale=en_US
Library   String
Library   Collections

*** Keywords ***
4_1_8_1_checkbox_default_not_selected
    [Arguments]    ${id}
    Checkbox Should Not Be Selected    xpath=//*[@id="${id}"]
    log to console	checkbox is not selected.................${id}

4_1_8_2_checkbox_default_is_selected
    [Arguments]    ${id}
    Checkbox Should Be Selected    xpath=//*[@id="${id}"]
    log to console	checkbox is selected.................${id}

4_1_8_3_checkbox_multiple_selection_allowed
    [Arguments]    ${id}    ${id2}
    Click element    xpath=//*[@id="${id}"]
    Click element    xpath=//*[@id="${id2}"]
    Checkbox Should Be Selected    xpath=//*[@id="${id}"]
    Checkbox Should Be Selected    xpath=//*[@id="${id2}"]
    log to console    ${id} and ${id2} is selected, multiple selection is allowed
    
4_1_8_4_checkbox_multiple_selection_not_allowed
    [Arguments]    ${id}    ${id2}
    Click element    xpath=//*[@id="${id}"]
    Click element    xpath=//*[@id="${id2}"]
    Checkbox Should Not Be Selected    xpath=//*[@id="${id}"]
    Checkbox Should Be Selected    xpath=//*[@id="${id2}"]
    log to console    ${id} is not selected and ${id2} is selected, multiple selection is not allowed
    
4_1_8_5_checkbox_default_state_enabled
    [arguments]	    ${ID}
	Element should be enabled	xpath=//*[@id="${ID}"]
	log to console	${ID}.......checkbox is enabled
	
4_1_8_6_checkbox_default_state_disabled
    [arguments]	    ${ID}
	Element should be disabled	xpath=//*[@id="${ID}"]
	log to console	${ID}.......checkbox is disabled
	
4_1_8_7_checkbox_label
    [Arguments]    ${id}    ${text}
    ${pattern}=		get text	 xpath=//*[@id="${id}"]
    Should be equal as strings		${pattern}     ${text}
    log to console	checkbox field label is.............${pattern}

4_1_8_8_checkbox_button_attribute
   [arguments]  ${id}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   ${temp_value}=  Get Element Attribute   ${id}   ${ATTRIBUTE}
   #Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   Log To Console    Value read ${temp_value}   Value expected ${ATTRIBUTE_VALUE}
   Should Be Equal As Strings    ${temp_value}    ${ATTRIBUTE_VALUE}
   Log to Console    Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.
