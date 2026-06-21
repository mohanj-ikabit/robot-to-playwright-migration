*** Settings ***
Default Tags    fvcalendar
Library    SeleniumLibrary
Library    String
Library      DateTime
Resource   ../Resource/button.robot
Resource   ../Resource/dropdownlist.robot
Resource    ../Resource/dropdown.robot
Resource   ../Resource/genericfunctions.robot
Resource   ../Resource/numericalvalue.robot
Resource   ../Resource/textfield.robot
Resource   ../Resource/Checkbox.robot
Resource    ../Resource/Text on form.robot
Resource    ../Resource/date.robot
Resource    ../Resource/Email ID.robot

Suite Teardown    close all browsers

*** Test Cases ***
App_Login
    login pkg1
    
#GoTo_RestaurantInfo_Policy_Payments
    #login createuser
    #go to    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/user/restaurant-info

GoTo_RestautantInfo
    click element    xpath=//*[@href="/user/restaurant-info"]
GoTo_CalendarSettings
    click element    xpath=//*[@href="/user/restaurant-info/calendar-settings"]
    
#Only a range of dates (during next 1 year allowed), so may or may not have leap year in that range
ClickElement_holiday1
    Click Element    xpath=//*[@id="holiday1"]
#ClearElementText_holiday1
    #Clear Element Text    xpath=//*[@id="holiday1"]
holiday1_right_format
    4_1_7_2_date_right_format    holiday1
    #Input text	  xpath=//*[@id="${holiday1}"]		01032022
    #${pattern}=	  get text	xpath=//*[@id="${holiday1}"]
    #Error for Input Text below - Element should be user editable to clear it.
    #${date11}   Get Current Date   result_format=%m/%d/%Y 
    #Input text   xpath=//*[@id="holiday1"]  ${date11}
    #${pattern}=	  get text	xpath=//*[@id="holiday1"]
    #should be equal as strings   ${pattern}    
    #log to console	 the date pattern is.................${pattern}
#holiday1_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday1 
holiday1_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday1
#holiday1_label
    #4_1_7_7_date_default_date_label    holiday1-label    <n/a>
holiday1_attribute_type
    4_1_7_8_date_attribute    holiday1     type    date

holiday2_right_format
    4_1_7_2_date_right_format    holiday2
    #Input text	  xpath=//*[@id="${holiday2}"]		02032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday2}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=1day
    # Input text	  xpath=//*[@id="holiday2"]	 ${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday2"]
    # should be equal as strings   ${pattern}     ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday2_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday2
holiday2_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday2
#holiday2_label
    #4_1_7_7_date_default_date_label    holiday2-label    <n/a>
holiday2_attribute_type
    4_1_7_8_date_attribute    holiday2     type    date

holiday3_right_format
    4_1_7_2_date_right_format    holiday3
    #Input text  	xpath=//*[@id="${holiday3}"]		03032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday3}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=2day
    # Input text  	xpath=//*[@id="holiday3"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday3"]
    # should be equal as strings    ${pattern}    ${date11}
    # log to console   the date pattern is.................${pattern}
#holiday3_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday3 
holiday3_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday3
#holiday3_label
    #4_1_7_7_date_default_date_label    holiday3-label    <n/a>
holiday3_attribute_type
    4_1_7_8_date_attribute    holiday3     type    date

holiday4_right_format
    4_1_7_2_date_right_format    holiday4
    #Input text	  xpath=//*[@id="${holiday4}"]		04032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday4}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=3day
    # Input text	  xpath=//*[@id="holiday4"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday4"]
    # should be equal as strings	 ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday4_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday4 
holiday4_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday4
#holiday4_label
    #4_1_7_7_date_default_date_label    holiday4-label    <n/a>
holiday4_attribute_type
    4_1_7_8_date_attribute    holiday4     type    date

holiday5_right_format
    4_1_7_2_date_right_format    holiday5
    #Input text	  xpath=//*[@id="${holiday5}"]		05032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday5}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=4day
    # Input text	  xpath=//*[@id="holiday5"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday5"]
    # should be equal as strings    ${pattern}    ${date11}
    # log to console	 the date pattern is.................${pattern}
#holiday5_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday5 
holiday5_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday5
#holiday5_label
    #4_1_7_7_date_default_date_label    holiday5-label    <n/a>
holiday5_attribute_type
    4_1_7_8_date_attribute    holiday5     type    date

