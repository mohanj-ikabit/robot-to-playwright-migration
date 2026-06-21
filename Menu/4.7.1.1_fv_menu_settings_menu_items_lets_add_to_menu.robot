*** Settings ***
Default tags      fv_addmenuitem_letsaddtomenu
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/radio button.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot

*** Test Cases ***
App_login
    login pkg1
    
GoTo_LetsAddToTheMenu
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Click Element    xpath=//*[@href="/user/menu-settings/menu-items"]
    
NameOfTheDish_text_not_null
    Sleep   2s
    4_1_1_1_text_notnull    free-solo-demo
NameOfTheDish_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    free-solo-demo
NameOfTheDish_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    free-solo-demo
NameOfTheDish_text_minlength
    4_1_1_6_text_minlength    free-solo-demo     z
#NameOfTheDish_text_maxlength
    #4_1_1_7_text_maxlength    free-solo-demo     Like any other social media site Facebook has length requirements when it comes to writing on the wa
NameOfTheDish_text_maxlength_new
    4_1_1_7_text_maxlength_new    free-solo-demo   40
NameOfTheDish_text_pastable
    4_1_1_9_text_pastable    free-solo-demo
NameOfTheDish_text_spacebefore
    4_1_1_11_text_spacebefore    free-solo-demo
NameOfTheDish_text_spaceafter
    4_1_1_12_text_spaceafter    free-solo-demo
NameOfTheDish_text_default_value
    4_1_1_14_text_field_default_value    free-solo-demo    ${EMPTY}
NameOfTheDish_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    free-solo-demo
#NameOfTheDish_text_label
    #4_1_1_17_text_field_label    dishName-label    Enter Dish Name
NameOfTheDish_text_space_allowed
    4_1_1_18_text_field_space_allowed    free-solo-demo

#DishComesWith_text_not_null
    #4_1_1_1_text_notnull    dishComesWith
DishComesWith_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    dishComesWith
DishComesWith_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    dishComesWith
DishComesWith_text_minlength
    4_1_1_6_text_minlength    dishComesWith     z
#DishComesWith_text_maxlength
    #4_1_1_7_text_maxlength    dishComesWith     Like any other social media site Facebook has length requirements when it comes to writing on the wa
DishComesWith_text_maxlength_new
    4_1_1_7_text_maxlength_new    dishComesWith   40
DishComesWith_text_pastable
    4_1_1_9_text_pastable    dishComesWith
DishComesWith_text_spacebefore
    4_1_1_11_text_spacebefore    dishComesWith
DishComesWith_text_spaceafter
    4_1_1_12_text_spaceafter    dishComesWith
DishComesWith_text_default_value
    4_1_1_14_text_field_default_value   dishComesWith-label    Enter Dish Name
DishComesWith_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    dishComesWith
DishComesWith_text_label
    4_1_1_17_text_field_label    dishComesWith-label    Enter Dish Name
DishComesWith_text_space_allowed
    4_1_1_18_text_field_space_allowed    dishComesWith

#Test checkbox functionality
#A La Certe
Menus_this_dish_is_apart_of_checkbox_default_unselected_Breakfast1
    checkbox should not be selected    Breakfast
Menus_this_dish_is_apart_of_checkbox_default_unselected_Breakfast
    4_1_8_1_checkbox_default_not_selected   Breakfast
Menus_this_dish_is_apart_of_select_checkbox_Breakfast2
    select checkbox     Breakfast
Menus_this_dish_is_apart_of_unselect_checkbox_Breakfast3
    unselect checkbox     Breakfast
Menus_this_dish_is_apart_of_checkbox_shd_notbe_selected_Breakfast4
    Checkbox Should Not Be Selected    Breakfast
Menus_this_dish_is_apart_of_checkbox_default_enabled_Breakfast
    4_1_8_5_checkbox_default_state_enabled     List-item-Thisdishispartof :Breakfast
Menus_this_dish_is_apart_of_checkbox_label_Breakfast
    4_1_8_7_checkbox_label     checkbox-list-label-Breakfast   Breakfast

#Alcoholic Beverages
Menus_this_dish_is_apart_of_checkbox_default_unselected_Alcoholic Beverages
    checkbox should not be selected    Alcoholic Beverages
Menus_this_dish_is_apart_of_checkbox_default_unselected_Accompaniment
    4_1_8_1_checkbox_default_not_selected    Alcoholic Beverages
Menus_this_dish_is_apart_of_select_checkbox_Alcoholic Beverages
    select checkbox     Alcoholic Beverages
Menus_this_dish_is_apart_of_unselect_checkbox_Alcoholic
    unselect checkbox     Alcoholic Beverages
Menus_this_dish_is_apart_of_checkbox_shd_notbe_selected_Alcoholic
    Checkbox Should Not Be Selected    Alcoholic Beverages
Menus_this_dish_is_apart_of_checkbox_default_enabled_Alcoholic Beverages
    4_1_8_5_checkbox_default_state_enabled     List-item-Thisdishispartof :Alcoholic Beverages
Menus_this_dish_is_apart_of_checkbox_label_Alcoholic Beverages
    4_1_8_7_checkbox_label     checkbox-list-label-Alcoholic Beverages    Alcoholic Beverages
    
########################################    
#Select few Checkboxes
Menus_this_dish_is_apart_of_select_checkbox_Breakfast
    select checkbox     Breakfast
Menus_this_dish_is_apart_of_select_checkbox_Lunch
    select checkbox     Lunch
Menus_this_dish_is_apart_of_select_checkbox_Dinner
    select checkbox     Dinner
    
#Unselect few  Checkboxes
Menus_this_dish_is_apart_of_unselect_checkbox_Breakfast
    unselect checkbox     Breakfast
Menus_this_dish_is_apart_of_unselect_checkbox_Lunch
    unselect checkbox     Lunch
Menus_this_dish_is_apart_of_unselect_checkbox_Dinner
    unselect checkbox     Dinner
  
#Verify labels of few checkboxes
Menus_this_dish_is_apart_of_label_Breakfast
    4_1_8_7_checkbox_label    checkbox-list-label-Breakfast    Breakfast
    Sleep  2s
Menus_this_dish_is_apart_of_label_Lunch
    4_1_8_7_checkbox_label    checkbox-list-label-Lunch    Lunch
Menus_this_dish_is_apart_of_label_Dinner
    4_1_8_7_checkbox_label    checkbox-list-label-Dinner    Dinner

#checkboxes should not be selected by default
# Menus_this_dish_is_apart_of_checkbox_shd_notbe_selected_ALaCarte
    # Checkbox Should Not Be Selected    Breakfast
Menus_this_dish_is_apart_of_checkbox_shd_notbe_selected_Breakfast
    Checkbox Should Not Be Selected    Breakfast
Menus_this_dish_is_apart_of_checkbox_shd_notbe_selected_Lunch
    Checkbox Should Not Be Selected    Brunch
Menus_this_dish_is_apart_of_checkbox_shd_notbe_selected_Dinner
    Checkbox Should Not Be Selected    Dinner   

#the 4_1_8_x keyword below uses id instead of name hence would fail
# Menus_this_dish_is_apart_of_default_not_selected_Breakfast
    # 4_1_8_1_checkbox_default_not_selected    checkbox-list-label-Breakfast  
