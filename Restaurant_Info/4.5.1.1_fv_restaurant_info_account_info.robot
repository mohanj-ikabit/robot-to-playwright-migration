*** Settings ***
Default Tags        fvrestacc
Library            SeleniumLibrary
Library            String
Library            Collections
Library            AutoItLibrary
Resource          ../Resource/radio button.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Email ID.robot
Resource          ../Resource/text_area.robot
Suite Teardown       close all browsers

*** Test Cases ***
App_Login
    login pkg1
    
GoTo_RestaurantInfo
    Click Element    xpath=//*[@href="/user/restaurant-info"]
   
Restaurant_Hours_Monday_Start1
    [Documentation]    Validate the functionality of the Monday Start Time field.
    
    # Ensure the element is visible and interactable
    Wait Until Element Is Visible    xpath=//*[@id="monday-start-time1"]
    Click Element    xpath=//*[@id="monday-start-time1"]
    
    # Input a valid time value and validate it
    Press Keys    xpath=//*[@id="monday-start-time1"]    0808a
    ${input_value}=    Get Text    xpath=//*[@id="monday-start-time1"]
    Should Be Equal As Strings    ${input_value}    0808a
    Log To Console    Monday Start Time accepts: 0808a
    
    # Validate the label of the field
    4_1_1_17_text_field_label    monday-start-time1-label    Start time
    
Monday_End1
    Press Keys    xpath=//*[@id="monday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="monday-end-time1"]
    log to console    monday-end-time1 accepts..........1212p
    4_1_1_17_text_field_label    monday-end-time1-label    End time
	
Monday_Start2
    Press Keys    xpath=//*[@id="monday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="monday-start-time2"]
    log to console    monday-start-time2 accepts..........0101p
    4_1_1_17_text_field_label    monday-start-time2-label    Start time
	
Monday_End2
    Press Keys    xpath=//*[@id="monday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="monday-end-time2"]
    log to console    monday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    monday-end-time2-label    End time
	
Checkbox_Monday_Closed
    4_1_8_2_checkbox_default_is_selected    check-monday
    Assign Id To Element    xpath=//*[@id="monday"]/div/p/div/div/div[7]/label/span[2]    mon
    4_1_8_7_checkbox_label    mon    Closed
    
Restaurant_hours_Tuesday_Start1
    click element    xpath=//*[@id="simple-tab-1"]
    Press Keys    xpath=//*[@id="tuesday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="tuesday-start-time1"]
    log to console    tuesday-start-time1 accepts..........${a}
    4_1_1_17_text_field_label    tuesday-start-time1-label    Start time
    
Tuesday_End1
    Press Keys    xpath=//*[@id="tuesday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="tuesday-end-time1"]
    log to console    tuesday-end-time1 accepts..........${a}
    4_1_1_17_text_field_label    tuesday-end-time1-label    End time
    
Tuesday_Start2
    Press Keys    xpath=//*[@id="tuesday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="tuesday-start-time2"]
    log to console    tuesday-start-time2 accepts..........${a}
    4_1_1_17_text_field_label    tuesday-start-time2-label    Start time
    
Tuesday_End2
    Press Keys    xpath=//*[@id="tuesday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="tuesday-end-time2"]
    log to console    tuesday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    tuesday-end-time2-label    End time
	
Checkbox_Tuesday_Closed
    4_1_8_2_checkbox_default_is_selected    check-tuesday
    Assign Id To Element    xpath=//*[@id="tuesday"]/div/p/div/div/div[7]/label/span[2]    tue
    4_1_8_7_checkbox_label    tue    Closed
    
Restaurant_hours_Wednesday_Start1
    click element    xpath=//*[@id="simple-tab-2"]
    #element should be enabled	xpath=//*[@id="wednesday-start-time1"]
    Press Keys    xpath=//*[@id="wednesday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="wednesday-start-time1"]
    log to console    wednesday-start-time1 accepts..........${a}
    4_1_1_17_text_field_label    wednesday-start-time1-label    Start time
	
Wednesday_End1
    #element should be enabled	xpath=//*[@id="wednesday-end-time1"]
    Press Keys    xpath=//*[@id="wednesday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="wednesday-end-time1"]
    log to console    wednesday-end-time1 accepts..........${a}
    4_1_1_17_text_field_label    wednesday-end-time1-label    End time
      
Wednesday_Start2
    #element should be enabled	xpath=//*[@id="wednesday-start-time2"]
    Press Keys    xpath=//*[@id="wednesday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="wednesday-start-time2"]
    log to console    wednesday-start-time2 accepts..........${a}
    4_1_1_17_text_field_label    wednesday-start-time2-label    Start time
	
Wednesday_End2
    #element should be enabled	xpath=//*[@id="wednesday-end-time2"]
    Press Keys    xpath=//*[@id="wednesday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="wednesday-end-time2"]
    log to console   wednesday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    wednesday-end-time2-label    End time
	
