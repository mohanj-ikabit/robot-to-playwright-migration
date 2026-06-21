*** Settings ***
Default Tags      menucategory
Library           SeleniumLibrary
Library            FakerLibrary
Library            AutoItLibrary
Library            OperatingSystem    
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot

*** Test Cases ***
5.4.2.7.menu_settings_menu_category_missing_availability_tuesday_starttime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element    xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    not entering tuesday start = 07:07AM
    #Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
  #  ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
 #   log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_tuesday_endtime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element    xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element    xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    not entering tuesday end = 11:11AM
    #Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
 #   ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
 #   log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_tuesday_starttime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element    xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element    xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    not entering tuesday start time2 = 12:12PM
    #Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_tuesday_endtime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    not entering tuesday end time2 = 05:05PM
    #Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_wednesday_starttime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    not entering wednesday start = 07:07AM
    #Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
 #   ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
 #   log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_wednesday_endtime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    not entering wednesday end = 11:11AM
    #Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_wednesday_starttime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    not entering wednesday start time2 = 12:12PM
    #Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
 #   ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
 #   log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_wednesday_endtime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    not entering wednesday end time2 = 05:05PM
    #Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_thursday_starttime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    not entering thursday start = 07:07AM
    #Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_thursday_endtime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    not entering thursday end = 11:11AM
    #Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_thursday_starttime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    not entering thursday start time2 = 12:12PM
    #Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_thursday_endtime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    not entering thursday end time2 = 05:05PM
    #Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/header/div/div[4]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_friday_starttime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    not entering friday start = 07:07AM
    #Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_friday_endtime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element   xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    not entering friday end = 11:11AM
    #Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_friday_starttime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    not entering friday start time2 = 12:12PM
    #Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_friday_endtime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    not entering friday end time2 = 05:05PM
    #Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_saturday_starttime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    not entering saturday start = 07:07AM
    #Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
 #   ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_saturday_endtime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    not entering saturday end = 11:11AM
    #Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
 #   ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
 #   log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_saturday_starttime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    not entering saturday start time2 = 12:12PM
    #Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_saturday_endtime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    not entering saturday end time2 = 05:05PM
    #Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#   log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_sunday_starttime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    notentering sunday start = 07:07AM
    #Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_sunday_endtime1
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="Breakfast"] 
    log to console    clicking add
    click element     xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    not entering sunday end = 11:11AM
    #Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_sunday_starttime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="breakfast"]
    log to console    clicking add
    click element    xpath=//*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    not entering sunday start time2 = 12:12PM
    #Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    
5.4.2.7.menu_settings_menu_category_missing_availability_sunday_endtime2
    [Tags]   tbd
    reload page
    log to console    selecting breakfast
    click element    xpath=//*[@id="breakfast"]
    log to console    clicking add
    click element    xpath=*[@id="Add"]
    log to console     clicking pick availability
    click element     xpath=//*[contains(text(),"Pick availability")]
    #for monday start time1
    log to console   entering monday start = 07:07AM
    Input text    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end = 11:11AM
    Input text    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Input text    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Input text    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start = 07:07AM
    Input text    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end = 11:11AM
    Input text    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Input text    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Input text    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start = 07:07AM
    Input text    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end = 11:11AM
    Input text    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Input text    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Input text    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start = 07:07AM
    Input text    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end = 11:11AM
    Input text    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Input text    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Input text    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start = 07:07AM
    Input text    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end = 11:11AM
    Input text    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Input text    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Input text    xpath=//*[@id="friday-end-time2"]    0505p
    log to console    clicking side button
    click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start = 07:07AM
    Input text    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end = 11:11AM
    Input text    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Input text    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Input text    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start = 07:07AM
    Input text    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end = 11:11AM
    Input text    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Input text    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    not entering sunday end time2 = 05:05PM
    #Input text    xpath=//*[@id="sunday-end-time2"]    0505p
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
#    ${error}    get text    xpath=/html/body/div[3]/div[3]/div/div[2]/div/div/p[2]/div/p[1]
#    log to console    ${error}
    close browser