# Menus_this_dish_is_apart_of_default_not_selected2
    # 4_1_8_1_checkbox_default_not_selected    checkbox-list-label-Brunch
# Menus_this_dish_is_apart_of_default_not_selected3
    # 4_1_8_1_checkbox_default_not_selected    checkbox-list-label-Dinner  
    
calories_numeric_field_zero
    Sleep   3s
    4_1_5_2_numeric_field_zero    calories
calories_numeric_field_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    calories
calories_numeric_field_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    calories
calories_numeric_field_no_splchars
    4_1_5_5_numeric_field_no_splchars    calories
calories_numeric_field_maxlength
    4_1_5_7_numeric_field_maxlength    calories    987654
calories_numeric_field_no_spaces
    4_1_5_8_numeric_field_no_spaces    calories
calories_numeric_field_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    calories
calories_numeric_field_pastable
    4_1_5_11_numeric_field_pastable    calories
calories_numeric_field_leading_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    calories
calories_numeric_field_spacebefore
    4_1_5_13_numeric_spacebefore       calories
calories_numeric_field_spaceafter
    4_1_5_14_numeric_spaceafter    calories
calories_numeric_field_default_value
    Press Keys  xpath=//*[@id="calories"]  CTRL+a  BACKSPACE
    4_1_5_15_numeric_field_default_value    calories    ${EMPTY}
calories_numeric_field_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    calories
# calories_numeric_field_label
    # 4_1_5_19_numeric_field_label    calories    Calories:   
    
ScrollElementIntoView1_checkbox_dishBelongsTo
    Scroll Element Into View      xpath=//*[@id="dishBelongsTo"] 
    Wait Until Element Is Visible       xpath=//*[@id="dishBelongsTo"] 
    
Menus_this_dish_is_apart_of1
    4_1_8_7_checkbox_label    checkbox-list-label-Breakfast   Breakfast
Menus_this_dish_is_apart_of2
    4_1_8_1_checkbox_default_not_selected    Breakfast
Menus_this_dish_is_apart_of3
    4_1_8_7_checkbox_label     checkbox-list-label-Lunch    Lunch
Menus_this_dish_is_apart_of4
    4_1_8_1_checkbox_default_not_selected    Lunch
Menus_this_dish_is_apart_of5
    4_1_8_7_checkbox_label    checkbox-list-label-Dinner    Dinner
Menus_this_dish_is_apart_of
    4_1_8_1_checkbox_default_not_selected    Dinner 

ScrollElementIntoView2_checkbox_ingredOne1
    Scroll Element Into View     xpath=//*[@id="dishBelongsTo"] 
    Wait Until Element Is Visible       xpath=//*[@id="dishBelongsTo"] 

Categories_This_Dish_Belongs_To_default
    Sleep   2s
    #4_1_6_1_DDL_LB_Default     //*[@id="dishBelongsTo"] 
    #4_1_6_1_DDL_LB_Default     dishBelongsTo
#Categories_This_Dish_Belongs_To_list
    #4_1_6_2_DDL_LB_value_list    //*[@id="dishBelongsTo"] 
#Categories_This_Dish_Belongs_To_select_value
    #4_1_6_3_DDL_LB_select_value     //*[@id="dishBelongsTo"] 
    #click element    xpath=//*[@id="dishBelongsTo"]
    #click Element       xpath=//*[contains(text(),'skillets')]  
    #4_1_6_3_DDL_LB_select_value     dishBelongsTo
#Categories_This_Dish_Belongs_To_order
    #4_1_6_5_DDL_LB_order    dishBelongsTo
Categories_This_Dish_Belongs_To_view_size
    4_1_6_7_DDL_LB_view_size    dishBelongsTo
Categories_This_Dish_Belongs_To_wider_than_list_size
    4_1_6_8_DDL_LB_content_wider_than_list_size    dishBelongsTo
#Categories_This_Dish_Belongs_To_no_multi_selection
    #4_1_6_9_DDL_no_multi_selection    dishBelongsTo
#Categories_This_Dish_Belongs_To_label
    #4_1_6_11_DDL_LB_field_label    dishBelongsTo    Categories This Dish Belongs To?*

#Reload_page
    #reload page
    Sleep  2s
ScrollElementIntoView2_checkbox_ingredOne
    #Scroll Element Into View     xpath=//*[@id="costByPortionOnePortionCheck"] 
    Sleep   2s
    Scroll Element Into View     xpath=//*[@id="ingredOne"] 
    
PickMainIngredients_1_text_notnull
    Sleep   2s
    4_1_1_1_text_notnull    ingredOne
PickMainIngredients_1_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    ingredOne
PickMainIngredients_1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    ingredOne
PickMainIngredients_1_text_minlength
    4_1_1_6_text_minlength    ingredOne     z
PickMainIngredients_1_text_maxlength_new
    4_1_1_7_text_maxlength_new    ingredOne     30
PickMainIngredients_1_text_pastable
    4_1_1_9_text_pastable    ingredOne
PickMainIngredients_1_text_spacebefore
    4_1_1_11_text_spacebefore    ingredOne
PickMainIngredients_1_text_spaceafter
    4_1_1_12_text_spaceafter    ingredOne
PickMainIngredients_1_text_default_value
    4_1_1_14_text_field_default_value    ingredOne-label    Ex: Mixed Greens
PickMainIngredients_1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    ingredOne
PickMainIngredients_1_text_label
    4_1_1_17_text_field_label    ingredOne-label    Ex: Mixed Greens
PickMainIngredients_1_text_space_allowed
    4_1_1_18_text_field_space_allowed    ingredOne

PickMainIngredients_2_text_notnull
    Scroll Element Into View     xpath=//*[@id="costByPortionOnePortionCheck"] 
    4_1_1_1_text_notnull    ingredTwo
PickMainIngredients_2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    ingredTwo
PickMainIngredients_2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    ingredTwo
PickMainIngredients_2_text_minlength
    4_1_1_6_text_minlength    ingredTwo     z
PickMainIngredients_2_text_maxlength_new
    4_1_1_7_text_maxlength_new    ingredTwo     30
PickMainIngredients_2_text_pastable
    4_1_1_9_text_pastable    ingredTwo
PickMainIngredients_2_text_spacebefore
    4_1_1_11_text_spacebefore    ingredTwo
PickMainIngredients_2_text_spaceafter
    4_1_1_12_text_spaceafter    ingredTwo
PickMainIngredients_2_text_default_value
    4_1_1_14_text_field_default_value    ingredTwo-label    Ex: Feta Cheese
PickMainIngredients_2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    ingredTwo
PickMainIngredients_2_text_label
    4_1_1_17_text_field_label    ingredTwo-label    Ex: Feta Cheese
PickMainIngredients_2_text_space_allowed
    4_1_1_18_text_field_space_allowed    ingredTwo

PickMainIngredients_3_text_notnull
    Sleep   2s
    4_1_1_1_text_notnull    ingredThree
PickMainIngredients_3_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    ingredThree
PickMainIngredients_3_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    ingredThree
PickMainIngredients_3_text_minlength
    4_1_1_6_text_minlength    ingredThree     z
