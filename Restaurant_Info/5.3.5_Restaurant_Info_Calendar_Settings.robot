***Settings***
Default Tags      calendar
Library           SeleniumLibrary
Library           DateTime
Resource          ../Resource/genericfunctions.robot
Suite Teardown     Close All Browsers

*** Variables ***
${holiday}      Holiday

*** Test Cases ***  

5.3.5.1_restaurant_info_calendar_cancel
    login pkg1
    #sleep  2s
    #${present_insufficientdata}  Run Keyword And Return Status    Element Should Be Visible    xpath=//*[@id="yesPopUpCancelChanges1"]    
    #Run Keyword If       ${present_insufficientdata}    click element     xpath=//*[@id="yesPopUpCancelChanges1"]         
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]    30s
    log to console    login successful
    log to console    clicking Restaurant Info
    click Element     xpath=//*[@href="/user/restaurant-info"]
    wait until page contains element    xpath=//*[@href="/user/restaurant-info"]    10s
    #wait until page contains element       xpath=//*[@href="/user/restaurant-info/calendar-settings"]  
    Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    #wait until page contains element   xpath=//*[@id="goBack"] 
    Press Keys    xpath=//*[@id="holiday1"]  Clear
    ${date1}   Get Current Date   result_format=%m/%d/%Y    increment=6day  
    press keys     xpath=//*[@id="holiday1"]   ${date1}
    Press Keys    xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE
    Wait Until Element Is Visible    xpath=//*[@id="holidayText1"]
    Input Text    xpath=//*[@id="holidayText1"]      holidaycancel
    #wait until page contains element   xpath=//*[@id="goBack"] 
    #click element   xpath=//*[@id="goBack"]
    click element   xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    wait until page contains element   xpath=//*[@id="noPopUpCancelChanges1"]
    click element   xpath=//*[@id="noPopUpCancelChanges1"]
    wait until page contains element   xpath=//*[@href="/user/restaurant-info/create-promocodes"]
    click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    wait until page contains element       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    ${text}    Get Text     xpath=//*[@id="holidayText1"]
    should not be equal as strings    ${text}       holidaycancel
    close browser

5.3.5.2_restaurant_info_calendar_save
    login pkg1 
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    Press Keys    xpath=//*[@id="holiday1"]  Clear
    ${date1}   Get Current Date   result_format=%m/%d/%Y    increment=6day  
    press keys     xpath=//*[@id="holiday1"]   ${date1}
    ${date1}    Get Text     xpath=//*[@id="holiday1"] 
    wait until element is visible  xpath=//*[@id="holidayText1"]
    Press Keys  xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="holidayText1"]      holiday
    Press Keys    xpath=//*[@id="holiday2"]  Clear
    ${date2}  Get Current Date    result_format=%m/%d/%Y    increment=4day
    press keys     xpath=//*[@id="holiday2"]    ${date2}    
    ${date2}    Get Text     xpath=//*[@id="holiday2"] 
    wait until element is visible  xpath=//*[@id="holidayText2"]
    Press Keys  xpath=//*[@id="holidayText2"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="holidayText2"]       ${holiday}
      
    Scroll Element Into View      xpath=//*[@id="holiday6"]
    Wait Until Element Is Visible    xpath=//*[@id="holiday6"]
    Press Keys    xpath=//*[@id="holiday3"]  Clear
    ${date3}    Get Current Date   result_format=%m/%d/%Y    increment=3day
    press keys     xpath=//*[@id="holiday3"]   ${date3} 
    ${date3}    Get Text     xpath=//*[@id="holiday3"]
    wait until element is visible  xpath=//*[@id="holidayText3"]
    Press Keys  xpath=//*[@id="holidayText3"]  CTRL+a  BACKSPACE 
    Input Text    xpath=//*[@id="holidayText3"]       ${holiday} 
    Press Keys    xpath=//*[@id="holiday4"]  Clear
    ${date4}   Get Current Date    result_format=%m/%d/%Y    increment=2day
    press keys     xpath=//*[@id="holiday4"]   ${date4}  
    Scroll Element Into View      xpath=//*[@id="holiday8"]
    Wait Until Element Is Visible    xpath=//*[@id="holiday8"] 
    ${date4}    Get Text     xpath=//*[@id="holiday4"] 
    wait until element is visible  xpath=//*[@id="holidayText4"]
    Press Keys  xpath=//*[@id="holidayText4"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="holidayText4"]       ${holiday} 
    Press Keys    xpath=//*[@id="holiday5"]  Clear
    ${date5}   Get Current Date    result_format=%m/%d/%Y    increment=1day
    press keys     xpath=//*[@id="holiday5"]   ${date5} 
    ${date5}    Get Text     xpath=//*[@id="holiday5"] 
    wait until element is visible  xpath=//*[@id="holidayText5"]
    Press Keys  xpath=//*[@id="holidayText5"]  CTRL+a  BACKSPACE  
    Input Text    xpath=//*[@id="holidayText5"]       ${holiday}
    Press Keys    xpath=//*[@id="holiday6"]  Clear
    ${date6}  Get Current Date    result_format=%m/%d/%Y    increment=+0day 
    press keys     xpath=//*[@id="holiday6"]   ${date6}   
    ${date6}    Get Text     xpath=//*[@id="holiday6"]
    wait until element is visible  xpath=//*[@id="holidayText6"] 
    Press Keys  xpath=//*[@id="holidayText6"]  CTRL+a  BACKSPACE 
    Input Text    xpath=//*[@id="holidayText6"]       ${holiday}
    Scroll Element Into View      xpath=//*[@id="holiday10"]
    Wait Until Element Is Visible    xpath=//*[@id="holiday10"]
      
    Scroll Element Into View      xpath=//*[@id="clickToContinue"]
    Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]    
    Click Element    xpath=//*[@id="clickToContinue"]
    sleep  3s

    Click Element   xpath=//*[@href="/user/restaurant-info"]
    Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    Element Text Should Be     xpath=//*[@id="holiday1"]   ${date1}  
    Element Text Should Be     xpath=//*[@id="holiday2"]   ${date2} 
    Element Text Should Be     xpath=//*[@id="holiday3"]   ${date3} 
    Element Text Should Be     xpath=//*[@id="holiday4"]   ${date4} 
    Element Text Should Be     xpath=//*[@id="holiday5"]   ${date5} 
    Element Text Should Be     xpath=//*[@id="holiday6"]   ${date6} 
    sleep  10s
    close browser
    