Checkbox_Wednesday_Closed
    #element should be enabled	xpath=//*[@id="check-wednesday"]
    4_1_8_2_checkbox_default_is_selected    check-wednesday
    Assign Id To Element    xpath=//*[@id="wednesday"]/div/p/div/div/div[7]/label/span[2]    wed
    4_1_8_7_checkbox_label    wed    Closed
    
Restaurant_hours_Thursday_Start1
    click element    xpath=//*[@id="simple-tab-3"]
    Press Keys    xpath=//*[@id="thursday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="thursday-start-time1"]
    log to console    thursday-start-time1 accepts..........${a}
    4_1_1_17_text_field_label    thursday-start-time1-label    Start time
	
Thursday_End1
    Press Keys    xpath=//*[@id="thursday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="thursday-end-time1"]
    log to console    thursday-end-time1 accepts..........${a}
    4_1_1_17_text_field_label    thursday-end-time1-label    End time
      
Thursday_Start2
    Press Keys    xpath=//*[@id="thursday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="thursday-start-time2"]
    log to console    thursday-start-time2 accepts..........${a}
    4_1_1_17_text_field_label    thursday-start-time2-label    Start time
	
Thursday_End2
    Press Keys    xpath=//*[@id="thursday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="thursday-end-time2"]
    log to console   thursday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    thursday-end-time2-label    End time
    
Checkbox_Thursday_Closed
    4_1_8_2_checkbox_default_is_selected   check-thursday
    Assign Id To Element    xpath=//*[@id="thursday"]/div/p/div/div/div[7]/label/span[2]    thur
    4_1_8_7_checkbox_label    thur    Closed
    
Restaurant_hours_Friday_Start1
    click element    xpath=//*[@id="simple-tab-4"]
    Press Keys    xpath=//*[@id="friday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="friday-start-time1"]
    log to console    friday-start-time1 accepts..........${a}
    4_1_1_17_text_field_label    friday-start-time1-label    Start time
	
Friday_End1
    Press Keys    xpath=//*[@id="friday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="friday-end-time1"]
    log to console    friday-end-time1 accepts..........${a}
    4_1_1_17_text_field_label    friday-end-time1-label    End time
      
Friday_Start2
    Press Keys    xpath=//*[@id="friday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="friday-start-time2"]
    log to console    friday-start-time2 accepts..........${a}
    4_1_1_17_text_field_label    friday-start-time2-label    Start time
	
Friday_End2
    Press Keys    xpath=//*[@id="friday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="friday-end-time2"]
    log to console   friday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    friday-end-time2-label    End time
	
Checkbox_Friday_Closed
    4_1_8_2_checkbox_default_is_selected    check-friday
    Assign Id To Element    xpath=//*[@id="friday"]/div/p/div/div/div[7]/label/span[2]    fri
    4_1_8_7_checkbox_label    fri    Closed
    
Restaurant_hours_Saturday_Start1
    #Assign Id To Element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[17]/div/header/div/div[4]    sideclick
    #click element    xpath=//*[@id="sideclick"]
    click element    xpath=//*[@id="simple-tab-5"]
    Press Keys    xpath=//*[@id="saturday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="saturday-start-time1"]
    log to console    saturday-start-time1 accepts..........${a}
    4_1_1_17_text_field_label    saturday-start-time1-label    Start time
    
Saturday_End1
    Press Keys    xpath=//*[@id="saturday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="saturday-end-time1"]
    log to console    saturday-end-time1 accepts..........${a}
    4_1_1_17_text_field_label    saturday-end-time1-label    End time
      
Saturday_Start2
    Press Keys    xpath=//*[@id="saturday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="saturday-start-time2"]
    log to console    saturday-start-time2 accepts..........${a}
    4_1_1_17_text_field_label    saturday-start-time2-label    Start time
    
Saturday_End2
    Press Keys    xpath=//*[@id="saturday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="saturday-end-time2"]
    log to console   saturday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    saturday-end-time2-label    End time
    
Checkbox_Saturday_Closed
    4_1_8_2_checkbox_default_is_selected    check-saturday
    Assign Id To Element    xpath=//*[@id="saturday"]/div/p/div/div/div[7]/label/span[2]    sat
    4_1_8_7_checkbox_label    sat    Closed
    
Restaurant_hours_Sunday_Start1
    click element    xpath=//*[@id="simple-tab-6"]
    Press Keys    xpath=//*[@id="sunday-start-time1"]    0808a
    ${a}    get text    xpath=//*[@id="sunday-start-time1"]
    log to console    sunday-start-time1 accepts..........${a}
    4_1_1_17_text_field_label    sunday-start-time1-label    Start time
    
Sunday_End1
    Press Keys    xpath=//*[@id="sunday-end-time1"]    1212p
    ${a}    get text    xpath=//*[@id="sunday-end-time1"]
    log to console    sunday-end-time1 accepts..........${a}
    4_1_1_17_text_field_label    sunday-end-time1-label    End time
  