holiday6_right_format
    4_1_7_2_date_right_format    holiday6
    #Input text    xpath=//*[@id="${holiday6}"]		06032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday6}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=5day
    # Input text    xpath=//*[@id="holiday6"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday6"]
    # should be equal as strings	 ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday6_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday6 
holiday6_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday6
#holiday6_label
    #4_1_7_7_date_default_date_label    holiday6-label    <n/a>
holiday6_attribute_type
    4_1_7_8_date_attribute    holiday6     type    date

holiday7_right_format
    4_1_7_2_date_right_format    holiday7
    #Input text	  xpath=//*[@id="${holiday7}"]		07032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday7}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=6day
    # Input text	  xpath=//*[@id="holiday7"]		 ${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday7"]
    # should be equal as strings   ${pattern}     ${date11}
    # log to console   the date pattern is.................${pattern}
#holiday7_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday7 
holiday7_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday7
#holiday7_label
    #4_1_7_7_date_default_date_label    holiday7-label    <n/a>
holiday7_attribute_type
    4_1_7_8_date_attribute    holiday7     type    date

holiday8_right_format
    4_1_7_2_date_right_format    holiday8
    #Input text	  xpath=//*[@id="${holiday8}"]		08032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday8}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=7day
    # Input text	  xpath=//*[@id="holiday8"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday8"]
    # should be equal as strings	 ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday8_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday8 
holiday8_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday8
#holiday8_label
    #4_1_7_7_date_default_date_label    holiday8-label    <n/a>
holiday8_attribute_type
    4_1_7_8_date_attribute    holiday8     type    date

holiday9_right_format
    4_1_7_2_date_right_format    holiday9
    #Input text   xpath=//*[@id="${holiday9}"]		09032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday9}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=8day
    # Input text   xpath=//*[@id="holiday9"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday9"]
    # should be equal as strings	${pattern}    ${date11}
    # log to console	the date pattern is.................${pattern}
#holiday9_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday9 
holiday9_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday9
#holiday9_label
    #4_1_7_7_date_default_date_label    holiday9-label    <n/a>
holiday9_attribute_type
    4_1_7_8_date_attribute    holiday9     type    date
    
holiday10_right_format
    4_1_7_2_date_right_format    holiday10
    #Input text   xpath=//*[@id="${holiday10}"]		10032022
    #${pattern}=   get text	xpath=//*[@id="${holiday10}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=9day
    # Input text   xpath=//*[@id="holiday10"]		${date11}
    # ${pattern}=   get text	xpath=//*[@id="holiday10"]
    # should be equal as strings    ${pattern}    ${date11}
    # log to console	 the date pattern is.................${pattern}
#holiday10_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday10 
holiday10_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday10
#holiday10_label
    #4_1_7_7_date_default_date_label    holiday10-label    <n/a>
holiday10_attribute_type
    4_1_7_8_date_attribute    holiday10     type    date
    
holiday11_right_format
    4_1_7_2_date_right_format    holiday11
    #Input text   xpath=//*[@id="${holiday11}"]		01032022
    #${pattern}=	  get text   xpath=//*[@id="${holiday11}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=10day
    # Input text   xpath=//*[@id="holiday11"]		${date11}
    # ${pattern}=	  get text   xpath=//*[@id="holiday11"]
    # should be equal as strings	  ${pattern}    ${date11}
    # log to console	 the date pattern is.................${pattern}
#holiday11_leapyear_format  (only a range of dates (during next 1 year allowed), so may or may not have leap year in that range)
    #4_1_7_4_date_leap_year_format    holiday11 
holiday11_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday11
#holiday11_label
    #4_1_7_7_date_default_date_label    holiday11-label    <n/a>
holiday11_attribute_type
    4_1_7_8_date_attribute    holiday11     type    date

holiday12_right_format
    4_1_7_2_date_right_format    holiday12
    #Input text    xpath=//*[@id="${holiday12}"]		12032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday12}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=11day
    # Input text    xpath=//*[@id="holiday12"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday12"]
    # should be equal as strings    ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday12_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday12 
holiday12_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday12
#holiday12_label
    #4_1_7_7_date_default_date_label    holiday12-label    <n/a>
holiday12_attribute_type
    4_1_7_8_date_attribute    holiday12     type    date
    