PickMainIngredients_3_text_maxlength_new
    4_1_1_7_text_maxlength_new    ingredThree     30
PickMainIngredients_3_text_pastable
    4_1_1_9_text_pastable    ingredThree
PickMainIngredients_3_text_spacebefore
    4_1_1_11_text_spacebefore    ingredThree
PickMainIngredients_3_text_spaceafter
    4_1_1_12_text_spaceafter    ingredThree
PickMainIngredients_3_text_default_value
    4_1_1_14_text_field_default_value    ingredThree-label    Ex: Seasame Seeds
PickMainIngredients_3_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    ingredThree
PickMainIngredients_3_text_label
    4_1_1_17_text_field_label    ingredThree-label    Ex: Seasame Seeds
PickMainIngredients_3_text_space_allowed
    4_1_1_18_text_field_space_allowed    ingredThree

PickMainIngredients_4_text_notnull
    4_1_1_1_text_notnull    ingredFour
PickMainIngredients_4_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    ingredFour
PickMainIngredients_4_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    ingredFour
PickMainIngredients_4_text_minlength
    4_1_1_6_text_minlength    ingredFour     z
PickMainIngredients_4_text_maxlength_new
    4_1_1_7_text_maxlength_new    ingredFour     30
PickMainIngredients_4_text_pastable
    4_1_1_9_text_pastable    ingredFour
PickMainIngredients_4_text_spacebefore
    4_1_1_11_text_spacebefore    ingredFour
PickMainIngredients_4_text_spaceafter
    4_1_1_12_text_spaceafter    ingredFour
PickMainIngredients_4_text_default_value
    4_1_1_14_text_field_default_value    ingredFour-label    Ex: Strawberries
PickMainIngredients_4_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    ingredFour
PickMainIngredients_4_text_label
    4_1_1_17_text_field_label    ingredFour-label    Ex: Strawberries
PickMainIngredients_4_text_space_allowed
    4_1_1_18_text_field_space_allowed    ingredFour

PickMainIngredients_5_text_notnull
    Sleep   2s
    4_1_1_1_text_notnull    ingredFive
PickMainIngredients_5_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    ingredFive
PickMainIngredients_5_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    ingredFive
PickMainIngredients_5_text_minlength
    4_1_1_6_text_minlength    ingredFive     z
PickMainIngredients_5_text_maxlength_new
    4_1_1_7_text_maxlength_new    ingredFive     30
PickMainIngredients_5_text_pastable
    4_1_1_9_text_pastable    ingredFive
PickMainIngredients_5_text_spacebefore
    4_1_1_11_text_spacebefore    ingredFive
PickMainIngredients_5_text_spaceafter
    4_1_1_12_text_spaceafter    ingredFive
PickMainIngredients_5_text_default_value
    4_1_1_14_text_field_default_value    ingredFive-label    Ex: Candied Walnuts
PickMainIngredients_5_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    ingredFive
PickMainIngredients_5_text_label
    4_1_1_17_text_field_label    ingredFive-label    Ex: Candied Walnuts
PickMainIngredients_5_text_space_allowed
    4_1_1_18_text_field_space_allowed    ingredFive
   
CanThisBeMadeOptional_radio1_default_selected
    Scroll Element Into View     xpath=//*[@id="anotherEntry2"] 
    4_1_9_2_radio_button_default_selected    ingredOneOptional    No
CanThisBeMadeOptional_radio1_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    ingredOneOptional    Yes    No
CanThisBeMadeOptional_radio1_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredOneOptional
CanThisBeMadeOptional_radio1_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredOneOptionalYes
CanThisBeMadeOptional_radio1_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredOneOptionalNo
   
CanThisBeMadeOptional_radio2_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    ingredTwoOptional    No
CanThisBeMadeOptional_radio2_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    ingredTwoOptional    Yes    No
CanThisBeMadeOptional_radio2_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredTwoOptional
CanThisBeMadeOptional_radio2_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredTwoOptionalYes
CanThisBeMadeOptional_radio2_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredTwoOptionalNo

CanThisBeMadeOptional_radio3_default_selected
    4_1_9_2_radio_button_default_selected    ingredThreeOptional    No
CanThisBeMadeOptional_radio3_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    ingredThreeOptional    Yes    No
CanThisBeMadeOptional_radio3_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredThreeOptional
CanThisBeMadeOptional_radio3_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredThreeOptionalYes
CanThisBeMadeOptional_radio3_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredThreeOptionalNo
    
CanThisBeMadeOptional_radio4_default_selected
    4_1_9_2_radio_button_default_selected    ingredFourOptional    No
CanThisBeMadeOptional_radio4_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    ingredFourOptional    Yes    No
CanThisBeMadeOptional_radio4_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredFourOptional
CanThisBeMadeOptional_radio4_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredFourOptionalYes
CanThisBeMadeOptional_radio4_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredFourOptionalNo
    
CanThisBeMadeOptional_radio5_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    ingredFiveOptional    No
CanThisBeMadeOptional_radio5_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    ingredFiveOptional    Yes    No
CanThisBeMadeOptional_radio5_radiogroup_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredFiveOptional
CanThisBeMadeOptional_radio5_name1_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredFiveOptionalYes
CanThisBeMadeOptional_radio5_name2_state_enabled
    4_1_9_5_radio_button_default_state_enabled    ingredFiveOptionalNo

#Would_You_Like_To_Add_Any_Additional_Description
Additional_Desc_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    filled-multiline-flexible
Additional_Desc_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    filled-multiline-flexible
Additional_Desc_text_minlength
    4_1_1_6_text_minlength    filled-multiline-flexible     z
Additional_Desc_text_maxlength
    4_1_1_7_text_maxlength    filled-multiline-flexible     Like any other social media site Facebook has length requirements when it comes to writing on the wa
Additional_Desc_text_maxlength_new
    4_1_1_7_text_maxlength_new   filled-multiline-flexible   200
Additional_Desc_text_pastable
    4_1_1_9_text_pastable   filled-multiline-flexible
# Additional_Desc_text_spacebefore
    # 4_1_1_11_text_spacebefore    filled-multiline-flexible
# Additional_Desc_text_spaceafter
    # 4_1_1_12_text_spaceafter    filled-multiline-flexible
Additional_Desc_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    filled-multiline-flexible
Additional_Desc_text_space_allowed
    4_1_1_18_text_field_space_allowed    filled-multiline-flexible
        
#OnePortionSize_default_is_selected
    #4_1_8_2_checkbox_default_is_selected   costByPortionOnePortionCheck
#OnePortionSize_default_state_enabled
    #4_1_8_5_checkbox_default_state_enabled    costByPortionOnePortionCheck
#OnePortionSize_label
    #4_1_8_7_checkbox_label    costByPortionOnePortionCheckLabel    One Portion Size
#OnePortionSize_checkbox_attribute_label
    #4_1_8_8_checkbox_button_attribute   costByPortionOnePortionCheckLabel    label    One Portion Size
    
ScrollElementIntoView_glutenFree
    sleep    2s
    Scroll Element Into View     xpath=//*[@id="costByPortionOnePortionCheck"] 
    #click element   xpath=//*[@id="anotherEntry1"]
    sleep  2s

