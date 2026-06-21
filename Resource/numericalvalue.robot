*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${MIN_NUMERIC_LENGTH}  23
${MAX_NUMERIC_LENGTH}  59969604444
${MAX_VALUE}  9999999999
${NEGATIVE_NUM}        -1
${POSITIVE_NUM}        1


*** keywords ***
4_1_5_1_numeric_zero_not_allowed
    [arguments]  ${ID}
    Input text	   xpath=//input[@id="${ID}"]	  0
    ${pattern}=		get text	xpath=//*[@id="${ID}"]
    Should not contain    ${pattern}	0
    log to console	0 is not allowed for........${ID}
    
4_1_5_2_numeric_field_zero
    [arguments]  ${ID}
    #SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]  0
    #Log To Console  ${ID} validation for zero value
    ${number}   SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]   0  
    ${number_zero}      SeleniumLibrary.Get Value   xpath=//input[@id="${ID}"]     
    ${Status}   Should Not Be Equal       ${number}       ${number_zero}  
    Run Keyword If  ${Status}== None     Log To Console  Field allows value zero - ${ID}

4_1_5_3_numeric_field_not_lt_zero
    [arguments]  ${ID}
    #SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]  0
    #Log To Console  ${ID} validation for zero value
    ${negative_number}   SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]   ${NEGATIVE_NUM}  
    ${number}   SeleniumLibrary.Get Value   xpath=//*[@id="${ID}"]
    ${Status}   SeleniumLibrary.Element Should Not Contain    xpath=//input[@id="${ID}"]    -
    Run Keyword If  ${Status}== True     Log To Console  Field does not contain negative sign - ${ID}
    Run Keyword If  ${Status}!= None     Log To Console  Field contains negative sign, Test Failed. - ${ID}
    
#numeric field negative
    #[arguments]  ${ID}
    #SeleniumLibrary.Input Text   xpath=//input[@id="${ID} "]   -1 
    #Log To Console  ${ID} validation for negative 
 

4_1_5_4_numeric_field_no_alphabets
    [arguments]  ${ID}
    SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]    Alphabet
    ${Status}   SeleniumLibrary.Element Should Not Contain    xpath=//*[@id="${ID}"]    Alphabet
    Run Keyword If  ${Status}==True     Log to Console   Field does not allow Alphabets - ${ID} 
    
4_1_5_5_numeric_field_no_splchars
    [arguments]  ${ID}
    Input text    xpath=//*[@id="${ID}"]    @#$@!@$
    ${PATTERN}=  SeleniumLibrary.Get Element Attribute     xpath=//*[@id="${ID}"]    attribute=pattern
    ${t}    Should Not Be Equal    ${PATTERN}   @#$@!@$   
    Run Keyword If     ${t}==False    Log to Console  Text field does not allow special character - ${ID}
    Run Keyword If     ${t}==True    Log to Console  Text field allows special character - ${ID} 
    
4_1_5_6_numeric_field_minlength
     [arguments]  ${ID}    ${MIN_LENGTH}
     #reload page
     Clear Element Text    xpath=//*[@id="${ID}"]
     SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]   ${MIN_LENGTH}
     ${p}=    get value    xpath=//input[@id="${ID}"]
     ${Status}    should contain    ${p}    ${MIN_LENGTH}
     Run Keyword If  ${Status}==True   Log To Console    Validation for maximum length of the field successful - ${ID}
     Run Keyword If  ${Status}== None   Log To Console  Validation for maximum length of the field FAILED - ${ID}
    
4_1_5_7_numeric_field_maxlength
     [arguments]  ${ID}    ${MAX_LENGTH}
     #reload page
     Clear Element Text    xpath=//*[@id="${ID}"]
     SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]   ${MAX_LENGTH}
     ${p}=    get value    xpath=//input[@id="${ID}"]
     ${Status}    should contain    ${p}    ${MAX_LENGTH}
     Run Keyword If  ${Status}==True   Log To Console    Validation for maximum length of the field successful - ${ID}
     Run Keyword If  ${Status}== None   Log To Console  Validation for maximum length of the field FAILED - ${ID}
     
#numeric maximumlength    
    #[arguments]  ${ID}
    #${NUMERIC_LENGTH} =  SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]    4545445567 
    #${box text}=       SeleniumLibrary.Get Element Attribute    xpath=//input[@id="${ID}"]    attribute=maxlength
    #Should Be Equal  ${box text}     ${NUMERIC_LENGTH}
    Log To Console    ${ID} validation for maximum length
    
