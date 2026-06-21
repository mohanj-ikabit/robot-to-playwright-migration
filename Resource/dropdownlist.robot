*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library  String


*** Keywords ***
4_1_6_1_DDL_LB_Default_old
    [arguments]  ${listID}    ${boxid}
    log to console    The default values in......${listID}.....are as follows
    ${f}    get text    xpath=${listID}
    log to console    ${f}
    click element    xpath=${listID}
    click element    xpath=${boxid}
    reload page
    
4_1_6_1_DDL_LB_Default
   [arguments]  ${listID}
   #did not work - xpath=${listID}, xpath=//*[@id="${listID}"] 
   #${var} =  Get Selected List Value   xpath=//*[@id="${listID}"] 
   #${var} =  Get Selected List Value   xpath=${listID}
   ${var} =  Get Selected List Value   ${listID}
   #//*[@id="${listID}"]
   Log To Console  default value:  ${var}
   reload page
   
4_1_6_2_DDL_LB_value_list
    [arguments]  ${listID}    ${boxid}
    log to console    the total list value is.......
    click element    xpath=${listID}
    ${f}    get text    xpath=${boxid}
    log to console    ${f}
    reload page
    
4_1_6_3_DDL_LB_select_value_old
    [arguments]  ${listID}    ${liID}
    click element    xpath=${listID}
    click element    xpath=${liID}
    ${d}    get text    xpath=${listID}
    log to console    The selected value is.........${d}
    reload page
    
4_1_6_3_DDL_LB_select_value
    [arguments]  ${listID}
    #Click Element    xpath=${listID}
    Click Element    xpath=//*[@id="${listID}"]
    #SeleniumLibrary.Select From List By Index   xpath=//*[@id="${listID}"]    1
    SeleniumLibrary.Select From List By Index   xpath=//select[@id="${listID}"]    1
    SeleniumLibrary.Select From List By Label   xpath=//select[@id="${listID}"]    ${list_label}
    Log To Console  Selected from list at index 1 - ${listID}  
    Run Keyword And Ignore Error    Log    Selecting value from list not working - ${listID}
    reload page
    
4_1_6_4_DDL_LB_edit
    [arguments]  ${listID}
    ${status}    Run Keyword And Return Status    Input text    xpath=${listID}    asdasd
    RUN KEYWORD IF    '${status}' == 'PASS'    log to console    List box edit is allowed for........${listID}
    RUN KEYWORD IF  '${status}' == 'FAIL'    log to console    List box edit is not allowed for.......${listID}
       
4_1_6_5_DDL_LB_order_top_bottom_default_values
    [arguments]  ${listID}    ${boxID}
      click element    xpath=${listID}
      ${itemsx}   Get text   xpath=${boxID}
      @{words}=  Split String    ${itemsx}  \n
      log to console     ${words}
      ${count}    Get Length        ${words}
      log to console    number of elements in list.........${count}
      Remove From List    ${words}    0
      ${ert}    Evaluate    ${count}-2
      Remove From List    ${words}    ${ert}
      log to console    ${words}
      ${order_alphabet}  Copy List      ${words}   
      Sort List    ${order_alphabet}
      log to console    list after removing default top and bottom values........${words}
      log to console    list after alphabetical order...........${order_alphabet}
      Lists Should Be Equal    ${order_alphabet}   ${words}    
      Log to Console   List is in alphabetical order               
      Run Keyword And Ignore Error    Log    List is not in alphabetical order
      reload page
      
4_1_6_5_DDL_LB_order_top_default_values
      [arguments]  ${listID}    ${boxID}
      click element    xpath=${listID}
      ${itemsx}   Get text   xpath=${boxID}
      @{words}=  Split String    ${itemsx}  \n
      log to console     ${words}
      ${count}    Get Length        ${words}
      log to console    number of elements in list.........${count}
      reload page
      Remove From List    ${words}    0
      log to console    ${words}
      ${order_alphabet}  Copy List      ${words}   
      Sort List    ${order_alphabet}
      log to console    list after removing default top and bottom values........${words}
      log to console    list after alphabetical order...........${order_alphabet}
      Lists Should Be Equal    ${order_alphabet}   ${words}    
      reload page
      Log to Console   List is in alphabetical order               
      Run Keyword And Ignore Error    Log    List is not in alphabetical order
      reload page
      