5.3.5.3_restaurant_info_calendar_edit
    login pkg1
    log to console    login successful
    log to console    clicking Restaurant Info
    Click Element     xpath=//*[@href="/user/restaurant-info"]
    Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    ${date1}   Get Current Date   result_format=%m/%d/%Y    increment=6day  
    press keys     xpath=//*[@id="holiday1"]   ${date1}
    ${date1}    Get Text     xpath=//*[@id="holiday1"] 
    Press Keys  xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE   
    Input Text   xpath=//*[@id="holidayText1"]      holidayedit 
    ${Text1}  Get Text     xpath=//*[@id="holidayText1"]
    
    ${date2}  Get Current Date    result_format=%m/%d/%Y    increment=4 day
    press keys    xpath=//*[@id="holiday2"]    ${date2}    
    ${date2}    Get Text     xpath=//*[@id="holiday2"]  
    Press Keys  xpath=//*[@id="holidayText2"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="holidayText2"]      holidayedit 
     ${Text2}  Get Text     xpath=//*[@id="holidayText2"]
     
    ${date3}  Get Current Date    result_format=%m/%d/%Y    increment=3 day
    press keys     xpath=//*[@id="holiday3"]    ${date3}    
    ${date3}    Get Text     xpath=//*[@id="holiday3"]
    Press Keys  xpath=//*[@id="holidayText3"]  CTRL+a  BACKSPACE
    Input Text    xpath=//*[@id="holidayText3"]      holidayedit 
    ${Text3}  Get Text     xpath=//*[@id="holidayText3"]
     
    ${date4}  Get Current Date    result_format=%m/%d/%Y    increment=2 day
    press keys     xpath=//*[@id="holiday4"]    ${date4}    
    ${date4}    Get Text     xpath=//*[@id="holiday4"]  
    Press Keys  xpath=//*[@id="holidayText4"]  CTRL+a  BACKSPACE 
    Input Text    xpath=//*[@id="holidayText4"]      holidayedit
    ${Text4}  Get Text     xpath=//*[@id="holidayText4"] 
    
    Scroll Element Into View      xpath=//*[@id="holiday13"]
    Wait Until Element Is Visible    xpath=//*[@id="holiday13"]     
    Scroll Element Into View      xpath=//*[@id="clickToContinue"]
    Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]    
    Click Element    xpath=//*[@id="clickToContinue"]
    sleep  3s
    Click Element   xpath=//*[@href="/user/restaurant-info"]
    Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    Element Text Should Be     xpath=//*[@id="holidayText1"]      ${Text1} 
    Element Text Should Be     xpath=//*[@id="holidayText2"]      ${Text2}
    close browser

