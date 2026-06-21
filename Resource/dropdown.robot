*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library  String


*** Keywords ***
4_1_6_1_DL_LB_Default
   [arguments]  ${listID}
   ${var} =  Get Selected List Value   xpath=//*[@id="${listID}"] 
   Log To Console  default value:  ${var}
   
4_1_6_2_DL_LB_value_list
    [arguments]  ${listID}
    @{items}=    SeleniumLibrary.Get List Items    xpath=//*[@id="${listID}"]   
    Log To Console  List items for ${listID} - ${items}   
    Run Keyword And Ignore Error    Log    Listing all items is not possible - ${listID}

4_1_6_3_DL_LB_select_value 
    [arguments]  ${listID}
    SeleniumLibrary.Select From List By Index   xpath=//*[@id="${listID}"]    0
    Log To Console  Selected from list at index 0 - ${listID}  
    Run Keyword And Ignore Error    Log    Selecting value from list not working - ${listID}
 
4_1_6_4_DL_edit
      [arguments]  ${listID}
       ${Status}  Get Element Attribute    xpath=//select[@id="${listID}"]     attribute=option
       Run Keyword If  ${Status}== None     Log to Console    List cannot be edited - ${listID}
      ##
#list select value at index1 
#[arguments]  ${listID}
#SeleniumLibrary.Select From List By Index   xpath=//*[@id="${listID}"]    1
#Log To Console  Selected from list at index 1 - ${listID}  
#Run Keyword And Ignore Error    Log    Selecting value from list not working - ${listID} 
   
4_1_6_5_DL_LB_order 
     [arguments]  ${listID}
      @{items}   Get List Items   xpath=//select[@id="${listID}"]
      Remove From List    ${items}    0
      ${order_alphabet}  Copy List      ${items}   
      Sort List    ${order_alphabet}
      Lists Should Be Equal    ${order_alphabet}   ${items}    
      Log to Console   List is in alphabetical order - ${listID}                
      Run Keyword And Ignore Error    Log    List is not in alphabetical order - ${listID}

4_1_6_6_DDL_LB_frozen
      [arguments]  ${listID}
      #Element Should Not Be Visible      xpath=//select[@id="${listID}"]
      ${Status}   SeleniumLibrary.Element Should Be Disabled    xpath=//select[@id="${listID}"]
      Run Keyword If  ${Status}== None     Log to Console    List is frozen - ${listID}
      
#list not frozen
#[arguments]  ${listID}
#${Status}   SeleniumLibrary.Element Should Be Enabled      xpath=//select[@id="${listID}"]
#Run Keyword If  ${Status}== None     Log to Console    List is not frozen - ${listID}

4_1_6_7_DL_LB_view_size
     [arguments]  ${listID}
     ${Status}    Get Element Attribute   xpath=//select[@id="${listID}"]    attribute=overflow-y
     log to console    ${Status}  
     Run Keyword If  ${Status}== None     Log to Console    Vertical scroll bar is visible - ${listID}
     
#Scroll element Into View     xpath=//select[@id="${listID}"]    
     
4_1_6_8_DL_LB_content_wider_than_list_size
     [arguments]  ${listID}
     ${Status}    Get Element Attribute   xpath=//select[@id="${listID}"]    attribute=overflow-x
     log to console    ${Status}  
     Run Keyword If  ${Status}== None     Log to Console    Horizontal scroll bar is visible - ${listID}
     
4_1_6_9_DL_no_multi_selection
    [arguments]  ${listID}
    #${Status}   SeleniumLibrary.Select from list by index    ${listID}    0    1
    ${Status}   SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]    1    2
    SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]    0
    Run Keyword If  ${Status}== None     Log to Console    List does not allow multiple selection - ${listID}
    
4_1_6_10_DL_LB_allow_multiple_selection
    [arguments]  ${listID}
    ${Status}   SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]    1    2
    SeleniumLibrary.Select from list by index    xpath=//select[@id="${listID}"]    0
    Run Keyword If  ${Status}==True     Log to Console    List allows multiple selection - ${listID}
    
4_1_6_11_DL_LB_field_label
	[arguments]	${ID}   ${text}
	${pattern}=	Get text	xpath=//*[@id="${ID}"]
	should be equal as strings    ${text}   ${pattern}
	log to console    ${ID}..has label......  ${text}
	
#list select by index
#[arguments]   ${listID}   ${Index_string}
#SeleniumLibrary.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]  10s
#SeleniumLibrary.Click Element At Coordinates   xpath=//select[@id="${listID}"][@class="form-control"]  0    0
#${Status}    SeleniumLibrary.Select From List By Index     xpath=//select[@id="${listID}"][@class="form-control"]    ${Index_string}
#Run Keyword If  ${Status}==None   Log to Console    "Get List of items from....${listID}. Select item by Index....${Index_string}."

#list select by label
#[arguments]   ${listID}   ${list_label}
#SeleniumLibrary.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]  10s
#SeleniumLibrary.Click Element At Coordinates   xpath=//select[@id="${listID}"][@class="form-control"]  0    0
#${Status}   SeleniumLibrary.Select From List By Label     xpath=//select[@id="${listID}"][@class="form-control"]    ${list_label}
#Run Keyword If  ${Status}==None   Log to Console    "Get List of items from....${listID}. Select item by Label....${list_label}."

#list should not contain item
 #[arguments]   ${listID}   ${list_label}
 #SeleniumLibrary.Wait Until Element Is Visible  xpath=//*[@class="btn btn-primary btn-round"]  10s
 #SeleniumLibrary.Click Element At Coordinates   xpath=//select[@id="${listID}"][@class="form-control"]  0    0
 #@{List_items}=  SeleniumLibrary.Get List Items   xpath=//select[@id="${listID}"][@class="form-control"]  
 #${Status}   Should Not Contain  xpath=//select[@id="${listID}"][@class="form-control"]  ${list_label}
 #Run Keyword If  ${Status}== None     Log to Console    "Get List of items from....${listID}. List does not contain item....${list_label}. As Expected."   
     