holiday13_right_format
    4_1_7_2_date_right_format    holiday13
    #Input text    xpath=//*[@id="${holiday13}"]		13032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday13}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=12day
    # Input text    xpath=//*[@id="holiday13"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday13"]
    # should be equal as strings	  ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday13_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday13 
holiday13_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday13
#holiday13_label
    #4_1_7_7_date_default_date_label    holiday13-label    <n/a>
holiday13_attribute_type
    4_1_7_8_date_attribute    holiday13     type    date

holiday14_right_format
    4_1_7_2_date_right_format    holiday14
    #Input text    xpath=//*[@id="${holiday14}"]		14032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday14}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=13day
    # Input text    xpath=//*[@id="holiday14"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday14"]
    # should be equal as strings    ${pattern}    ${date11}
    # log to console   the date pattern is.................${pattern}
#holiday14_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday14 
holiday14_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday14
#holiday14_label
    #4_1_7_7_date_default_date_label    holiday14-label    <n/a>
holiday14_attribute_type
    4_1_7_8_date_attribute    holiday14     type    date

holiday15_right_format
    4_1_7_2_date_right_format    holiday15
    #Input text   xpath=//*[@id="${holiday15}"]		15032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday15}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=14day
    # Input text   xpath=//*[@id="holiday15"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday15"]
    # should be equal as strings	   ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday15_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday15 
holiday15_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday15
#holiday15_label
    #4_1_7_7_date_default_date_label    holiday15-label    <n/a>
holiday15_attribute_type
    4_1_7_8_date_attribute    holiday15     type    date

holiday16_right_format
    4_1_7_2_date_right_format    holiday16                     
    #Input text   xpath=//*[@id="${holiday16}"]		16032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday16}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=15day
    # Input text   xpath=//*[@id="holiday16"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday16"]
    # should be equal as strings	 ${pattern}    ${date11}
    # log to console	  the date pattern is.................${pattern}
#holiday16_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday16 
holiday16_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday16
#holiday16_label
    #4_1_7_7_date_default_date_label    holiday16-label    <n/a>
holiday16_attribute_type
    4_1_7_8_date_attribute    holiday16     type    date

holiday17_right_format
    4_1_7_2_date_right_format    holiday17
    #Input text    xpath=//*[@id="${holiday17}"]		17032022
    #${pattern}=	   get text	xpath=//*[@id="${holiday17}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=16day
    # Input text    xpath=//*[@id="holiday17"]		${date11}
    # ${pattern}=	   get text	xpath=//*[@id="holiday17"]
    # should be equal as strings 	${pattern}    ${date11}
    # log to console	 the date pattern is.................${pattern}
#holiday17_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday17 
holiday17_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday17
#holiday17_label
    #4_1_7_7_date_default_date_label    holiday17-label    <n/a>
holiday17_attribute_type
    4_1_7_8_date_attribute    holiday17     type    date

holiday18_right_format
    4_1_7_2_date_right_format    holiday18
    #Input text    xpath=//*[@id="${holiday18}"]		18032022
    #${pattern}=   get text	xpath=//*[@id="${holiday18}"]
    # ${date11}   Get Current Date   result_format=%m/%d/%Y   increment=17day
    # Input text    xpath=//*[@id="holiday18"]		${date11}
    # ${pattern}=   get text	xpath=//*[@id="holiday18"]
    # should be equal as strings   ${pattern}    ${date11}
    # log to console   the date pattern is.................${pattern}
#holiday18_leapyear_format
    #4_1_7_4_date_leap_year_format    holiday18 
holiday18_default_state_enabled
    4_1_7_5_date_default_state_enabled    holiday18
#holiday18_label
    #4_1_7_7_date_default_date_label    holiday18-label    <n/a>
holiday18_attribute_type
    4_1_7_8_date_attribute    holiday18     type    date

HolidayNo1_text_default_value
    4_1_1_14_text_field_default_value   holidayno1    1. DATE
HolidayNo2_text_default_value
    4_1_1_14_text_field_default_value   holidayno2    2. DATE
HolidayNo3_text_default_value
    4_1_1_14_text_field_default_value   holidayno3    3. DATE
HolidayNo4_text_default_value
    4_1_1_14_text_field_default_value   holidayno4    4. DATE
HolidayNo5_text_default_value
    4_1_1_14_text_field_default_value   holidayno5    5. DATE
HolidayNo6_text_default_value
    4_1_1_14_text_field_default_value   holidayno6    6. DATE
