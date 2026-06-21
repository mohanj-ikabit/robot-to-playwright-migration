*** Settings ***
Default tags      insufficientdata
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
#Resource          ../Resource/image_comparison.robot
Suite Teardown        close all browsers

*** Variables ***
#Sales Category
${Category_PickUp}      pickUp
${Category_DineIn}      dineIn
${Category_Combined}    combined

#Sales Timeline
${Yesterday}            yesterday
${ThisWeek}             thisWeek
${LastWeek}             lastWeek
${ThisMonth}            thisMonth
${LastMonth-1}          lastMonth- 1
${LastMonth-2}          lastMonth- 2
${LastMonth-3}          lastMonth- 3
${LastMonth-4}          lastMonth- 4
${LastMonth-5}          lastMonth- 5
${LastMonth-6}          lastMonth- 6
${LastMonth-7}          lastMonth- 7
${LastMonth-8}          lastMonth- 8
${ThisYear}             thisYear
${LastYear}             lastYear

*** Test Cases ***
5.9.5.2_dashboard_salescategory_pickup_insufficientdata_thisweek
    login pkg1
    log to console    login is successful.
    BuiltIn.Sleep    3s
    Page Should Contain    Top Sellers (This Month)
    
    Scroll Element Into View    xpath=//*[@id="salesCategory"]
    #xpath=//*[@id="FooterURL"]
    #For Sales Category, select Dine In; For Sales Timeline, select This Week; popup for Insufficient data should be displayed
    Click Element    xpath=//*[@id="salesCategory"]
    Click Element    xpath=//*[contains(@data-value,'pickUp')]
    BuiltIn.Sleep    2s
    Click Element    xpath=//*[@id="salesTimeline"]
    Click Element    xpath=//*[contains(@data-value,'thisWeek')]
    BuiltIn.Sleep    2s
    #Page Should Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
    #Page Should Contain    Please try again later!
    #Page Should Contain Element    yesPopUpCancelChanges1
    #Page Should Contain Element    closePopUpCancelChanges1
    
    #Click Okay, popup should get closed
    #Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    #Page Should Not Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
    #Page Should Not Contain    Please try again later!
    
    #Select a different drop down value for Sales Timeline, e.g. This Week, then again select Last week to display the Insufficient Data Popup  
    BuiltIn.Sleep    2s
    Click Element    xpath=//*[@id="salesTimeline"]
    Click Element    xpath=//*[contains(@data-value,'lastWeek')]
    #Page Should Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
   
    BuiltIn.Sleep    1s
    Click Element    xpath=//*[@id="salesTimeline"]
    Click Element    xpath=//*[contains(@data-value,'thisWeek')]
    BuiltIn.Sleep    2s
    #Page Should Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
    #Page Should Contain    Please try again later!
    #Page Should Contain Element    yesPopUpCancelChanges1
    #Page Should Contain Element    closePopUpCancelChanges1

    #Click the X icon, popup should get closed
    #Click Element    xpath=//*[@id="closePopUpCancelChanges1"]
    #Page Should Not Contain    Insufficient Data
    Page Should Contain    We do not have sufficient info at this time to provide this graph for you.
    #Page Should Not Contain    Please try again later!
    
5.9.5.1_dashboard_salescategory_pickup_insufficientdata_yesterday
    dashboard_insufficient_data    ${Category_PickUp}    ${Yesterday}
5.9.5.3_dashboard_salescategory_pickup_insufficientdata_lastweek
    dashboard_insufficient_data    ${Category_PickUp}    ${LastWeek}
5.9.5.4_dashboard_salescategory_pickup_insufficientdata_thismonth
    dashboard_insufficient_data    ${Category_PickUp}    ${ThisMonth}    
5.9.5.5_dashboard_salescategory_pickup_insufficientdata_lastmonth_1
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-1}
5.9.5.6_dashboard_salescategory_pickup_insufficientdata_lastmonth_2
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-2}
5.9.5.7_dashboard_salescategory_pickup_insufficientdata_lastmonth_3
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-3}
5.9.5.8_dashboard_salescategory_pickup_insufficientdata_lastmonth_4
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-4}
5.9.5.9_dashboard_salescategory_pickup_insufficientdata_lastmonth_5
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-5}
5.9.5.10_dashboard_salescategory_pickup_insufficientdata_lastmonth_6
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-6}
5.9.5.11_dashboard_salescategory_pickup_insufficientdata_lastmonth_7
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-7}
5.9.5.12_dashboard_salescategory_pickup_insufficientdata_lastmonth_8
    dashboard_insufficient_data    ${Category_PickUp}    ${LastMonth-8}
