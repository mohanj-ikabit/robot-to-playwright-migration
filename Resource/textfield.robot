*** Settings ***
Library    SeleniumLibrary
Library    pyperclip
Library    String

*** Variables ***
${NUMBER}  4235569987
${SPC_BEFORE}   ${SPACE}STRING
${SPC_AFTER}   STRING${SPACE}
${SPL_CHAR}    ![a-zA-Z0-9 ]*
${NUM}         [0-9]*
${strspc}    abs abs


*** Keywords ***

4_1_1_1_text_notnull
    [arguments]  ${ID}
    ${status}=   SeleniumLibrary.Input Text   xpath=//*[@id="${ID}"]    ${EMPTY}
    Run Keyword If    ${status}==True    Log To Console    ${ID}......Null value validation Failed.
    Run Keyword If    ${status}!=True    Log to Console    ${ID}......Null value validation Passed.
    
4_1_1_2_text_splchar_allowed
    [arguments]  ${ID}
    clear element text    xpath=//*[@id="${ID}"]
    SeleniumLibrary.Input Text   xpath=//*[@id="${ID}"]      @#$@!@$
    ${PATTERN}  Get value     xpath=//*[@id="${ID}"]
    Should Contain      ${PATTERN}    @#$@!@$
    Log To Console    ${ID}......Text allows special character
    
4_1_1_3_text_splchar_not_allowed
    [arguments]  ${ID}
    clear element text    xpath=//*[@id="${ID}"]
    Input text    xpath=//*[@id="${ID}"]    @#$@!@$
    ${PATTERN}=  SeleniumLibrary.Get Element Attribute     xpath=//*[@id="${ID}"]    attribute=pattern
    ${t}    Should Not Be Equal    ${PATTERN}   @#$@!@$   
    Run Keyword If     ${t}==False    Log to Console  ${ID}......Text field does not allow special character
    Run Keyword If     ${t}==True    Log to Console  ${ID}......Text field allows special character
    
4_1_1_4_text_numbers_allowed
    [arguments]  ${ID}
    clear element text    xpath=//*[@id="${ID}"]
    SeleniumLibrary.Input Text   xpath=//*[@id="${ID}"]      0123456789
    ${PATTERN}  Get value     xpath=//*[@id="${ID}"]    
    Should Contain   ${PATTERN}     0123456789
    Log To Console   ${ID}......Text allows number

4_1_1_5_text_numbers_not_allowed
     [arguments]  ${ID}
     clear element text    xpath=//*[@id="${ID}"]
     ${PATTERN}=  SeleniumLibrary.Get Element Attribute     xpath=//*[@id="${ID}"]    attribute=pattern
     ${t}    Should Not Be Equal    ${PATTERN}   12345687890   
     Run Keyword If     ${t}==False    Log to Console  ${ID}......Text field does not allow number
     Run Keyword If     ${t}==True    Log to Console  ${ID}......Text field allows number
    
4_1_1_6_text_minlength
     [arguments]  ${ID}    ${MIN_LENGTH}
     #reload page
     Clear Element Text    xpath=//*[@id="${ID}"]
     SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]   ${MIN_LENGTH}
     ${p}=    Get Value    xpath=//*[@id="${ID}"]
     log to console    ${ID}......${p}.....is accepted in

4_1_1_6_text_minlength_new
     [arguments]  ${ID}   ${MIN_LEN}
     #${MIN_LEN} should be at least 5 to generate the sample text for testing
     #${sample_text}    Text    ${MIN_LEN}
     ${sample_text}=     Generate Random String    length=${MIN_LEN}    chars=[UPPER][LOWER]
     SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]   ${sample_text}
     ${p}=    get value    xpath=//*[@id="${ID}"]
     ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${sample_text}    ${p}
     Run Keyword If    ${status}==True    Log To Console    ${ID}......Minimum length ${MIN_LEN} validation Passed. Text = ${p}.
     Run Keyword If    ${status}!=True    Log to Console    ${ID}......Minimum length ${MIN_LEN} validation Failed. Text = ${p}.

4_1_1_7_text_maxlength
     [arguments]  ${ID}    ${MAX_LENGTH}
     #reload page
     Clear Element Text    xpath=//*[@id="${ID}"]
     SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]   ${MAX_LENGTH}
     ${p}=    get value    xpath=//*[@id="${ID}"]
     log to console    ${ID}......${p}.... is accepted
     
4_1_1_7_text_maxlength_new
     [arguments]  ${ID}   ${MAX_LEN}
     #${sample_text}    Text    ${MAX_LEN}
     ${sample_text}=     Generate Random String    length=${MAX_LEN}    chars=[UPPER][LOWER]
     SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]   ${sample_text}
     #SeleniumLibrary.Input Text    xpath=//input[@id="${ID}"]   ${sample_text}
     ${p}=    get value    xpath=//*[@id="${ID}"]
     ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${sample_text}    ${p}
     Run Keyword If    ${status}==True    Log To Console    ${ID}......Maximum length ${MAX_LEN} validation Passed. Text = ${p}.
     Run Keyword If    ${status}!=True    Log to Console    ${ID}......Maximum length ${MAX_LEN} validation Failed. Text = ${p}.
    