HolidayNo7_text_default_value
    4_1_1_14_text_field_default_value   holidayno7    7. DATE
HolidayNo8_text_default_value
    4_1_1_14_text_field_default_value   holidayno8    8. DATE
HolidayNo9_text_default_value
    4_1_1_14_text_field_default_value   holidayno9    9. DATE
HolidayNo10_text_default_value
    4_1_1_14_text_field_default_value   holidayno10    10. DATE
HolidayNo11_text_default_value
    4_1_1_14_text_field_default_value   holidayno11    11. DATE
HolidayNo12_text_default_value
    4_1_1_14_text_field_default_value   holidayno12    12. DATE
HolidayNo13_text_default_value
    4_1_1_14_text_field_default_value   holidayno13    13. DATE
HolidayNo14_text_default_value
    4_1_1_14_text_field_default_value   holidayno14    14. DATE
HolidayNo15_text_default_value
    4_1_1_14_text_field_default_value   holidayno15    15. DATE
HolidayNo16_text_default_value
    4_1_1_14_text_field_default_value   holidayno16    16. DATE
HolidayNo17_text_default_value
    4_1_1_14_text_field_default_value   holidayno17    17. DATE
HolidayNo18_text_default_value
    4_1_1_14_text_field_default_value   holidayno18    18. DATE
    
button_save_rightname_new
    4_1_4_1_button_rightname_new    clickToContinue    SAVE/CONTINUE
button_save_active
    4_1_4_2_button_active    clickToContinue
button_save_attribute_type
    4_1_4_6_button_attribute    clickToContinue    type    button
#button_save_attribute_label
    #4_1_4_6_button_attribute    clickToContinue    label     SAVE/CONTINUE

# button_cancel_rightname_new
    # 4_1_4_1_button_rightname_new    goBack    GO BACK
# button_cancel_active
    # 4_1_4_2_button_active    goBack
# button_cancel_attribute_type
    # 4_1_4_6_button_attribute    goBack    type    button
#button_cancel_attribute_label
    #4_1_4_6_button_attribute    goBack    label    GO BACK
    
HolidayText1_text_notnull
    4_1_1_1_text_notnull    holidayText1
HolidayText1_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText1
HolidayText1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText1
HolidayText1_text_minlength
    4_1_1_6_text_minlength    holidayText1	  a
HolidayText1_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText1	  5
HolidayText1_text_maxlength
    4_1_1_7_text_maxlength	  holidayText1	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText1_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText1	  50
HolidayText1_text_pastable
    4_1_1_9_text_pastable	  holidayText1
HolidayText1_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText1
HolidayText1_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText1
HolidayText1_text_default_value
    4_1_1_14_text_field_default_value   holidayText1    ${EMPTY}
HolidayText1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText1
HolidayText1_label
    4_1_1_17_text_field_label    holidayText1-label    Holiday Name

HolidayText2_text_notnull
    4_1_1_1_text_notnull    holidayText2
HolidayText2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText2
HolidayText2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText2
HolidayText2_text_minlength
    4_1_1_6_text_minlength    holidayText2	  a
HolidayText2_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText2	  5
HolidayText2_text_maxlength
    4_1_1_7_text_maxlength	  holidayText2	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText2_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText2	  50
HolidayText2_text_pastable
    4_1_1_9_text_pastable	  holidayText2
HolidayText2_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText2
HolidayText2_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText2
HolidayText2_text_default_value
    4_1_1_14_text_field_default_value   holidayText2    ${EMPTY}
HolidayText2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText2
HolidayText2_label
    4_1_1_17_text_field_label    holidayText2-label    Holiday Name

HolidayText3_text_notnull
    4_1_1_1_text_notnull    holidayText3
HolidayText3_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText3
HolidayText3_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText3
HolidayText3_text_minlength
    4_1_1_6_text_minlength    holidayText3	  a
HolidayText3_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText3	  5
HolidayText3_text_maxlength
    4_1_1_7_text_maxlength	  holidayText3	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText3_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText3	  50
HolidayText3_text_pastable
    4_1_1_9_text_pastable	  holidayText3
HolidayText3_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText3
HolidayText3_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText3
HolidayText3_text_default_value
    4_1_1_14_text_field_default_value   holidayText3    ${EMPTY}