#Verify that the cost per portion is disabled by default, because Checkbox - One Portion Size, is selected by default.
# CostByPortionSize_text0_default_state_enabled
    # 4_1_1_15_text_field_default_state_enabled    costPortionTextBox0
    #4_1_1_16_text_field_default_state_disabled   costPortionTextBox0
CostByPortionSize_text1_default_state_disabled
    #4_1_1_15_text_field_default_state_enabled    costPortionTextBox1
    4_1_1_16_text_field_default_state_disabled   costPortionTextBox0

CostByPortionSize_dollars0_numeric_default_state_enabled1
    Sleep   2s
    4_1_5_16_numeric_field_default_state_enabled    costPortionDollars0
    #4_1_5_17_numeric_field_default_state_disabled    costPortionDollars0
#CostByPortionSize_dollars1_numeric_default_state_disabled
    #4_1_5_16_numeric_field_default_state_enabled    costPortionDollars1
    #4_1_5_17_numeric_field_default_state_disabled    costPortionDollars1

#CostByPortionSize_cents0_numeric_default_state_disabled
    #4_1_5_16_numeric_field_default_state_enabled    costPortionCents0
    #4_1_5_17_numeric_field_default_state_disabled    costPortionCents0
#CostByPortionSize_cents1_numeric_default_state_disabled
    #4_1_5_16_numeric_field_default_state_enabled    costPortionCents1
    #4_1_5_17_numeric_field_default_state_disabled    costPortionCents1

SelectCheckbox_costByPortionOnePortionCheck_enable_fields_under_it
    Unselect Checkbox       xpath=//*[@id="costByPortionOnePortionCheck"] 
    
CostByPortionSize_text0_splchar_allowed
    4_1_1_2_text_splchar_allowed    costPortionTextBox0
CostByPortionSize_text0_numbers_allowed
    4_1_1_4_text_numbers_allowed    costPortionTextBox0
CostByPortionSize_text0_minlength
    4_1_1_6_text_minlength    costPortionTextBox0     z
CostByPortionSize_text0_maxlength
    4_1_1_7_text_maxlength    costPortionTextBox0     Like any other social media site Facebook has length requirements when it comes.
CostByPortionSize_text0_maxlength_new
    4_1_1_7_text_maxlength_new    costPortionTextBox0   80
CostByPortionSize_text0_pastable
    4_1_1_9_text_pastable    costPortionTextBox0
CostByPortionSize_text0_spacebefore
    4_1_1_11_text_spacebefore    costPortionTextBox0
CostByPortionSize_text0_spaceafter
    4_1_1_12_text_spaceafter    costPortionTextBox0
CostByPortionSize_text0_default_value
    4_1_1_14_text_field_default_value   costPortionTextBox0-label    Ex: Large
CostByPortionSize_text0_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    costPortionTextBox0
CostByPortionSize_text0_label
    4_1_1_17_text_field_label    costPortionTextBox0-label    Ex: Large
CostByPortionSize_text0_space_allowed
    4_1_1_18_text_field_space_allowed    costPortionTextBox0
 
    
#CostByPortionSize_text1_splchar_allowed
    Sleep   2s
    #4_1_1_2_text_splchar_allowed    costPortionTextBox1
#CostByPortionSize_text1_numbers_allowed
    #4_1_1_4_text_numbers_allowed    costPortionTextBox1
#CostByPortionSize_text1_minlength
    #4_1_1_6_text_minlength    costPortionTextBox1     z
#CostByPortionSize_text1_maxlength
    #4_1_1_7_text_maxlength    costPortionTextBox1     Like any other social media site Facebook has length requirements when it comes. 
#CostByPortionSize_text1_maxlength_new
    #4_1_1_7_text_maxlength_new    costPortionTextBox1   80
#CostByPortionSize_text1_pastable
    #4_1_1_9_text_pastable    costPortionTextBox1
#CostByPortionSize_text1_spacebefore
    #4_1_1_11_text_spacebefore    costPortionTextBox1
#CostByPortionSize_text1_spaceafter
    #4_1_1_12_text_spaceafter    costPortionTextBox1
#CostByPortionSize_text1_default_value
    #4_1_1_14_text_field_default_value   costPortionTextBox1-label    Ex: Large
#CostByPortionSize_text1_default_state_enabled
    #4_1_1_15_text_field_default_state_enabled    costPortionTextBox1
#CostByPortionSize_text1_label
    #4_1_1_17_text_field_label    costPortionTextBox1-label    Ex: Large
#CostByPortionSize_text1_space_allowed
    #4_1_1_18_text_field_space_allowed    costPortionTextBox1
    
CostByPortionSize_dollars0_numeric_zero_allowed
    4_1_5_2_numeric_field_zero    costPortionDollars0
CostByPortionSize_dollars0_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    costPortionDollars0
CostByPortionSize_dollars0_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    costPortionDollars0
CostByPortionSize_dollars0_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    costPortionDollars0
CostByPortionSize_dollars0_numeric_minlength
    4_1_5_6_numeric_field_minlength    costPortionDollars0    1
CostByPortionSize_dollars0_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    costPortionDollars0    123
CostByPortionSize_dollars0_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    costPortionDollars0
CostByPortionSize_dollars0_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    costPortionDollars0
CostByPortionSize_dollars0_numeric_pastable
    4_1_5_11_numeric_field_pastable    costPortionDollars0
CostByPortionSize_dollars0_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    costPortionDollars0
CostByPortionSize_dollars0_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       costPortionDollars0
CostByPortionSize_dollars0_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    costPortionDollars0
CostByPortionSize_dollars0_numeric_default_value
    Press Keys  xpath=//*[@id="costPortionDollars0"]  CTRL+a  BACKSPACE
    4_1_5_15_numeric_field_default_value    costPortionDollars0    ${EMPTY}
CostByPortionSize_dollars0_numeric_default_state_enabled
    press keys 
    4_1_5_16_numeric_field_default_state_enabled    costPortionDollars0
    #4_1_5_17_numeric_field_default_state_disabled    costPortionDollars0
CostByPortionSize_dollars0_numeric_label
    #4_1_5_18_numeric_field_not_null    costPortionDollars0
    4_1_5_19_numeric_field_label    costPortionDollars0-label    
    #4_1_1_20_text_field_attribute    costPortionDollars0    placeholder    $

#CostByPortionSize_dollars1_numeric_zero_allowed
    Sleep   2s
    #4_1_5_2_numeric_field_zero    costPortionDollars1
#CostByPortionSize_dollars1_numeric_not_lt_zero
    #4_1_5_3_numeric_field_not_lt_zero    costPortionDollars1
#CostByPortionSize_dollars1_numeric_no_alphabets
    #4_1_5_4_numeric_field_no_alphabets    costPortionDollars1
#CostByPortionSize_dollars1_numeric_no_splchars
    #4_1_5_5_numeric_field_no_splchars    costPortionDollars1
#CostByPortionSize_dollars1_numeric_minlength
    #4_1_5_6_numeric_field_minlength    costPortionDollars1    1
#CostByPortionSize_dollars1_numeric_maxlength
    #4_1_5_7_numeric_field_maxlength    costPortionDollars1    123