4_1_1_8_text_confirm_text
	[arguments]  ${ID}   ${ID2}	${val1}   ${val2}   ${ID3}   ${ID4}
	SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]	${val1}
	SeleniumLibrary.Input Text    xpath=//*[@id="${ID2}"]	${val2}
	Scroll element into view	xpath=//*[@id="${ID3}"]
	SeleniumLibrary.Click Element 	   xpath=//*[@id="${ID3}"]
	wait until element is visible     xpath=//*[@id="${ID4}"]
	log to console    Error message is displayed upon mismatch
	SeleniumLibrary.Click Element 	   xpath=//*[@id="${ID4}"]
    
4_1_1_9_text_pastable
    [arguments]  ${ID}
    #reload page
    Input text   xpath=//*[@id="${ID}"]    Ad23$1
    Press Keys   xpath=//*[@id="${ID}"]    Ctrl+ A
    Press Keys   xpath=//*[@id="${ID}"]    Ctrl + c
    Press Keys   xpath=//*[@id="${ID}"]    Ctrl+ v
    ${e}    get value    xpath=//*[@id="${ID}"]
    ${f}    Should Contain    ${e}      Ad23$1
    Run Keyword If  ${f}== True     Log to Console    ${ID}......Text is pastable in the field
    Run Keyword If  ${f}== False     Log to Console    ${ID}......Text is not pastable in the field


4_1_1_10_text_notpastable
    [arguments]  ${ID}
    #reload page
    Press Keys   xpath=//*[@id="${ID}"]    Ctrl+a 
    Press Keys   xpath=//*[@id="${ID}"]     Ctrl+c
    ${Status}    Press Keys   xpath=//*[@id="${ID}"]    Ctrl+V
    Run Keyword If  ${Status}== None     Log to Console    ${ID}......Text is pastable in the field
    Run Keyword If  ${Status}== 1     Log to Console    ${ID}......Text is not pastable in the field
    #Run Keyword And Ignore Error    Log  ${ID}......Text does not allow copy/paste
    
#text no alphabets
    #[arguments]  ${ID}
   # ${NO_ALPHABET} =  SeleniumLibrary.Input Text   xpath=//input[@id="${ID}"]    Alphabet123
   # ${box text}=       SeleniumLibrary.Get Value    xpath=//input[@id="${ID}"]
   # Should Not Be Equal    ${box text}     ${NO_ALPHABET}
   # Log to Console     ${ID}......Text field does not allow alphabets
   


4_1_1_11_text_spacebefore
      [arguments]  ${ID}
      SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]    ${EMPTY}
      SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]    ${SPACE}
    #     ${box text}       SeleniumLibrary.Get Value    xpath=//input[@id="${ID}"]
      Element Text Should Not Be   xpath=//*[@id="${ID}"]    ${SPACE}   
      log to console    ${ID}......Text field does accept space before 
 

4_1_1_12_text_spaceafter
     [arguments]  ${ID}
     SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]    ${EMPTY}
     SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]     ${SPACE}
     Element Text Should Not Be   xpath=//*[@id="${ID}"]    ${SPACE} 
     log to console    ${ID}......Text field does accept space after
     
4_1_1_13_test_nosuggestions
	[arguments]  ${ID}
	Click element	xpath=//*[@id="${ID}"]
	Textfield should contain	xpath=//*[@id="${ID}"]	 ${EMPTY}
	log to console    ${ID}......is not showing any suggestions
  
4_1_1_14_text_field_default_value
	[arguments]	${ID}   ${text}
	${pattern}=	Get text	xpath=//*[@id="${ID}"]
	#should be equal as strings    ${text}   ${pattern}
	should be equal     ${text}   ${pattern}
	log to console    ${ID}......has default value.........${text}

4_1_1_15_text_field_default_state_enabled
	[arguments]	${ID}
	Element should be enabled	xpath=//*[@id="${ID}"]
	log to console	  ${ID}......is enabled

4_1_1_16_text_field_default_state_disabled
	[arguments]	${ID}
	Element should be disabled	xpath=//*[@id="${ID}"]
	log to console	  ${ID}......is disabled

4_1_1_17_text_field_label
	[arguments]	${ID}   ${text}
	${pattern}=	Get text	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID}......has label.......${text}

4_1_1_18_text_field_space_allowed
    [arguments]	${ID}
    SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]    ${strspc}
    ${pattern}=	Get value	xpath=//*[@id="${ID}"]
	should contain   ${pattern}    ${strspc}
	log to console    ${ID}.......allows space
	
4_1_1_19_text_field_space_not_allowed
    [arguments]	${ID}
    SeleniumLibrary.Input Text    xpath=//*[@id="${ID}"]    ${strspc}
    ${pattern}=	Get text	xpath=//*[@id="${ID}"]
	should not be equal as strings    ${strspc}   ${pattern}
	log to console    ${ID}.......doesn't allow space

4_1_1_20_text_field_attribute
   [arguments]  ${id}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   ${temp_value}=  Get Element Attribute  ${id}  ${ATTRIBUTE}
   #Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
   Log To Console    Value read ${temp_value}   Value expected ${ATTRIBUTE_VALUE}
   Should Be Equal As Strings    ${temp_value}    ${ATTRIBUTE_VALUE}
   Log to Console    Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.