HolidayText3_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText3
HolidayText3_label
    4_1_1_17_text_field_label    holidayText3-label    Holiday Name

HolidayText4_text_notnull
    4_1_1_1_text_notnull    holidayText4
HolidayText4_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText4
HolidayText4_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText4
HolidayText4_text_minlength
    4_1_1_6_text_minlength    holidayText4	  a
HolidayText4_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText4	  5
HolidayText4_text_maxlength
    4_1_1_7_text_maxlength	  holidayText4	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText4_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText4	  50
HolidayText4_text_pastable
    4_1_1_9_text_pastable	  holidayText4
HolidayText4_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText4
HolidayText4_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText4
HolidayText4_text_default_value
    4_1_1_14_text_field_default_value   holidayText4    ${EMPTY}
HolidayText4_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText4
HolidayText4_label
    4_1_1_17_text_field_label    holidayText4-label    Holiday Name

HolidayText5_text_notnull
    4_1_1_1_text_notnull    holidayText5
HolidayText5_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText5
HolidayText5_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText5
HolidayText5_text_minlength
    4_1_1_6_text_minlength    holidayText5	  a
HolidayText5_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText5	  5
HolidayText5_text_maxlength
    4_1_1_7_text_maxlength	  holidayText5	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText5_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText5	  50
HolidayText5_text_pastable
    4_1_1_9_text_pastable	  holidayText5
HolidayText5_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText5
HolidayText5_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText5
HolidayText5_text_default_value
    4_1_1_14_text_field_default_value   holidayText5    ${EMPTY}
HolidayText5_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText5
HolidayText5_label
    4_1_1_17_text_field_label    holidayText5-label    Holiday Name

HolidayText6_text_notnull
    4_1_1_1_text_notnull    holidayText6
HolidayText6_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText6
HolidayText6_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText6
HolidayText6_text_minlength
    4_1_1_6_text_minlength    holidayText6	  a
HolidayText6_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText6	  5
HolidayText6_text_maxlength
    4_1_1_7_text_maxlength	  holidayText6	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText6_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText6	  50
HolidayText6_text_pastable
    4_1_1_9_text_pastable	  holidayText6
HolidayText6_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText6
HolidayText6_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText6
HolidayText6_text_default_value
    4_1_1_14_text_field_default_value   holidayText6    ${EMPTY}
HolidayText6_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText6
HolidayText6_label
    4_1_1_17_text_field_label    holidayText6-label    Holiday Name

HolidayText7_text_notnull
    4_1_1_1_text_notnull    holidayText7
HolidayText7_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText7
HolidayText7_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText7
HolidayText7_text_minlength
    4_1_1_6_text_minlength    holidayText7	  a
HolidayText7_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText7	  5
HolidayText7_text_maxlength
    4_1_1_7_text_maxlength	  holidayText7	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText7_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText7	  50
HolidayText7_text_pastable
    4_1_1_9_text_pastable	  holidayText7
HolidayText7_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText7
HolidayText7_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText7
HolidayText7_text_default_value
    4_1_1_14_text_field_default_value   holidayText7    ${EMPTY}
HolidayText7_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText7
HolidayText7_label
    4_1_1_17_text_field_label    holidayText7-label    Holiday Name

HolidayText8_text_notnull
    4_1_1_1_text_notnull    holidayText8
HolidayText8_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText8
HolidayText8_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText8
HolidayText8_text_minlength
    4_1_1_6_text_minlength    holidayText8	  a
HolidayText8_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText8	  5
HolidayText8_text_maxlength
    4_1_1_7_text_maxlength	  holidayText8	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText8_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText8	  50
HolidayText8_text_pastable
    4_1_1_9_text_pastable	  holidayText8
HolidayText8_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText8
HolidayText8_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText8
HolidayText8_text_default_value
    4_1_1_14_text_field_default_value   holidayText8    ${EMPTY}
HolidayText8_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText8
HolidayText8_label
    4_1_1_17_text_field_label    holidayText8-label    Holiday Name

HolidayText9_text_notnull
    4_1_1_1_text_notnull    holidayText9
HolidayText9_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText9
HolidayText9_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText9
HolidayText9_text_minlength
    4_1_1_6_text_minlength    holidayText9	  a