5.3.5.4_restaurant_info_calendar_missing_mandatory_field
  login pkg1
  Click Element   xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  press keys    xpath://*[@id="holiday1"]   Clear
  ${date1}   Get Current Date   result_format=%m/%d/%Y    increment=5day  
  press keys     xpath=//*[@id="holiday1"]   ${date1}
  Press Keys  xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE
  #Input Text    xpath=//*[@id="holidayText1"]      holiday
  Scroll Element Into View      xpath=//*[@id="clickToContinue"]
  Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
  Click Element    xpath=//*[@id="clickToContinue"]
   ${res1visible}    page should contain   Field cannot be Empty
  Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
   
   # sleep  10s
   # Click Element   xpath=//*[@href="/user/restaurant-info"]
   # wait until element is visible   xpath=//*[@id="noPopUpCancelChanges1"]
   # click element   xpath=//*[@id="noPopUpCancelChanges1"]
   # wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
   # Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
   # wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  # Press Keys  xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE
  
  # Input Text     xpath=//*[@id="holidayText1"]    holiday
  # press keys    xpath://*[@id="holiday1"]  Clear
  # Scroll Element Into View      xpath=//*[@id="clickToContinue"]
  # Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
  # Click Element    xpath=//*[@id="clickToContinue"]
   # ${res1visible}    page should contain   Field cannot be Empty
  # Run Keyword If    ${res1visible}==True    log to console    showing error: Field cannot be Empty
  close browser 
    
5.3.5.5_restaurant_info_calendar_sorting
 
  login pkg1
  Click Element   xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  press keys    xpath://*[@id="holiday1"]  Clear
  ${date1}   Get Current Date   result_format=%m/%d/%Y    increment=5day  
  press keys     xpath=//*[@id="holiday1"]   ${date1} 
  ${date1}    Get Text     xpath=//*[@id="holiday1"] 
  Press Keys  xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE
  Input Text   xpath=//*[@id="holidayText1"]    holiday1
  press keys    xpath://*[@id="holiday2"]  Clear
  ${date2}   Get Current Date   result_format=%m/%d/%Y    increment=2day  
  press keys     xpath=//*[@id="holiday2"]   ${date2}
  ${date2}    Get Text     xpath=//*[@id="holiday2"] 
  Press Keys  xpath=//*[@id="holidayText2"]  CTRL+a  BACKSPACE
  Input Text     xpath=//*[@id="holidayText2"]     holiday2
  press keys    xpath://*[@id="holiday3"]  Clear
  ${date3}   Get Current Date   result_format=%m/%d/%Y    increment=3day  
  press keys     xpath=//*[@id="holiday3"]   ${date3}
  ${date3}    Get Text     xpath=//*[@id="holiday3"] 
  Press Keys  xpath=//*[@id="holidayText3"]  CTRL+a  BACKSPACE
  Input Text     xpath=//*[@id="holidayText3"]     holiday3
  
  Scroll Element Into View      xpath=//*[@id="clickToContinue"]
  Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
  Click Element    xpath=//*[@id="clickToContinue"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  Element Text Should Be     xpath=//*[@id="holiday1"]   ${date2}  
  Element Text Should Be     xpath=//*[@id="holiday2"]   ${date3} 
  Element Text Should Be     xpath=//*[@id="holiday3"]   ${date1} 
  sleep  10s
  close browser
  
5.3.5.6_restaurant_info_calendar_delete
   
  login pkg1
  Click Element   xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  press keys    xpath://*[@id="holiday1"]  Clear
  ${date1}   Get Current Date   result_format=%m/%d/%Y    increment=5day  
  press keys     xpath=//*[@id="holiday1"]   ${date1} 
   ${date1}    Get Text     xpath=//*[@id="holiday1"] 
  Press Keys  xpath=//*[@id="holidayText1"]  CTRL+a  BACKSPACE
  Input Text   xpath=//*[@id="holidayText1"]    holiday1
  Scroll Element Into View      xpath=//*[@id="clickToContinue"]
  Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
  Click Element    xpath=//*[@id="clickToContinue"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  # ${date1}  Text Should not equal to     xpath=//*[@id="holiday1"] 
  #press keys    xpath://*[@id="holiday1"]  Clear
  Element Text Should Be      xpath=//*[@id="holiday1"]   ${date1}
  sleep  5s
  close browser
  
5.3.5.7_restaurant_info_calendar_older_entry
  login pkg1  
  Click Element   xpath=//*[@href="/user/restaurant-info"]
  Click Element   xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  wait until element is visible       xpath=//*[@href="/user/restaurant-info/calendar-settings"]
  Click Element     xpath=//*[@id="holiday6"] 
  Press Keys    xpath=//*[@id="holiday6"]  Clear
  ${date1}   Get Current Date   result_format=%m/%d/%Y  increment=-6day  
  press keys     xpath=//*[@id="holiday6"]   ${date1}
  Press Keys  xpath=//*[@id="holidayText6"]  CTRL+a  BACKSPACE
  Input Text    xpath=//*[@id="holidayText6"]      holiday 
  Scroll Element Into View      xpath=//*[@id="clickToContinue"]
  Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
  Click Element    xpath=//*[@id="clickToContinue"]
   ${res1visible}    page should contain   Date should be greater than the current date
  Run Keyword If    ${res1visible}==True    log to console    showing error:Date should be greater than the current date
  sleep  10s
  

  close browser