4_1_6_6_DDL_LB_frozen
      [arguments]  ${listID}
      #Element Should Not Be Visible      xpath=//select[@id="${listID}"]
      ${Status}   SeleniumLibrary.Element Should Be Disabled    xpath=${listID}
      Run Keyword If  ${Status}== None     Log to Console    List is frozen - ${listID}
      
4_1_6_7_DDL_LB_view_size
     [arguments]  ${listID}
     #${Status}    Get Element Attribute   xpath=${listID}    attribute=overflow-y
     ${Status}    Get Element Attribute   //*[@id="${listID}"]    attribute=overflow-y
     log to console    ${Status}  
     Run Keyword If  ${Status}== None     Log to Console    Vertical scroll bar is visible - ${listID}
     
4_1_6_8_DDL_LB_content_wider_than_list_size
     [arguments]  ${listID}
     #${Status}    Get Element Attribute   xpath=${listID}    attribute=overflow-x
     ${Status}    Get Element Attribute   //*[@id="${listID}"]    attribute=overflow-x
     log to console    ${Status}  
     Run Keyword If  ${Status}== None     Log to Console    Horizontal scroll bar is visible - ${listID}
     
#4_1_6_9_DDL_no_multi_selection
    #[arguments]  ${listID}    ${liID}
    #click element    xpath=${listID}
    #click element    xpath=${liID}
    #${d}    get text    xpath=${listID}
    #log to console    The selected value is.........${d}.......multiple selection not allowed

4_1_6_9_DDL_no_multi_selection
    [arguments]  ${listID}
    #SeleniumLibrary.Click Element At Coordinates   xpath=//select[@id="${listID}"]    0    0
    SeleniumLibrary.Click Element At Coordinates   //*[@id="${listID}"]    0    0
    #${Status}   SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]    1    2
    #${Status}   SeleniumLibrary.Select from list by index    //*[@id="${listID}"]    1    2
    SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]    0
    SeleniumLibrary.Select from list by index    //*[@id="${listID}"]    0
    Run Keyword If  ${Status}== None     Log to Console    List does not allow multiple selection - ${listID}    
    
4_1_6_10_DDL_LB_allow_multiple_selection
    [arguments]  ${listID}
    #${Status}   SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]     1    2
    ${Status}   SeleniumLibrary.Select from list by index    //select[@id="${listID}"]     1    2
    #SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]     0
    SeleniumLibrary.Select from list by index    //select[@id="${listID}"]     0
    Run Keyword If  ${Status}==True     Log to Console    List allows multiple selection - ${listID}
    
4_1_6_11_DDL_LB_field_label
	[arguments]	${ID}   ${text}
	#${pattern}=	Get text	xpath=${ID}
	${pattern}=	Get text	xpath=//*[@id="${id}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID} has label........${text}
	
4_1_6_12_DDL_LB_attribute
    [arguments]  ${id}   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
    Element Attribute Value Should Be    xpath=//*[@id="${id}"]   ${ATTRIBUTE}   ${ATTRIBUTE_VALUE}
    Log to Console  Button ${id} attribute ${ATTRIBUTE} is ${ATTRIBUTE_VALUE}. Test Passed.
   
4_1_6_13_list select by label
    [arguments]   ${listID}   ${list_label}
    #SeleniumLibrary.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]  10s
    SeleniumLibrary.Wait Until Element Is Visible  xpath=//select[@id="${listID}"]  10s
    SeleniumLibrary.Click Element At Coordinates   xpath=//select[@id="${listID}"]  0    0
    ${Status}   SeleniumLibrary.Select From List By Label     xpath=//select[@id="${listID}"]    ${list_label}
    Run Keyword If  ${Status}==None   Log to Console    "Select item from list....${listID} by Label....${list_label}."

4_1_6_14_DDL_LB_list order
     [arguments]  ${listID}
      @{items}   Get List Items   xpath=//select[@id="${listID}"]
      Remove From List    ${items}    0
      ${order_alphabet}  Copy List      ${items}
      Sort List    ${order_alphabet}
      Lists Should Be Equal    ${order_alphabet}   ${items}    
      Log to Console   List is in alphabetical order - ${listID}                
      Run Keyword And Ignore Error    Log    List is not in alphabetical order - ${listID}
      