Sunday_Start2
    Press Keys    xpath=//*[@id="sunday-start-time2"]    0101p
    ${a}    get text    xpath=//*[@id="sunday-start-time2"]
    log to console    sunday-start-time2 accepts..........${a}
    4_1_1_17_text_field_label    sunday-start-time2-label    Start time
    
Sunday_End2
    Press Keys    xpath=//*[@id="sunday-end-time2"]    0505p
    ${a}    get text    xpath=//*[@id="sunday-end-time2"]
    log to console   sunday-end-time2 accepts..........${a}
    4_1_1_17_text_field_label    sunday-end-time2-label    End time
    
Checkbox_Sunday_Closed
    4_1_8_2_checkbox_default_is_selected    check-sunday
    Assign Id To Element    xpath=//*[@id="sunday"]/div/p/div/div/div[7]/label/span[2]    sun
    4_1_8_7_checkbox_label    sun    Closed
    
Restraurant_name
    4_1_1_2_text_splchar_allowed	text-restaurant-name
    4_1_1_4_text_numbers_allowed	text-restaurant-name
    4_1_1_6_text_minlength    text-restaurant-name     5
    4_1_1_7_text_maxlength    text-restaurant-name     100
    4_1_1_9_text_pastable	text-restaurant-name
    4_1_1_11_text_spacebefore    text-restaurant-name
    4_1_1_12_text_spaceafter    text-restaurant-name
    4_1_1_14_text_field_default_value    text-restaurant-name     ${EMPTY}
    4_1_1_15_text_field_default_state_enabled    text-restaurant-name
    Page Should Contain    Restaurant Name*
    
Cuisine_dropdown
      #4_1_6_1_DDL_LB_Default    //*[@id="selectCuisine"]    //*[@id="menu-selectCuisine"]/div[3]/ul
      #4_1_6_2_DDL_LB_value_list    //*[@id="selectCuisine"]    //*[@id="menu-selectCuisine"]/div[3]/ul
      #4_1_6_3_DDL_LB_select_value     //*[@id="selectCuisine"]    //*[@id="menu-selectCuisine"]/div[3]/ul/li[9]
      #4_1_6_7_DDL_LB_view_size    selectCuisine
    #4_1_6_9_DDL_no_multi_selection    //*[@id="selectCuisine"]    //*[@id="menu-selectCuisine"]/div[3]/ul/li[9]
    #4_1_6_9_DDL_no_multi_selection    selectCuisine
    Click Element     xpath=//*[@id="selectCuisine"]   
    
    #4_1_6_5_DDL_LB_order_top_bottom_default_values     //*[@id="selectCuisine"]    //*[@id="menu-selectCuisine"]  
    #reload page
  
Cuisine_Other
    #Click Element    xpath=//*[@id="selectCuisine"]
    #4_1_6_13_list select by label   selectCuisine    Other
    #4_1_1_2_text_splchar_allowed	textCuisine-Other    
    #4_1_6_3_DDL_LB_select_value     //*[@id="selectCuisine"]    //*[@id="menu-selectCuisine"]/div[3]/ul/li[9]
    #4_1_1_5_text_numbers_not_allowed	textCuisine-Other
    #4_1_1_7_text_maxlength	textCuisine-Other	100
    #4_1_1_9_text_pastable	textCuisine-Other
    #4_1_1_11_text_spacebefore       textCuisine-Other
    #4_1_1_12_text_spaceafter	textCuisine-Other
    #4_1_1_14_text_field_default_value	textCuisine-Other     ${EMPTY}
    #4_1_1_15_text_field_default_state_enabled    textCuisine-Other
    #4_1_1_17_text_field_label	text-cuisine-other-label    Other
    press keys      xpath=//*[@id="selectCuisine"]  Other 
    Page Should Contain    Other
    #4_1_1_20_text_field_attribute  text-cuisine-other  placeholder   Other
    
      
    
#Change_location
    #link rightName   changeloc    Change Location
    #link clickActive    changeloc
    
#Restaurant_dropdown 
      #reload page
      # #4_1_6_1_DDL_LB_Default    //*[@id="select-restaurant"]    //*[@id="menu-selectRestaurant"]/div[3]/ul
      # #4_1_6_2_DDL_LB_value_list    //*[@id="select-restaurant"]    //*[@id="menu-selectRestaurant"]/div[3]/ul
      # #4_1_6_3_DDL_LB_select_value     //*[@id="select-restaurant"]    //*[@id="menu-selectRestaurant"]/div[3]/ul/li[2]
      # #4_1_6_7_DDL_LB_view_size    select-restaurant
     #4_1_6_8_DDL_LB_content_wider_than_list_size    select-restaurant
     #4_1_6_9_DDL_no_multi_selection    xpath=//*[@id="select-restaurant"]
     #reload page