#CostByPortionSize_dollars1_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    costPortionDollars0
#CostByPortionSize_dollars1_numeric_decimal_not_permitted
    #4_1_5_10_numeric_field_decimal_not_permitted    costPortionDollars1
#CostByPortionSize_dollars1_numeric_pastable
    #4_1_5_11_numeric_field_pastable    costPortionDollars1
#CostByPortionSize_dollars1_numeric_zeroes_stripped
    #4_1_5_12_numeric_leading_zeroes_stripped    costPortionDollars1
#CostByPortionSize_dollars1_numeric_spacebefore
    #4_1_5_13_numeric_spacebefore       costPortionDollars1
#CostByPortionSize_dollars1_numeric_spaceafter
    #4_1_5_14_numeric_spaceafter    costPortionDollars1
#CostByPortionSize_dollars1_numeric_default_value
    #4_1_5_15_numeric_field_default_value    costPortionDollars1    ${EMPTY}
#CostByPortionSize_dollars1_numeric_default_state_enabled
   #4_1_5_16_numeric_field_default_state_enabled    costPortionDollars1
    #4_1_5_17_numeric_field_default_state_disabled    costPortionDollars1
#CostByPortionSize_dollars1_numeric_label
    #4_1_5_18_numeric_field_not_null    costPortionDollars1
    #4_1_5_19_numeric_field_label    costPortionDollars1-label    $
    #4_1_1_20_text_field_attribute    costPortionDollars1    placeholder    $

CostByPortionSize_cents0_numeric_zero_allowed
    4_1_5_2_numeric_field_zero    costPortionCents0
CostByPortionSize_cents0_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    costPortionCents0
CostByPortionSize_cents0_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    costPortionCents0
CostByPortionSize_cents0_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    costPortionCents0
CostByPortionSize_cents0_numeric_minlength
    4_1_5_6_numeric_field_minlength    costPortionCents0    01
CostByPortionSize_cents0_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    costPortionCents0    99
CostByPortionSize_cents0_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    costPortionCents0
CostByPortionSize_cents0_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    costPortionCents0
CostByPortionSize_cents0_numeric_pastable
    4_1_5_11_numeric_field_pastable    costPortionCents0
CostByPortionSize_cents0_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    costPortionCents0
CostByPortionSize_cents0_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       costPortionCents0
CostByPortionSize_cents0_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    costPortionCents0
CostByPortionSize_cents0_numeric_default_value
    Press Keys  xpath=//*[@id="costPortionCents0"]  CTRL+a  BACKSPACE
    4_1_5_15_numeric_field_default_value    costPortionCents0    ${EMPTY}
CostByPortionSize_cents0_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    costPortionCents0
    #4_1_5_17_numeric_field_default_state_disabled    costPortionCents0
CostByPortionSize_cents0_numeric_label
    #4_1_5_18_numeric_field_not_null    costPortionCents0
    4_1_5_19_numeric_field_label    costPortionCents0-label    cents
    #4_1_1_20_text_field_attribute    costPortionCents0    placeholder    cents

#CostByPortionSize_cents1_numeric_zero_allowed
    Sleep   2s
    #4_1_5_2_numeric_field_zero    costPortionCents1
#CostByPortionSize_cents1_numeric_not_lt_zero
    #4_1_5_3_numeric_field_not_lt_zero    costPortionCents1
#CostByPortionSize_cents1_numeric_no_alphabets
    #4_1_5_4_numeric_field_no_alphabets    costPortionCents1
#CostByPortionSize_cents1_numeric_no_splchars
    #4_1_5_5_numeric_field_no_splchars    costPortionCents1
#CostByPortionSize_cents1_numeric_minlength
    #4_1_5_6_numeric_field_minlength    costPortionCents1    01
#CostByPortionSize_cents1_numeric_maxlength
    #4_1_5_7_numeric_field_maxlength    costPortionCents1    99
#CostByPortionSize_cents1_numeric_no_spaces
    #4_1_5_8_numeric_field_no_spaces    costPortionCents1
#CostByPortionSize_cents1_numeric_decimal_not_permitted
    #4_1_5_10_numeric_field_decimal_not_permitted    costPortionCents1
#CostByPortionSize_cents1_numeric_pastable
    #4_1_5_11_numeric_field_pastable    costPortionCents1
#CostByPortionSize_cents1_numeric_zeroes_stripped
    #4_1_5_12_numeric_leading_zeroes_stripped    costPortionCents1
#CostByPortionSize_cents1_numeric_spacebefore
    #4_1_5_13_numeric_spacebefore       costPortionCents1
#CostByPortionSize_cents1_numeric_spaceafter
    #4_1_5_14_numeric_spaceafter    costPortionCents1
#CostByPortionSize_cents1_numeric_default_value
    #4_1_5_15_numeric_field_default_value    costPortionCents1    ${EMPTY}
#CostByPortionSize_cents1_numeric_default_state_enabled
    #4_1_5_16_numeric_field_default_state_enabled    costPortionCents1
    #4_1_5_17_numeric_field_default_state_disabled    costPortionCents1
#CostByPortionSize_cents1_numeric_label
    #4_1_5_18_numeric_field_not_null    costPortionCents1
#    4_1_5_19_numeric_field_label    costPortionCents1-label    cents
#    #4_1_1_20_text_field_attribute    costPortionCents1    placeholder    cents

DishIs_lowcarb_default_not_selected
    4_1_8_1_checkbox_default_not_selected    lowCarb
DishIs_lowcarb_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    lowCarb
DishIs_lowcarb_label
    4_1_8_7_checkbox_label    lowCarbLabel    Low Carb
#DishIs_lowcarb_checkbox_attribute_label
    #value of the element fetched None
    #4_1_8_8_checkbox_button_attribute   lowCarbLabel    value    Low Carb

DishIs_ketoFriendly_default_not_selected
    4_1_8_1_checkbox_default_not_selected    ketoFriendly
DishIs_ketoFriendly_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    ketoFriendly
DishIs_ketoFriendly_label
    4_1_8_7_checkbox_label    ketoFriendlyLabel    Keto Friendly
    
DishIs_southBeachDiet_default_not_selected
    4_1_8_1_checkbox_default_not_selected    southBeachDiet
DishIs_southBeachDiet_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    southBeachDiet
DishIs_southBeachDiet_label
    4_1_8_7_checkbox_label    southBeachDietLabel    South Beach Diet

DishIs_highProtein_default_not_selected
    4_1_8_1_checkbox_default_not_selected    highProtein
DishIs_highProtein_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    highProtein
DishIs_highProtein_label
    4_1_8_7_checkbox_label    highProteinLabel     High Protein

DishIs_atkinsFriendly_default_not_selected
    4_1_8_1_checkbox_default_not_selected    atkinsFriendly
DishIs_atkinsFriendly_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    atkinsFriendly
DishIs_atkinsFriendly_label
    4_1_8_7_checkbox_label    atkinsFriendlyLabel    Atkins Friendly

DishIs_rawFoodDiet_default_not_selected
    Sleep   2s
    4_1_8_1_checkbox_default_not_selected    rawFoodDiet