HolidayText9_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText9	  5
HolidayText9_text_maxlength
    4_1_1_7_text_maxlength	  holidayText9	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText9_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText9	  50
HolidayText9_text_pastable
    4_1_1_9_text_pastable	  holidayText9
HolidayText9_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText9
HolidayText9_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText9
HolidayText9_text_default_value
    4_1_1_14_text_field_default_value   holidayText9    ${EMPTY}
HolidayText9_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText9
HolidayText9_label
    4_1_1_17_text_field_label    holidayText9-label    Holiday Name

HolidayText10_text_notnull
    4_1_1_1_text_notnull    holidayText10
HolidayText10_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText10
HolidayText10_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText10
HolidayText10_text_minlength
    4_1_1_6_text_minlength    holidayText10	  a
HolidayText10_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText10	  5
HolidayText10_text_maxlength
    4_1_1_7_text_maxlength	  holidayText10	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText10_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText10	  50
HolidayText10_text_pastable
    4_1_1_9_text_pastable	  holidayText10
HolidayText10_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText10
HolidayText10_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText10
HolidayText10_text_default_value
    4_1_1_14_text_field_default_value   holidayText10    ${EMPTY}
HolidayText10_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText10
HolidayText10_label
    4_1_1_17_text_field_label    holidayText10-label    Holiday Name

HolidayText11_text_notnull
    4_1_1_1_text_notnull    holidayText11
HolidayText11_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText11
HolidayText11_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText11
HolidayText11_text_minlength
    4_1_1_6_text_minlength    holidayText11	  a
HolidayText11_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText11	  5
HolidayText11_text_maxlength
    4_1_1_7_text_maxlength	  holidayText11	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText11_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText11	  50
HolidayText11_text_pastable
    4_1_1_9_text_pastable	  holidayText11
HolidayText11_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText11
HolidayText11_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText11
HolidayText11_text_default_value
    4_1_1_14_text_field_default_value   holidayText11    ${EMPTY}
HolidayText11_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText11
HolidayText11_label
    4_1_1_17_text_field_label    holidayText11-label    Holiday Name

HolidayText12_text_notnull
    4_1_1_1_text_notnull    holidayText12
HolidayText12_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText12
HolidayText12_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText12
HolidayText12_text_minlength
    4_1_1_6_text_minlength    holidayText12	  a
HolidayText12_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText12	  5
HolidayText12_text_maxlength
    4_1_1_7_text_maxlength	  holidayText12	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText12_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText12	  50
HolidayText12_text_pastable
    4_1_1_9_text_pastable	  holidayText12
HolidayText12_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText12
HolidayText12_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText12
HolidayText12_text_default_value
    4_1_1_14_text_field_default_value   holidayText12    ${EMPTY}
HolidayText12_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText12
HolidayText12_label
    4_1_1_17_text_field_label    holidayText12-label    Holiday Name

HolidayText13_text_notnull
    4_1_1_1_text_notnull    holidayText13
HolidayText13_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText13
HolidayText13_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText13
HolidayText13_text_minlength
    4_1_1_6_text_minlength    holidayText13	  a
HolidayText13_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText13	  5
HolidayText13_text_maxlength
    4_1_1_7_text_maxlength	  holidayText13	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText13_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText13	  50
HolidayText13_text_pastable
    4_1_1_9_text_pastable	  holidayText13
HolidayText13_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText13
HolidayText13_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText13
HolidayText13_text_default_value
    4_1_1_14_text_field_default_value   holidayText13    ${EMPTY}
HolidayText13_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText13
HolidayText13_label
    4_1_1_17_text_field_label    holidayText13-label    Holiday Name

HolidayText14_text_notnull
    4_1_1_1_text_notnull    holidayText14
HolidayText14_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText14
HolidayText14_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText14
HolidayText14_text_minlength
    4_1_1_6_text_minlength    holidayText14	  a
HolidayText14_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText14	  5
HolidayText14_text_maxlength
    4_1_1_7_text_maxlength	  holidayText14	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText14_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText14	  50
HolidayText14_text_pastable
    4_1_1_9_text_pastable	  holidayText14
HolidayText14_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText14
HolidayText14_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText14
HolidayText14_text_default_value
    4_1_1_14_text_field_default_value   holidayText14    ${EMPTY}