#Checkbox_test
    #4_1_8_1_checkbox_default_not_selected    check-weekends
    #Assign Id To Element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[4]/div[4]/div[3]/label/span[2]    checkwkndlabel
    #4_1_8_7_checkbox_label    checkwkndlabel    Only Weekends

 Radio_Test
     4_1_9_2_radio_button_default_selected   radioCurbsideDelivery   Yes
     Click Element    xpath=//input[@id='radioCurbsideDelivery' and @value='Yes']
     4_1_9_7_radio_label  radioCurbsideDelivery     Does The Restaurant Allow Curbside Delivery?*
    
#Phone_number
Phone_number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    textPhoneNumber
Phone_number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    textPhoneNumber
Phone_number_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    textPhoneNumber
Phone_number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    textPhoneNumber
    
Phone_number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    textPhoneNumber
Phone_number_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    textPhoneNumber
Phone_number_numeric_field pastable
    4_1_5_11_numeric_field_pastable    textPhoneNumber
Phone_number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    textPhoneNumber
Phone_number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore    textPhoneNumber
Phone_number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    textPhoneNumber
Phone_number_numeric_default_value
    #4_1_5_15_numeric_field_default_value    phone    ${EMPTY}
    4_1_5_15_numeric_field_default_value    textPhoneNumber     +0 13333444464500
Phone_number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    textPhoneNumber
Phone_number_numeric_not_null
    4_1_5_18_numeric_field_not_null    textPhoneNumber

Phone_number_numeric_attribute_placeholder
    4_1_1_20_text_field_attribute    textPhoneNumber    placeholder    Primary Phone Number
   # {# 4_1_5_1_numeric_zero_not_allowed     textPhoneNumber
    # 4_1_5_3_numeric_field_not_lt_zero    textPhoneNumber   
    # 4_1_5_4_numeric_field_no_alphabets   textPhoneNumber
    # 4_1_5_5_numeric_field_no_splchars    textPhoneNumber
    #A numberic data entered in the field reads back in phone number format, hence fails comparison.
    # 4_1_5_6_numeric_field_minlength    textPhoneNumber    10
    # 4_1_5_7_numeric_field_maxlength    textPhoneNumber    12  
    # 4_1_5_8_numeric_field_no_spaces    textPhoneNumber
    # 4_1_5_10_numeric_field_decimal_not_permitted   textPhoneNumber
    # 4_1_5_11_numeric_field_pastable    textPhoneNumber  
    # 4_1_5_12_numeric_leading_zeroes_stripped    textPhoneNumber   
    # 4_1_5_13_numeric_spacebefore       textPhoneNumber   
    # 4_1_5_14_numeric_spaceafter    textPhoneNumber
    # 4_1_5_15_numeric_field_default_value    textPhoneNumber     ${EMPTY}
    # 4_1_5_16_numeric_field_default_state_enabled    textPhoneNumber
    # 4_1_5_18_numeric_field_not_null    textPhoneNumber
    #4_1_5_19_numeric_field_label    textPhoneNumber-label    Phone Number*
    #4_1_1_20_text_field_attribute  textPhoneNumber placeholder   Primary Phone Number}
    
#Additional_Phone_number
Phone_number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    text-additional-phone-number
Phone_number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    text-additional-phone-number
Phone_number_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    text-additional-phone-number
Phone_number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    text-additional-phone-number
    
Phone_number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    text-additional-phone-number
Phone_number_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    text-additional-phone-number
Phone_number_numeric_field pastable
    4_1_5_11_numeric_field_pastable    text-additional-phone-number
Phone_number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    text-additional-phone-number
Phone_number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore    text-additional-phone-number
Phone_number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    text-additional-phone-number
Phone_number_numeric_default_value
    #4_1_5_15_numeric_field_default_value    phone    ${EMPTY}
    4_1_5_15_numeric_field_default_value    text-additional-phone-number    +
Phone_number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    text-additional-phone-number


  
    
    
    # { 4_1_5_1_numeric_zero_not_allowed    text-additional-phone-number
    # 4_1_5_3_numeric_field_not_lt_zero   text-additional-phone-number
    # 4_1_5_4_numeric_field_no_alphabets   text-additional-phone-number
    # 4_1_5_5_numeric_field_no_splchars    text-additional-phone-number
    # #A numberic data entered in the field reads back in phone number format, hence fails comparison.
    # #4_1_5_6_numeric_field_minlength    text-additional-phone-number    10
    # #4_1_5_7_numeric_field_maxlength    text-additional-phone-number    10
    # 4_1_5_8_numeric_field_no_spaces    text-additional-phone-number
    # 4_1_5_10_numeric_field_decimal_not_permitted    text-additional-phone-number
    # 4_1_5_11_numeric_field_pastable    text-additional-phone-number
    # 4_1_5_12_numeric_leading_zeroes_stripped    text-additional-phone-number
    # 4_1_5_13_numeric_spacebefore       text-additional-phone-number
    # 4_1_5_14_numeric_spaceafter    text-additional-phone-number
    # 4_1_5_15_numeric_field_default_value    text-additional-phone-number     ${EMPTY}
    # 4_1_5_16_numeric_field_default_state_enabled    text-additional-phone-number
    # #4_1_5_18_numeric_field_not_null    text-additional-phone-number
    # #4_1_5_19_numeric_field_label    text-additional-phone-number-label    Additional Phone Number
    # #4_1_1_20_text_field_attribute    text-additional-phone-number   placeholder    Additional Phone Number}
    