DishIs_rawFoodDiet_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    rawFoodDiet
DishIs_rawFoodDiet_label
    4_1_8_7_checkbox_label    rawFoodDietLabel    Raw Food Diet

DishIs_paleoFriendly_default_not_selected
    4_1_8_1_checkbox_default_not_selected    paleoFriendly
DishIs_paleoFriendly_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    paleoFriendly
DishIs_paleoFriendly_label
    4_1_8_7_checkbox_label    paleoFriendlyLabel    Paleo Friendly

DishIs_weightWatchers_default_not_selected
    4_1_8_1_checkbox_default_not_selected    weightWatchers
DishIs_weightWatchers_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    weightWatchers
DishIs_weightWatchers_label
    4_1_8_7_checkbox_label    weightWatchersLabel    Weight Watchers

DishIs_mediterraneanDiet_default_not_selected
    4_1_8_1_checkbox_default_not_selected    mediterraneanDiet
DishIs_mediterraneanDiet_default_state_enabled
    4_1_8_5_checkbox_default_state_enabled    mediterraneanDiet
DishIs_mediterraneanDiet_label
    4_1_8_7_checkbox_label    mediterraneanDietLabel    Mediterranean Diet

Extra_Additions1_text_splchar_allowed
    Sleep   2s
    4_1_1_2_text_splchar_allowed    extraAdditionsTextBox1
Extra_Additions1_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    extraAdditionsTextBox1
Extra_Additions1_text_minlength
    4_1_1_6_text_minlength    extraAdditionsTextBox1     z
Extra_Additions1_text_maxlength
    4_1_1_7_text_maxlength    extraAdditionsTextBox1     Like any other social media site Facebook has length requirements when it comes to writing on the wa
Extra_Additions1_text_maxlength_new
    4_1_1_7_text_maxlength_new    extraAdditionsTextBox1   80
Extra_Additions1_text_pastable
    4_1_1_9_text_pastable    extraAdditionsTextBox1
Extra_Additions1_text_spacebefore
    4_1_1_11_text_spacebefore    extraAdditionsTextBox1
Extra_Additions1_text_spaceafter
    4_1_1_12_text_spaceafter    extraAdditionsTextBox1
Extra_Additions1_text_default_value
    4_1_1_14_text_field_default_value   extraAdditionsTextBox1-label    Ex: Add Organic Chicken Breast
Extra_Additions1_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    extraAdditionsTextBox1
Extra_Additions1_text_label
    4_1_1_17_text_field_label    extraAdditionsTextBox1-label    Ex: Add Organic Chicken Breast
Extra_Additions1_text_space_allowed
    4_1_1_18_text_field_space_allowed    extraAdditionsTextBox1
  
Extra_Additions2_text_splchar_allowed
    4_1_1_2_text_splchar_allowed    extraAdditionsTextBox2
Extra_Additions2_text_numbers_allowed
    4_1_1_4_text_numbers_allowed    extraAdditionsTextBox2
Extra_Additions2_text_minlength
    4_1_1_6_text_minlength    extraAdditionsTextBox2     z
Extra_Additions2_text_maxlength
    4_1_1_7_text_maxlength    extraAdditionsTextBox2     Like any other social media site Facebook has length requirements when it comes to writing on the wa
Extra_Additions2_text_maxlength_new
    4_1_1_7_text_maxlength_new    extraAdditionsTextBox2   80
Extra_Additions2_text_pastable
    4_1_1_9_text_pastable    extraAdditionsTextBox2
Extra_Additions2_text_spacebefore
    4_1_1_11_text_spacebefore    extraAdditionsTextBox2
Extra_Additions2_text_spaceafter
    4_1_1_12_text_spaceafter    extraAdditionsTextBox2
Extra_Additions2_text_default_value
    4_1_1_14_text_field_default_value   extraAdditionsTextBox2-label    Ex: Add Organic Chicken Breast
Extra_Additions2_text_default_state_enabled
    4_1_1_15_text_field_default_state_enabled    extraAdditionsTextBox2
Extra_Additions2_text_label
    4_1_1_17_text_field_label    extraAdditionsTextBox2-label    Ex: Add Organic Chicken Breast
Extra_Additions2_text_space_allowed
    4_1_1_18_text_field_space_allowed    extraAdditionsTextBox2

Extra_Additions_dollars1_numeric_zero_allowed
    Sleep   2s
    4_1_5_2_numeric_field_zero    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_minlength
    4_1_5_6_numeric_field_minlength    extraAdditionsDollars1    1
Extra_Additions_dollars1_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    extraAdditionsDollars1    123
Extra_Additions_dollars1_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_pastable
    4_1_5_11_numeric_field_pastable    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       extraAdditionsDollars1
Extra_Additions_dollars1_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_default_value
    Press Keys  xpath=//*[@id="extraAdditionsDollars1"]  CTRL+a  BACKSPACE
    Element Attribute Value Should Be    xpath=//*[@id="extraAdditionsDollars1"]   value    ${EMPTY}
    #4_1_5_15_numeric_field_default_value    extraAdditionsDollars1    ${EMPTY}
Extra_Additions_dollars1_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    extraAdditionsDollars1
Extra_Additions_dollars1_numeric_label
    #4_1_5_18_numeric_field_not_null    extraAdditionsDollars1
    4_1_5_19_numeric_field_label    extraAdditionsDollars1-label    $
    #4_1_1_20_text_field_attribute    extraAdditionsDollars1    placeholder    $

Extra_Additions_dollars2_numeric_zero_allowed
    Sleep   2s
    4_1_5_2_numeric_field_zero    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_minlength
    4_1_5_6_numeric_field_minlength    extraAdditionsDollars2    1
Extra_Additions_dollars2_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    extraAdditionsDollars2    123
Extra_Additions_dollars2_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_pastable
    4_1_5_11_numeric_field_pastable    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       extraAdditionsDollars2
Extra_Additions_dollars2_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_default_value
    Press Keys  xpath=//*[@id="extraAdditionsDollars2"]  CTRL+a  BACKSPACE
    Element Attribute Value Should Be    xpath=//*[@id="extraAdditionsDollars2"]   value    ${EMPTY}
    #4_1_5_15_numeric_field_default_value    extraAdditionsDollars2    ${EMPTY}
Extra_Additions_dollars2_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    extraAdditionsDollars2
Extra_Additions_dollars2_numeric_label
    #4_1_5_18_numeric_field_not_null    extraAdditionsDollars2
    4_1_5_19_numeric_field_label    extraAdditionsDollars2-label    $
    #4_1_1_20_text_field_attribute    extraAdditionsDollars2    placeholder    $

Extra_Additions_cents1_numeric_zero_allowed
    4_1_5_2_numeric_field_zero    extraAdditionsCents1
Extra_Additions_cents1_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    extraAdditionsCents1
Extra_Additions_cents1_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    extraAdditionsCents1
Extra_Additions_cents1_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    extraAdditionsCents1
Extra_Additions_cents1_numeric_minlength
    4_1_5_6_numeric_field_minlength    extraAdditionsCents1    1
Extra_Additions_cents1_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    extraAdditionsCents1    99
Extra_Additions_cents1_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    extraAdditionsCents1
Extra_Additions_cents1_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    extraAdditionsCents1
Extra_Additions_cents1_numeric_pastable
    4_1_5_11_numeric_field_pastable    extraAdditionsCents1
