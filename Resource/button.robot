***Settings***
Library    SeleniumLibrary
Library   Collections



***keywords***
4_1_4_1_button_rightname
    [arguments]  ${id}
    ${text}=    Get text    xpath=//*[@id="${id}"]
    log to console    button text is......${text}
   
4_1_4_1_button_rightname_new
    [arguments]  ${id}   ${bname}
    ${text}=    Get text    xpath=//*[@id="${id}"]
    log to console    button name parameter is......${bname}
    log to console    button text is......${text}
    #${bname_lowercase} =    Convert To Lowercase    ${bname} 
    #${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${text}    ${bname}
    Should Be Equal As Strings    ${text}    ${bname}
    #Run Keyword If    '${status}' == 'True'    Log To Console    Test Passed
    Log to Console    Button name is as expected.
    
4_1_4_2_button_active
    [arguments]  ${id}
    Element Should Be Enabled     xpath=//*[@id="${id}"]
    Log to Console    Button ${id} is Active
   
4_1_4_5_button_inactive
   [arguments]  ${id}
   Element Should Be Disabled     xpath=//*[@id="${id}"] 
   Log to Console    Button ${id} is Inactive

4_1_4_6_button_attribute
   [arguments]  ${id}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   ${temp_value}=  Get Element Attribute  ${id}  ${ATTRIBUTE}
   #Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   Log To Console    Atttribute value read ${temp_value}. Value expected ${ATTRIBUTE_VALUE}.
   Should Be Equal As Strings    ${temp_value}    ${ATTRIBUTE_VALUE}
   Log to Console    Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.