4_1_5_8_numeric_field_no_spaces
    [arguments]  ${ID}
    #reload page
    ${number_space}   SeleniumLibrary.Input Text   xpath=//*[@id="${ID}"]    3333 44446  
    ${number_nospace}      SeleniumLibrary.Get Text   xpath=//input[@id="${ID}"]     
    ${Status}   Should Not Be Equal       ${number_space}       ${number_nospace}  
    Run Keyword If  ${Status}== True     Log To Console  Field does allows space in between - ${ID}
    Run Keyword If  ${Status}== False     Log To Console  Field does not allow space in between - ${ID}
     
4_1_5_9_numeric_field_decimal_permitted
    [arguments]    ${ID}
    Input text    xpath=//input[@id="${ID}"]	  4.5
    ${pattern}=		get value	xpath=//*[@id="${ID}"]
    Should contain    ${pattern}	4.5
    log to console	decimal is allowed for........${ID}
    
4_1_5_10_numeric_field_decimal_not_permitted
    [arguments]    ${ID}
    #reload page
    Input text    xpath=//input[@id="${ID}"]	  4.5
    ${pattern}=		get value	xpath=//*[@id="${ID}"]
    Should not contain    ${pattern}	4.5
    log to console	decimal is not allowed for........${ID}
    
4_1_5_11_numeric_field_pastable
    [arguments]  ${ID}
    Press Keys   xpath=//input[@id="${ID}"]    Ctrl+ A
    Press Keys   xpath=//input[@id="${ID}"]    Ctrl + c
    ${Status}  Press Keys   xpath=//input[@id="${ID}"]    Ctrl+ v 
    Run Keyword If  ${Status}== None     Log to Console    Text is pastable in the field - ${ID}


4_1_5_12_numeric_leading_zeroes_stripped
   [arguments]  ${ID}
   ${number}   SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]    0000012345  
   ${number_noleadingzeros}      SeleniumLibrary.Get Value   xpath=//input[@id="${ID}"]     
   ${Status}    Should Not Be Equal       ${number}     ${number_noleadingzeros}  
   Run Keyword If  ${Status}== None     Log To Console   Field strips leading zeroes - ${ID}
   
4_1_5_13_numeric_spacebefore       
      [arguments]  ${ID}
      SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]    ${EMPTY}
      SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]    ${SPACE}
#     ${box text}       SeleniumLibrary.Get Value    xpath=//input[@id="${ID}"]
      Element Text Should Not Be   xpath=//input[@id="${ID}"]    ${SPACE}   
      log to console  ${ID}..........Text field does accept space before 
 

4_1_5_14_numeric_spaceafter
     [arguments]   ${ID}
     SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]    ${EMPTY}
     SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]     ${SPACE}
     Element Text Should Not Be   xpath=//input[@id="${ID}"]    ${SPACE} 
     log to console   ${ID}........Text field does accept space after

4_1_5_15_numeric_field_default_value
    [arguments]	   ${ID}   ${text}
    #reload page
	${pattern}=	Get value	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID} has default value  ${text}
	
4_1_5_16_numeric_field_default_state_enabled
    [arguments]	    ${ID}
	Element should be enabled	xpath=//*[@id="${ID}"]
	log to console   ${ID} is enabled
	
4_1_5_17_numeric_field_default_state_disabled
    [arguments]	    ${ID}
	Element should be disabled	xpath=//*[@id="${ID}"]
	log to console	  ${ID} is disabled
	
4_1_5_18_numeric_field_not_null
    [arguments]  ${ID}
    SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]    ${EMPTY}
    Log To Console    ${ID} validation for NULL 
    
4_1_5_19_numeric_field_label
    [arguments]	  ${ID}   ${text}
	${pattern}=	Get text	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID} has label  ${text}
    
4_1_5_20_numeric_field_attribute
   [arguments]  ${id}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   ${temp_value}=  Get Element Attribute  ${id}  ${ATTRIBUTE}
   #Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   Log To Console    Value read ${temp_value}    Value expected ${ATTRIBUTE_VALUE}
   Should Be Equal As Strings    ${temp_value}    ${ATTRIBUTE_VALUE}
   Log to Console    Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.

#numeric trailing zeroes
   #[arguments]  ${ID}
   #${number}   SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]    1234500000
   #${number_noleadingzeros}      SeleniumLibrary.Get Value   xpath=//input[@id="${ID}"]     
  # ${Status}   Should Not Be Equal       ${number}     ${number_noleadingzeros}  
   #Run Keyword If  ${Status}== None     Log To Console   Field strips leading zeroes - ${ID}

#numeric minlength
    # [arguments]  ${ID}
    # SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]   ${MIN_NUMERIC_LENGTH}
     #Log to Console  ${ID}  Minimum length validation
 
#numeric maxlength
     #[arguments]  ${ID}
    # SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]   ${MAX_NUMERIC_LENGTH}
    # Log to Console  ${ID} Maximum length  validation

