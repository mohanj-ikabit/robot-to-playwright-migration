*** Settings ***
Library    SeleniumLibrary

*** keywords ***
4_1_12_1_file_upload_default_state_enabled
   [arguments]   ${ID}
   Element should be enabled	xpath=//*[@id="${ID}"]
   Log To Console    ${ID}......is enabled
	
4_1_12_2_file_upload_default_value
    [arguments]	${ID}   ${TEXT}
    ${pattern}=	Get value	xpath=//*[@id="${ID}"]
    should be equal as strings    ${TEXT}   ${pattern}
    log to console    ${ID} has default value  ${TEXT}

4_1_12_3_file_upload_attribute
   [arguments]  ${ID}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   ${temp_value}=  Get Element Attribute  ${ID}  ${ATTRIBUTE}
   #Element Attribute Value Should Be    xpath=//*[@id="${ID}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   Log To Console    Value read ${temp_value}   Value expected ${ATTRIBUTE_VALUE}
   Should Be Equal As Strings    ${temp_value}    ${ATTRIBUTE_VALUE}
   Log to Console    Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.