#Fax_number
fax-number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    text-fax-number
fax-number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    text-fax-number
fax-number_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    text-fax-number
fax-number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    text-fax-number
    
fax-number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    text-fax-number
fax-number_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    text-fax-number
fax-number_numeric_field pastable
    4_1_5_11_numeric_field_pastable    text-fax-number
fax-number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    text-fax-number
fax-number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore    text-fax-number
fax-number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    text-fax-number
fax_number_default_value    
   4_1_1_14_text_field_default_value    text-fax-number     ${EMPTY}   
fax-number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    text-fax-number    

    # {4_1_5_1_numeric_zero_not_allowed    text-fax-number
    # 4_1_5_3_numeric_field_not_lt_zero   text-fax-number
    # 4_1_5_4_numeric_field_no_alphabets   text-fax-number
    # 4_1_5_5_numeric_field_no_splchars    text-fax-number
    # #4_1_5_7_numeric_field_maxlength    text-fax-number    1855452247211
    # 4_1_5_8_numeric_field_no_spaces    text-fax-number
    # #4_1_5_10_numeric_field_decimal_not_permitted    textPhoneNumber
    # 4_1_5_11_numeric_field_pastable    text-fax-number
    # 4_1_5_12_numeric_leading_zeroes_stripped    text-fax-number
    # 4_1_5_13_numeric_spacebefore       text-fax-number
    # 4_1_5_14_numeric_spaceafter    text-fax-number
    # 4_1_5_15_numeric_field_default_value    text-fax-number   ${EMPTY}
    # 4_1_5_16_numeric_field_default_state_enabled    text-fax-number
    # #4_1_5_19_numeric_field_label    text-fax-number-label    Fax Number}
Fax_number_failing
    4_1_5_6_numeric_field_minlength    text-fax-number    33   
    4_1_5_10_numeric_field_decimal_not_permitted    text-fax-number
    
#Additional_fax_number  
Additional_fax_number_numeric_zero_not_allowed
    4_1_5_1_numeric_zero_not_allowed    text-additional-fax-number
Additional_fax_number_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    text-additional-fax-number
Additional_fax_number_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    text-additional-fax-number
Additional_fax_number_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    text-additional-fax-number
    
Additional_fax_number_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    text-additional-fax-number
Additional_fax_number_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    text-additional-fax-number
Additional_fax_number_numeric_field pastable
    4_1_5_11_numeric_field_pastable    text-additional-fax-number
Additional_fax_number_numeric_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    text-additional-fax-number
Additional_fax_number_numeric_spacebefore
    4_1_5_13_numeric_spacebefore    text-additional-fax-number
Additional_fax_number_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    text-additional-fax-number
Additional_fax_number_default_value    
   4_1_1_14_text_field_default_value    text-additional-fax-number     ${EMPTY}
    # 4_1_5_15_numeric_field_default_value    text-additional-fax-number    
Additional_fax_number_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    text-additional-fax-number   
   # { 4_1_5_1_numeric_zero_not_allowed    text-additional-fax-number
    # 4_1_5_3_numeric_field_not_it_zero    text-additional-fax-number
    # 4_1_5_4_numeric_field_no_alphabets    text-additional-fax-number
    # 4_1_5_5_numeric_field_no_splchars    text-additional-fax-number
    # #4_1_5_7_numeric_field_maxlength    text-additional-fax-number    1855452247411
    # 4_1_5_8_numeric_field_no_spaces    text-additional-fax-number
    # 4_1_5_11_numeric_field_pastable     text-additional-fax-number
    # 4_1_5_12_numeric_leading_zeroes_stripped    text-additional-fax-number
    # 4_1_5_13_numeric_spacebefore       text-additional-fax-number
    # 4_1_5_14_numeric_spaceafter    text-additional-fax-number
    # 4_1_5_15_numeric_field_default_value    text-additional-fax-number    ${EMPTY}
    # 4_1_5_16_numeric_field_default_state_enabled    text-additional-fax-number
    # #4_1_5_19_numeric_field_label    text-additional-fax-number-label    Additional Fax Number