Extra_Additions_cents1_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    extraAdditionsCents1
Extra_Additions_cents1_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       extraAdditionsCents1
Extra_Additions_cents1_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    extraAdditionsCents1
Extra_Additions_cents1_numeric_default_value
    Press Keys  xpath=//*[@id="extraAdditionsCents1"]  CTRL+a  BACKSPACE
    Element Attribute Value Should Be    xpath=//*[@id="extraAdditionsCents1"]   value    ${EMPTY}
    #4_1_5_15_numeric_field_default_value    extraAdditionsCents1    ${EMPTY}
Extra_Additions_cents1_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    extraAdditionsCents1
Extra_Additions_cents1_numeric_label
    #4_1_5_18_numeric_field_not_null    extraAdditionsCents1
    4_1_5_19_numeric_field_label    extraAdditionsCents1-label    cents
    #4_1_1_20_text_field_attribute    extraAdditionsCents1    placeholder    cents
    
Extra_Additions_cents2_numeric_zero_allowed
    Sleep   2s
    4_1_5_2_numeric_field_zero    extraAdditionsCents2
Extra_Additions_cents2_numeric_not_lt_zero
    4_1_5_3_numeric_field_not_lt_zero    extraAdditionsCents2
Extra_Additions_cents2_numeric_no_alphabets
    4_1_5_4_numeric_field_no_alphabets    extraAdditionsCents2
Extra_Additions_cents2_numeric_no_splchars
    4_1_5_5_numeric_field_no_splchars    extraAdditionsCents2
Extra_Additions_cents2_numeric_minlength
    4_1_5_6_numeric_field_minlength    extraAdditionsCents2    01
Extra_Additions_cents2_numeric_maxlength
    4_1_5_7_numeric_field_maxlength    extraAdditionsCents2    99
Extra_Additions_cents2_numeric_no_spaces
    4_1_5_8_numeric_field_no_spaces    extraAdditionsCents2
Extra_Additions_cents2_numeric_decimal_not_permitted
    4_1_5_10_numeric_field_decimal_not_permitted    extraAdditionsCents2
Extra_Additions_cents2_numeric_pastable
    4_1_5_11_numeric_field_pastable    extraAdditionsCents2
Extra_Additions_cents2_numeric_zeroes_stripped
    4_1_5_12_numeric_leading_zeroes_stripped    extraAdditionsCents2
Extra_Additions_cents2_numeric_spacebefore
    4_1_5_13_numeric_spacebefore       extraAdditionsCents2
Extra_Additions_cents2_numeric_spaceafter
    4_1_5_14_numeric_spaceafter    extraAdditionsCents2
Extra_Additions_cents2_numeric_default_value
    Press Keys  xpath=//*[@id="extraAdditionsCents2"]  CTRL+a  BACKSPACE
    Element Attribute Value Should Be    xpath=//*[@id="extraAdditionsCents2"]   value    ${EMPTY}
    #4_1_5_15_numeric_field_default_value        ${EMPTY}
Extra_Additions_cents2_numeric_default_state_enabled
    4_1_5_16_numeric_field_default_state_enabled    extraAdditionsCents2
Extra_Additions_cents2_numeric_label
    #4_1_5_18_numeric_field_not_null    extraAdditionsCents2
    4_1_5_19_numeric_field_label    extraAdditionsCents2-label    cents
    #4_1_1_20_text_field_attribute    extraAdditionsCents2    placeholder    cents
    
button_another_entry_right_name
    4_1_4_1_button_rightname_new    anotherEntry2    ADD MORE
button_another_entry_active
    4_1_4_2_button_active    anotherEntry2
button_another_entry_attribute_type
    4_1_4_6_button_attribute    anotherEntry2    type    button
#button_another_entry_attribute_label
    #4_1_4_6_button_attribute    anotherEntry    label     ADD MORE
    
    Scroll Element Into View     xpath=//*[@id="go-back"] 
    
DishCustomization_GlutenFree_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    glutenFree    No
DishCustomization_GlutenFree_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    glutenFree    Yes    No
DishCustomization_GlutenFree_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    glutenFree
DishCustomization_GlutenFree_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    glutenFreeYes
DishCustomization_GlutenFree_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    glutenFreeNo
DishCustomization_GlutenFree_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
DishCustomization_GlutenFree_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
DishCustomization_GlutenFree_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label   glutenFree    Gluten Free
    4_1_9_7_radio_label   label Gluten Free    Gluten Free
DishCustomization_GlutenFree_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Gluten Free    label    Gluten Free

DishCustomization_Vegetarian_default_selected
    4_1_9_2_radio_button_default_selected    vegetarian    No
DishCustomization_Vegetarian_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    vegetarian    Yes    No
DishCustomization_Vegetarian_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    vegetarian
DishCustomization_Vegetarian_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    vegetarianYes
DishCustomization_Vegetarian_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    vegetarianNo
DishCustomization_Vegetarian_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
DishCustomization_Vegetarian_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
DishCustomization_Vegetarian_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label   vegetarian    Vegetarian
    4_1_9_7_radio_label   label Vegetarian    Vegetarian
DishCustomization_Vegetarian_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Vegetarian    label    Vegetarian

DishCustomization_Eggarian_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    eggarian    No
DishCustomization_Eggarian_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    eggarian    Yes    No
DishCustomization_Eggarian_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    eggarian
DishCustomization_Eggarian_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    eggarianYes
DishCustomization_Eggarian_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    eggarianNo
DishCustomization_Eggarian_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
DishCustomization_Eggarian_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
DishCustomization_Eggarian_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label   eggarian    Eggarian
    4_1_9_7_radio_label   label Eggarian    Eggarian
DishCustomization_Eggarian_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Eggarian    label    Eggarian

DishCustomization_Vegan_default_selected
    4_1_9_2_radio_button_default_selected    vegan    No
DishCustomization_Vegan_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    vegan    Yes    No
DishCustomization_Vegan_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    vegan
DishCustomization_Vegan_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    veganYes
DishCustomization_Vegan_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    veganNo
DishCustomization_Vegan_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
DishCustomization_Vegan_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
DishCustomization_Vegan_label
    #Error "Yes No != <label>
    4_1_9_7_radio_label   label Vegan    Vegan
DishCustomization_Vegan_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Vegan    label    Vegan

AllergenInfo_HasSoyNuts_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    soyNuts    Yes
AllergenInfo_HasSoyNuts_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    soyNuts    Yes    No
AllergenInfo_HasSoyNuts_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    soyNuts
AllergenInfo_HasSoyNuts_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    soyNutsYes
AllergenInfo_HasSoyNuts_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    soyNutsNo
AllergenInfo_HasSoyNuts_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
AllergenInfo_HasSoyNuts_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
AllergenInfo_HasSoyNuts_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label    soyNuts    Has Soy/Nuts
    4_1_9_7_radio_label    label Has Soy/Nuts    Has Soy/Nuts
AllergenInfo_HasSoyNuts_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Has Soy/Nuts    label    Has Soy/Nuts