5.9.5.13_dashboard_salescategory_pickup_insufficientdata_thisyear
    dashboard_insufficient_data    ${Category_PickUp}    ${ThisYear}
5.9.5.14_dashboard_salescategory_pickup_insufficientdata_lastyear
    dashboard_insufficient_data    ${Category_PickUp}    ${LastYear}
    
#5.9.6.1_dashboard_salescategory_dinein_insufficientdata_yesterday
    #dashboard_insufficient_data    ${Category_DineIn}    ${Yesterday}
#5.9.6.2_dashboard_salescategory_dinein_insufficientdata_thisweek
    #dashboard_insufficient_data    ${Category_DineIn}    ${ThisWeek}
#5.9.6.3_dashboard_salescategory_dinein_insufficientdata_lastweek
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastWeek}
#5.9.6.4_dashboard_salescategory_dinein_insufficientdata_thismonth
    #dashboard_insufficient_data    ${Category_DineIn}    ${ThisMonth}    
#5.9.6.5_dashboard_salescategory_dinein_insufficientdata_lastmonth
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-1}
#5.9.6.6_dashboard_salescategory_dinein_insufficientdata_lastmonth_2
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-2}
#5.9.6.7_dashboard_salescategory_dinein_insufficientdata_lastmonth_3
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-3}
#5.9.6.8_dashboard_salescategory_dinein_insufficientdata_lastmonth_4
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-4}
#5.9.6.9_dashboard_salescategory_dinein_insufficientdata_lastmonth_5
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-5}
#5.9.6.10_dashboard_salescategory_dinein_insufficientdata_lastmonth_6
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-6}
#5.9.6.11_dashboard_salescategory_dinein_insufficientdata_lastmonth_7
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-7}
#5.9.6.12_dashboard_salescategory_dinein_insufficientdata_lastmonth_8
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastMonth-8}
#5.9.6.13_dashboard_salescategory_dinein_insufficientdata_lastyear
    #dashboard_insufficient_data    ${Category_DineIn}    ${ThisYear}
#5.9.6.14_dashboard_salescategory_dinein_insufficientdata_lastyear
    #dashboard_insufficient_data    ${Category_DineIn}    ${LastYear}
    
#5.9.7.1_dashboard_salescategory_combined_insufficientdata_yesterday
    #dashboard_insufficient_data    ${Category_Combined}    ${Yesterday}
#5.9.7.2_dashboard_salescategory_combined_insufficientdata_thisweek
    #dashboard_insufficient_data    ${Category_Combined}    ${ThisWeek}
#5.9.7.3_dashboard_salescategory_combined_insufficientdata_lastweek
    #dashboard_insufficient_data    ${Category_Combined}    ${LastWeek}
#5.9.7.4_dashboard_salescategory_combined_insufficientdata_thismonth
    #dashboard_insufficient_data    ${Category_Combined}    ${ThisMonth}    
#5.9.7.5_dashboard_salescategory_combined_insufficientdata_lastmonth_1
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-1}
#5.9.7.6_dashboard_salescategory_combined_insufficientdata_lastmonth_2
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-2}
#5.9.7.7_dashboard_salescategory_combined_insufficientdata_lastmonth_3
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-3}
#5.9.7.8_dashboard_salescategory_combined_insufficientdata_lastmonth_4
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-4}
#5.9.7.9_dashboard_salescategory_combined_insufficientdata_lastmonth_5
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-5}
#5.9.7.10_dashboard_salescategory_combined_insufficientdata_lastmonth_6
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-6}
#5.9.7.11_dashboard_salescategory_combined_insufficientdata_lastmonth_7
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-7}
#5.9.7.12_dashboard_salescategory_combined_insufficientdata_lastmonth_8
    #dashboard_insufficient_data    ${Category_Combined}    ${LastMonth-8}
#5.9.7.13_dashboard_salescategory_combined_insufficientdata_lastyear
    #dashboard_insufficient_data    ${Category_Combined}    ${ThisYear}
#5.9.7.14_dashboard_salescategory_combined_insufficientdata_lastyear
    #dashboard_insufficient_data    ${Category_Combined}    ${LastYear}

#closebrowser 
    #close browser
    
    