# # Additional_fax_number_failing
    # # 4_1_5_6_numeric_field_minlength    text-additional-fax-number   11
    # # 4_1_5_10_numeric_field_decimal_not_permitted    text-additional-fax-number}
    
Restaurant_Physical_Address
    4_1_1_2_text_splchar_allowed	text-restaurant-addressline1
    4_1_1_4_text_numbers_allowed	text-restaurant-addressline1
    #4_1_1_6_text_minlength_new    text-restaurant-addressline1     5
    #4_1_1_7_text_maxlength_new    text-restaurant-addressline1     100
    4_1_1_9_text_pastable	text-restaurant-addressline1
    4_1_1_11_text_spacebefore    text-restaurant-addressline1
    4_1_1_12_text_spaceafter    text-restaurant-addressline1
    4_1_1_14_text_field_default_value    text-restaurant-addressline1     ${EMPTY}
    4_1_1_15_text_field_default_state_enabled    text-restaurant-addressline1
    #4_1_1_17_text_field_label    text-restaurant-addressline1    Address Line1*
    
Address_Line2_(Ste,_Level_etc.)
    4_1_1_2_text_splchar_allowed	text-restaurant-addressline2
    4_1_1_4_text_numbers_allowed	text-restaurant-addressline2
    #Field can be less than 5 letters also. Faker input text generates minimum 5 chars text. Hence test it with 2 letter value.
    #4_1_1_6_text_minlength    text-restaurant-addressline12     zz
    4_1_1_7_text_maxlength_new    text-restaurant-addressline2     100
    4_1_1_9_text_pastable	text-restaurant-addressline2
    4_1_1_11_text_spacebefore    text-restaurant-addressline2
    4_1_1_12_text_spaceafter    text-restaurant-addressline2
    4_1_1_14_text_field_default_value    text-restaurant-addressline2     ${EMPTY}
    4_1_1_15_text_field_default_state_enabled    text-restaurant-addressline2
   #4_1_1_17_text_field_label    text-restaurant-addressline2    Address Line2 (Ste, Level etc.)

City
    [Documentation]    Perform validations for the City text field.
    FOR    ${validation}    IN    notnull    splchar_allowed    minlength    maxlength_new    spacebefore    spaceafter    default_value    default_state_enabled
        Run Keyword    4_1_1_${validation}    text-city    ${EMPTY}
    END
    4_1_1_6_text_minlength    text-city    2
    4_1_1_7_text_maxlength_new    text-city    100
    # Uncomment and use the following line if label validation is required
    # 4_1_1_17_text_field_label    text-city-label    City*
    
Zipcode
    
    [Documentation]    Perform validations for the Zip Code numeric field.
    FOR    ${validation}    IN    zero_not_allowed    no_alphabets    no_splchars    no_spaces    pastable    leading_zeroes_stripped    spacebefore    spaceafter    default_value    default_state_enabled    not_null
        Run Keyword    4_1_5_${validation}    text-zipcode    ${EMPTY}
    END
    # Uncomment and use the following lines if specific validations are required
    # 4_1_5_6_numeric_field_minlength    text-zipcode    5
    # 4_1_5_7_numeric_field_maxlength    text-zipcode    10
    # 4_1_5_19_numeric_field_label    text-zipcode    Zip Code*
   

 
Zipcode_failing
    4_1_5_10_numeric_field_decimal_not_permitted    text-zipcode
    
State
      #4_1_6_1_DDL_LB_Default     //*[@id="select-state"]    //*[@id="menu-selectState"]/div[3]/ul
      #4_1_6_2_DDL_LB_value_list    //*[@id="select-state"]    //*[@id="menu-selectState"]/div[3]/ul
      #4_1_6_3_DDL_LB_select_value     //*[@id="select-state"]    //*[@id="menu-selectState"]/div[3]/ul/li[8]
      #4_1_6_7_DDL_LB_view_size    select-state
    #4_1_6_9_DDL_no_multi_selection    //*[@id="select-state"]    //*[@id="menu-selectState"]/div[3]/ul/li[8]
    4_1_6_9_DDL_no_multi_selection    xpath=//*[@id="select-state"]
    4_1_6_11_DDL_LB_field_label    xpath=//*[@id="select-state"]        select-state
    4_1_6_5_DDL_LB_order_top_default_values   xpath=//*[@id="select-state"]        select-state
    #reload page
    
Additional_Directions
    4_1_1_14_text_field_default_value    text-additional-direction     ${EMPTY}
    4_1_1_2_text_splchar_allowed	text-additional-direction
    4_1_1_4_text_numbers_allowed	text-additional-direction
    4_1_1_7_text_maxlength    text-additional-direction      1000
    4_1_1_9_text_pastable    text-additional-direction
    4_1_1_11_text_area_spacebefore    text-additional-direction   
    4_1_1_12_text_area_spaceafter    text-additional-direction
    4_1_1_15_text_field_default_state_enabled    text-additional-direction
    #4_1_1_17_text_field_label    text-additional-direction-label    Additional Directions
	