AllergenInfo_HasEggs_default_selected
    4_1_9_2_radio_button_default_selected    eggs    Yes
AllergenInfo_HasEggs_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    eggs    Yes    No
AllergenInfo_HasEggs_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    eggs
AllergenInfo_HasEggs_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    eggsYes
AllergenInfo_HasEggs_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    eggsNo
AllergenInfo_HasEggs_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
AllergenInfo_HasEggs_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
AllergenInfo_HasEggs_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label    eggs    Has Eggs
    4_1_9_7_radio_label    label Has Eggs    Has Eggs
AllergenInfo_HasEggs_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Has Eggs    label    Has Eggs

AllergenInfo_HasDairy_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    dairy    Yes
AllergenInfo_HasDairy_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    dairy    Yes    No
AllergenInfo_HasDairy_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    dairy
AllergenInfo_HasDairy_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    dairyYes
AllergenInfo_HasDairy_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    dairyNo
AllergenInfo_HasDairy_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
AllergenInfo_HasDairy_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
AllergenInfo_HasDairy_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label    dairy    Has Dairy
    4_1_9_7_radio_label    label Has Dairy    Has Dairy
AllergenInfo_HasDairy_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Has Dairy    label    Has Dairy
    
AllergenInfo_HasShellfish_default_selected
    4_1_9_2_radio_button_default_selected    shellfish    Yes
AllergenInfo_HasShellfish_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    shellfish    Yes    No
AllergenInfo_HasShellfish_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    shellfish
AllergenInfo_HasShellfish_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    shellfishYes
AllergenInfo_HasShellfish_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    shellfishNo
AllergenInfo_HasShellfish_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
AllergenInfo_HasShellfish_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
AllergenInfo_HasShellfish_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label    shellfish    Has Shellfish
    4_1_9_7_radio_label    label Has Shellfish    Has Shellfish
AllergenInfo_HasShellfish_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Has Shellfish    label    Has Shellfish
    
AllergenInfo_HasGluten_default_selected
    Sleep   2s
    4_1_9_2_radio_button_default_selected    gluten    Yes
AllergenInfo_HasGluten_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    gluten    Yes    No
AllergenInfo_HasGluten_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    gluten
AllergenInfo_HasGluten_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    glutenYes
AllergenInfo_HasGluten_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    glutenNo
AllergenInfo_HasGluten_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
AllergenInfo_HasGluten_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
AllergenInfo_HasGluten_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label   gluten    Has Gluten
    4_1_9_7_radio_label   label Has Gluten    Has Gluten
AllergenInfo_HasGluten_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Has Gluten    label    Has Gluten

AllergenInfo_HasSoy_default_selected
    4_1_9_2_radio_button_default_selected    soy    Yes
AllergenInfo_HasSoy_multiple_selection_not_allowed
    4_1_9_4_radio_button_multiple_selection_not_allowed    soy    Yes    No
AllergenInfo_HasSoy_radioGroup_enabled
    4_1_9_5_radio_button_default_state_enabled    soy
AllergenInfo_HasSoy_name1_enabled
    4_1_9_5_radio_button_default_state_enabled    soyYes
AllergenInfo_HasSoy_name2_enabled
    4_1_9_5_radio_button_default_state_enabled    soyNo
AllergenInfo_HasSoy_value1_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    Yes
AllergenInfo_HasSoy_value2_enabled
    4_1_9_5_radio_button_default_state_enabled_using_value    No
AllergenInfo_HasSoy_label
    #Error "Yes No != <label>
    #4_1_9_7_radio_label   soy    Has Soy
    4_1_9_7_radio_label   label Has Soy    Has Soy
AllergenInfo_HasSoy_attribute_label
    #Error "None != <label>
    4_1_9_8_radio_button_attribute     label Has Soy    label    Has Soy

button_save_&_add_another_right_name
    Sleep   2s
    4_1_4_1_button_rightname_new    go-back    SAVE & ADD ANOTHER
button_save_&_add_another_active
    4_1_4_2_button_active   go-back
button_save_&_add_another_attribute_type
    4_1_4_6_button_attribute    go-back    type    button
#button_save_&_add_another_attribute_label
    #4_1_4_6_button_attribute    go-back    label     SAVE & ADD ANOTHER

button_view_&_finalize_menu_right_name
    4_1_4_1_button_rightname_new    click-to-continue    VIEW & FINALIZE MENU
button_view_&_finalize_menu_active
    4_1_4_2_button_active   click-to-continue
button_view_&_finalize_menu_attribute_type
    4_1_4_6_button_attribute    click-to-continue    type    button
#button_view_&_finalize_menu_attribute_label
    #4_1_4_6_button_attribute    click-to-continue    label     VIEW & FINALIZE MENU

Text_Present_1
    4_1_10_1_text_present   Let's Add To Your Menu!
Text_Present_2
    4_1_10_1_text_present   Please Add The Dishes In Your Restaurant To The Menu.
Text_Present_3
    4_1_10_1_text_present   Name Of The Dish*
Text_Present_4
    4_1_10_1_text_present   Dish Comes With
Text_Present_5
    4_1_10_1_text_present   Calories:
Text_Present_6a
    4_1_10_1_text_present   Would You Like To Upload An
Text_Present_6b
    4_1_10_1_text_present   Image Of The Dish?
Text_Present_7    
    4_1_10_1_text_present   (JPEG and PNG images only, size 520px*240px dimensions)
Text_Present_8
    4_1_10_1_text_present   Menu(s) This Dish Is a Part Of?*
Text_Present_9
    4_1_10_1_text_present   Categories This Dish Belongs To?*
Text_Present_10
    4_1_10_1_text_present   Please Pick Upto 5 Main Ingredients In This Dish
# Text_Present_11
    # 4_1_10_1_text_present   Can This Be Made Optional?
Text_Present_12
    4_1_10_1_text_present   Would You Like To Add Any Additional Description For This Dish?
Text_Present_13
    4_1_10_1_text_present   Cost* By Portion Size
Text_Present_14
    4_1_10_1_text_present   This Dish Is
Text_Present_15
    4_1_10_1_text_present   Extra Additions
Text_Present_16
    4_1_10_1_text_present   Dish Customization* - Can This Dish Be Made ?
Text_Present_17
    4_1_10_1_text_present   Allergen Information*
    
Verify Footer Text
    [Documentation]    Verify that the footer contains the expected text and links.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Privacy Policy | Terms & Conditions
    Wait Until Page Contains    BUILT By Ikabit Inc | © Ikabit Inc. 2024
    Element Should Be Visible    xpath=//*[@id="footer-divider"]
Verify Footer Privacy Policy URL
    [Documentation]    Verify that the privacy policy link is correct and clickable.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Privacy Policy

Verify Footer Terms Conditions URL
    [Documentation]    Verify that the terms & conditions link is correct and clickable.
    Scroll Element Into View    xpath=//*[@id="footer-divider"]
    Wait Until Page Contains    Terms & Conditions

Verify Footer Ikabit URL
    [Documentation]    Verify that the Ikabit URL is correct 
    Scroll Element Into View    ${FOOTER_DIVIDER}
    Wait Until Page Contains    Ikabit Inc    timeout=10s
    Go Back   

    close browser