HolidayText14_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText14
HolidayText14_label
    4_1_1_17_text_field_label    holidayText14-label    Holiday Name

HolidayText15_text_notnull
    4_1_1_1_text_notnull    holidayText15
HolidayText15_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText15
HolidayText15_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText15
HolidayText15_text_minlength
    4_1_1_6_text_minlength    holidayText15	  a
HolidayText15_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText15	  5
HolidayText15_text_maxlength
    4_1_1_7_text_maxlength	  holidayText15	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText15_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText15	  50
HolidayText15_text_pastable
    4_1_1_9_text_pastable	  holidayText15
HolidayText15_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText15
HolidayText15_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText15
HolidayText15_text_default_value
    4_1_1_14_text_field_default_value   holidayText15    ${EMPTY}
HolidayText15_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText15
HolidayText15_label
    4_1_1_17_text_field_label    holidayText15-label    Holiday Name

HolidayText16_text_notnull
    4_1_1_1_text_notnull    holidayText16
HolidayText16_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText16
HolidayText16_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText16
HolidayText16_text_minlength
    4_1_1_6_text_minlength    holidayText16	  a
HolidayText16_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText16	  5
HolidayText16_text_maxlength
    4_1_1_7_text_maxlength	  holidayText16	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText16_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText16	  50
HolidayText16_text_pastable
    4_1_1_9_text_pastable	  holidayText16
HolidayText16_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText16
HolidayText16_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText16
HolidayText16_text_default_value
    4_1_1_14_text_field_default_value   holidayText16    ${EMPTY}
HolidayText16_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText16
HolidayText16_label
    4_1_1_17_text_field_label    holidayText16-label    Holiday Name

HolidayText17_text_notnull
    4_1_1_1_text_notnull    holidayText17
HolidayText17_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText17
HolidayText17_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText17
HolidayText17_text_minlength
    4_1_1_6_text_minlength    holidayText17	  a
HolidayText17_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText17	  5
HolidayText17_text_maxlength
    4_1_1_7_text_maxlength	  holidayText17	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText17_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText17	  50
HolidayText17_text_pastable
    4_1_1_9_text_pastable	  holidayText17
HolidayText17_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText17
HolidayText17_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText17
HolidayText17_text_default_value
    4_1_1_14_text_field_default_value   holidayText17    ${EMPTY}
HolidayText17_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText17
HolidayText17_label
    4_1_1_17_text_field_label    holidayText17-label    Holiday Name

HolidayText18_text_notnull
    4_1_1_1_text_notnull    holidayText18
HolidayText18_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    holidayText18
HolidayText18_text_numbers_allowed
    4_1_1_4_text_numbers_allowed	 holidayText18
HolidayText18_text_minlength
    4_1_1_6_text_minlength    holidayText18	  a
HolidayText18_text_minlength_new 
    4_1_1_6_text_minlength_new	  holidayText18	  5
HolidayText18_text_maxlength
    4_1_1_7_text_maxlength	  holidayText18	  Like any other social media site Facebook has length requirements when it comes to writing on the wa
HolidayText18_text_maxlength_new
    4_1_1_7_text_maxlength_new    holidayText18	  50
HolidayText18_text_pastable
    4_1_1_9_text_pastable	  holidayText18
HolidayText18_text_spacebefore
    4_1_1_11_text_spacebefore   holidayText18
HolidayText18_text_spaceafter
    4_1_1_12_text_spaceafter   holidayText18
HolidayText18_text_default_value
    4_1_1_14_text_field_default_value   holidayText18    ${EMPTY}
HolidayText18_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled   holidayText18
HolidayText18_label
    4_1_1_17_text_field_label    holidayText18-label    Holiday Name

Text_on_form_1
    4_1_10_1_text_present    Holiday Calendar Settings
Text_on_form_2
    4_1_10_1_text_present    Please indicate the days your restaurant is closed for the year
Text_on_form_3
    4_1_10_1_text_present    Use this calendar to mark restaurant holidays

# verify_footer_text
    # verify_footer_text
# verify_footer_privacy_policy_url
    # verify_footer_privacy_policy_url
# verify_footer_terms_conditions_url
    # verify_footer_terms_conditions_url
# verify_footer_ikabit_url
    # verify_footer_ikabit_url
    
    close all browsers