# Mailing_Address
    # 4_1_8_1_checkbox_default_not_selected    check-same-address
    # Assign Id To Element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[8]/div[2]/label/span[2]    checkweekends
    # 4_1_8_7_checkbox_label    checkweekends    Same As Physical Address
# Restaurant_Physical_Address(mailing)
    # 4_1_1_2_text_splchar_allowed	textMailingAddressline1
    # 4_1_1_4_text_numbers_allowed	textMailingAddressline1
    # #4_1_1_6_text_minlength    textMailingAddressline1     zz
    # 4_1_1_7_text_maxlength    textMailingAddressline1     100
    # 4_1_1_9_text_pastable	textMailingAddressline1
    # 4_1_1_11_text_spacebefore    textMailingAddressline1
    # 4_1_1_12_text_spaceafter    textMailingAddressline1
    # 4_1_1_14_text_field_default_value    textMailingAddressline1     ${EMPTY}
    # 4_1_1_15_text_field_default_state_enabled    textMailingAddressline1
    # 4_1_1_17_text_field_label    textMailingAddressline1-label    Address Line1*
    
# Address_Line2_(Ste,_Level_etc.)(mailing)
    # 4_1_1_2_text_splchar_allowed	textMailingAddressline2
    # 4_1_1_4_text_numbers_allowed	textMailingAddressline2
    # #4_1_1_6_text_minlength    textMailingAddressline2     zz
    # 4_1_1_7_text_maxlength_new    textMailingAddressline2     100
    # 4_1_1_9_text_pastable	textMailingAddressline2
    # 4_1_1_11_text_spacebefore    textMailingAddressline2
    # 4_1_1_12_text_spaceafter    textMailingAddressline2
    # 4_1_1_14_text_field_default_value    textMailingAddressline2    ${EMPTY}
    # 4_1_1_15_text_field_default_state_enabled    textMailingAddressline2
    # 4_1_1_17_text_field_label    textMailingAddressline2-label    Address Line2 (Ste, Level etc.)    

# City(mailing)
    # #4_1_1_6_text_minlength    text-city     zz
    # 4_1_1_1_text_notnull        textMailingCity
    # 4_1_1_2_text_splchar_allowed   textMailingCity
    # 4_1_1_7_text_maxlength    textMailingCity     Like any other socia
    # 4_1_1_11_text_spacebefore    textMailingCity
    # 4_1_1_12_text_spaceafter    textMailingCity
    # 4_1_1_14_text_field_default_value    textMailingCity     ${EMPTY}
    # 4_1_1_15_text_field_default_state_enabled    textMailingCity
    # 4_1_1_17_text_field_label    textMailingCity-label    City*

    
# Zipcode(mailing)
    # #4_1_5_1_numeric_zero_not_allowed    textMailingZipcode
    # #4_1_5_4_numeric_field_no_alphabets    textMailingZipcode
    # 4_1_5_5_numeric_field_no_splchars    textMailingZipcode
    # 4_1_5_7_numeric_field_maxlength    textMailingZipcode    10 
    # 4_1_5_6_numeric_field_minlength    textMailingZipcode    5
    # 4_1_5_8_numeric_field_no_spaces    textMailingZipcode

    # 4_1_5_11_numeric_field_pastable    textMailingZipcode
    # 4_1_5_12_numeric_leading_zeroes_stripped    textMailingZipcode
    # 4_1_5_13_numeric_spacebefore       textMailingZipcode
    # 4_1_5_14_numeric_spaceafter    textMailingZipcode
    # 4_1_5_12_numeric_leading_zeroes_stripped   textMailingZipcode
    # 4_1_5_15_numeric_field_default_value    textMailingZipcode     ${EMPTY}
    
    # 4_1_5_16_numeric_field_default_state_enabled    textMailingZipcode
    # 4_1_5_18_numeric_field_not_null    textMailingZipcode
    # 4_1_5_19_numeric_field_label    textMailingZipcode    Zip Code*
# Zipcode(mailing)_failing
    # 4_1_5_10_numeric_field_decimal_not_permitted    textMailingZipcode
    
# State(mailing)   
   # reload page             
      #4_1_6_1_DDL_LB_Default     //*[@id="selectMailingState"]    //*[@id="menu-selectMailingState"]/div[3]/ul
      #4_1_6_2_DDL_LB_value_list    //*[@id="selectMailingState"]    //*[@id="menu-selectMailingState"]/div[3]/ul
      #4_1_6_3_DDL_LB_select_value     //*[@id="selectMailingState"]    //*[@id="menu-selectMailingState"]/div[3]/ul/li[8]
      #4_1_6_7_DDL_LB_view_size    selectMailingState
    #4_1_6_9_DDL_no_multi_selection    //*[@id="selectMailingState"]    //*[@id="menu-selectMailingState"]/div[3]/ul/li[8]
    # 4_1_6_9_DDL_no_multi_selection   //*[@id="selectMailingState"] 
    # 4_1_6_11_DDL_LB_field_label    //*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div/div[11]/div[3]/div/label    State*
    # 4_1_6_5_DDL_LB_order_top_default_values     //*[@id="selectMailingState"]    //*[@id="menu-selectMailingState"]/div[3]/ul
     #reload page
    
Customer_Support_Options_Email
    4_1_2_1_email_ID_wrong_format    text-customer-support-email
    4_1_2_2_email_ID_right_format    text-customer-support-email
    4_1_2_3_email_ID_default_value    text-customer-support-email     ${EMPTY}
    4_1_2_4_email_ID_default_state_enabled    text-customer-support-email
    #4_1_2_6_email_ID_label_text    text-customer-support-email-label    Enter Email ID*
    
Customer_Support_Options_Phone
    4_1_5_1_numeric_zero_not_allowed    textCustomerSupportPhone
    4_1_5_3_numeric_field_not_it_zero    textCustomerSupportPhone
    4_1_5_4_numeric_field_no_alphabets    textCustomerSupportPhone
    4_1_5_5_numeric_field_no_splchars    textCustomerSupportPhone
    #4_1_5_6_numeric_field_minlength    textCustomerSupportPhone    10
    #4_1_5_7_numeric_field_maxlength    textCustomerSupportPhone    
    4_1_5_8_numeric_field_no_spaces    textCustomerSupportPhone
    4_1_5_10_numeric_field_decimal_not_permitted    textCustomerSupportPhone
    4_1_5_11_numeric_field_pastable    textCustomerSupportPhone
    4_1_5_12_numeric_leading_zeroes_stripped    textCustomerSupportPhone
    4_1_5_13_numeric_spacebefore       textCustomerSupportPhone
    4_1_5_14_numeric_spaceafter    textCustomerSupportPhone
    4_1_5_15_numeric_field_default_value    textCustomerSupportPhone     ${EMPTY}
    4_1_5_16_numeric_field_default_state_enabled    textCustomerSupportPhone
    4_1_5_18_numeric_field_not_null    textCustomerSupportPhone
    
Food_Ordering_hours1
   # reload page
      #4_1_6_1_DDL_LB_Default     //*[@id="after-restaurant-opens"]    //*[@id="menu-afterRestaurantOpens"]/div[3]/ul
      #4_1_6_2_DDL_LB_value_list    //*[@id="after-restaurant-opens"]    //*[@id="menu-afterRestaurantOpens"]/div[3]/ul
      #4_1_6_3_DDL_LB_select_value     //*[@id="after-restaurant-opens"]    //*[@id="menu-afterRestaurantOpens"]/div[3]/ul/li[4]
      #4_1_6_7_DDL_LB_view_size    after-restaurant-opens
    #4_1_6_9_DDL_no_multi_selection    //*[@id="after-restaurant-opens"]    //*[@id="menu-afterRestaurantOpens"]/div[3]/ul/li[4]
    4_1_6_9_DDL_no_multi_selection     xpath=//*[@id="after-restaurant-opens"]
    4_1_6_11_DDL_LB_field_label        xpath=//*[@id="after-restaurant-opens"]            after-restaurant-opens*
    #reload page           
    
Food_Ordering_hours2
    #reload page
      #4_1_6_1_DDL_LB_Default     //*[@id="before-restaurant-closes"]    //*[@id="menu-beforeRestaurantCloses"]/div[3]/ul
      #4_1_6_2_DDL_LB_value_list    //*[@id="before-restaurant-closes"]    //*[@id="menu-beforeRestaurantCloses"]/div[3]/ul
      #4_1_6_3_DDL_LB_select_value     //*[@id="before-restaurant-closes"]    //*[@id="menu-beforeRestaurantCloses"]/div[3]/ul/li[4]
      #4_1_6_7_DDL_LB_view_size    before-restaurant-closes
    #4_1_6_9_DDL_no_multi_selection    before-restaurant-closes    //*[@id="menu-beforeRestaurantCloses"]/div[3]/ul/li[4]
    4_1_6_9_DDL_no_multi_selection    xpath=//*[@id=""before-restaurant-closes"]  
    4_1_6_11_DDL_LB_field_label       xpath=//*[@id=""before-restaurant-closes"]        Before Restaurant Closes* 
    #reload page
    
button_next_and_save
    #test case to check need help button
    4_1_4_1_button_rightname_new  next   SAVE
    #button active    next
    # 4_1_4_1_button_rightname_new    save-and-other-rest-info   + SAVE & ENTER OTHER RESTAURANT INFO
    # button active    save-and-other-rest-info
    
Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2022
    Element Should Be Visible    ${FOOTER_DIVIDER}

Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Privacy Policy
    Go Back

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Terms & Conditions
    Go Back

    close all browsers
