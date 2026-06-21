*** Settings ***
Default Tags      menugtm
Library           SeleniumLibrary
Library            FakerLibrary
Library          String
Library            OperatingSystem
Library            Collections 
Resource           ../Resource/genericfunctions.robot
Suite Teardown    Close All Browsers

*** Test Cases ***
5.6.1.2_menu_settings_menu_items_let's_add_to_your_menu_missing_mandatory_field_Name_Of_The_Dish
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    leaving Name of the dish as blank
    sleep  2s
    #   Input text    xpath=//*[@id="dishName"]    onedish
    Scroll Element Into View    xpath=//*[@id="dishBelongsTo"]  
    #Scroll Element Into View    xpath=//*[@name="Breakfast"]
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*
    click element    xpath=//*[@id="List-box-Thisdishispartof"]
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element  xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    #click element    xpath=//*[@data-value="Kids Menu"]
    Scroll Element Into View     xpath=//*[@id="anotherEntry2"]  
    log to console    entering additional desc as This is going all to well to be in !@#$%^&*(12398756987
    Input text    xpath=//*[@name="dishAdditionalDesc"]    This is going all to well to be in !@#$%^&*(12398756987
    scroll element into view    xpath=//*[@id="lowCarbLabel"]
    log to console    unselecting the cost by portion checkbox
    click element    xpath=//*[@id="costByPortionOnePortionCheck"]
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    Scroll Element Into View     xpath=//*[@name="dishName"]
    ${r}    get text    xpath=//*[@name="dishName"]
    log to console    Error:${r}
    Sleep   2s   
    close browser
    
5.6.1.2_menu_settings_menu_items_let's_add_to_your_menu_missing_mandatory_field_Menu(s)_This_Dish_Is_a_Part_Of
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish 
    ${number} =  Generate Random String  3  [NUMBERS]
    Input text    xpath=//*[@id="free-solo-demo"]    dish3${number}    
    #    Scroll Element Into View    xpath=//*[@id="dishBelongsTo"]
    Scroll Element Into View    xpath=//*[@id="List-box-Thisdishispartof"]
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  is blank
    #    click element    xpath=//*[@name="Breakfast"]
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    Scroll Element Into View     xpath=//*[@id="anotherEntry2"]  
    log to console    entering additional desc as This is going all to well to be in !@#$%^&*(12398756987
    Input text    xpath=//*[@name="dishAdditionalDesc"]    This is going all to well to be in !@#$%^&*(12398756987
    scroll element into view    xpath=//*[@id="lowCarbLabel"]
    log to console    unselecting the cost by portion checkbox
    click element    xpath=//*[@id="costByPortionOnePortionCheck"]
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    #Scroll Element Into View     xpath=//*[@name="Breakfast"]
    Page Should Contain    Please atleast select a value    
    Log to Console     Please atleast select a value    
    close browser
    
5.6.1.2_menu_settings_menu_items_let's_add_to_your_menu_missing_mandatory_field_Menu(s)_Categories_This_Dish_Belongs_To
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish
    ${number} =  Generate Random String  3  [NUMBERS]
    Input text    xpath=//*[@id="free-solo-demo"]    onedish2${number}
    #    Scroll Element Into View    xpath=//*[@id="dishBelongsTo"]
    #Scroll Element Into View    xpath=//*[@name="Breakfast"]
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to. - blank
    #    click element    xpath=//*[@id="dishBelongsTo"]
    Scroll Element Into View     xpath=//*[@id="anotherEntry2"]   
    log to console    entering additional desc as This is going all to well to be in !@#$%^&*(12398756987
    Input text    xpath=//*[@name="dishAdditionalDesc"]    This is going all to well to be in !@#$%^&*(12398756987
    scroll element into view    xpath=//*[@id="lowCarbLabel"]
    log to console    unselecting the cost by portion checkbox
    click element    xpath=//*[@id="costByPortionOnePortionCheck"]
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    Scroll Element Into View      xpath=//*[@id="dishBelongsTo"]  
    Page Should Contain    Please atleast select a value    
    Log to Console     Please atleast select a value
    close browser
    
5.6.1.2_menu_settings_menu_items_let's_add_to_your_menu_missing_mandatory_field_Menu(s)_Cost
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish 
    ${number}   Generate Random String  3  [NUMBERS]
    Input text    xpath=//*[@id="free-solo-demo"]    onedish3${number}
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    sleep   2s
    click element     xpath=//*[@id="List-box-Thisdishispartof"]
    Sleep  2s
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    Scroll Element Into View     xpath=//*[@id="anotherEntry2"]  
    log to console    entering additional desc as  dish additional description
    Input text    xpath=//*[@name="dishAdditionalDesc"]    dish additional description
    scroll element into view    xpath=//*[@id="lowCarbLabel"]
    log to console    unselecting the cost by portion checkbox
    click element    xpath=//*[@id="costByPortionOnePortionCheck"]
    Sleep  2s
    Checkbox Should Not Be Selected    xpath=//*[@id="costByPortionOnePortionCheck"]
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    Scroll Element Into View      xpath=//*[@id="dishBelongsTo"]  
    Page Should Contain    Field cannot be empty 
    #Log to Console     Please atleast select a value
    close browser
    
5.6.1.3_menu_settings_menu_items_let's_add_to_your_menu_add_multiple_dishes1
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish
    ${number}    Generate Random String  3  [NUMBERS]
    Input text   xpath=//*[@id="free-solo-demo"]    Onedish${number}
    ${dishname}       Get Element Attribute     xpath=//*[@id="free-solo-demo"]    value
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    click element     xpath=//*[@id="List-box-Thisdishispartof"]
    Sleep  2s
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    log to console    entering Ingredients as Ingredient1, Ingredient2, Ingredient3, Ingredient4, Ingredient5, all set as optional
    Input text    xpath=//*[@id="ingredOne"]     Ingredient 1
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient 2
    Input text    xpath=//*[@id="ingredThree"]   Ingredient 3
    Input text    xpath=//*[@id="ingredFour"]    Ingredient 4
    Input text    xpath=//*[@id="ingredFive"]    Ingredient 5    
    log to console    entering additional desc as Additional Description 1!@#$
    Input text    xpath=//*[@name="dishAdditionalDesc"]    Additional Description 1!@#$
    log to console    unselecting the cost by portion checkbox
    Scroll Element Into View      xpath=//*[@id="lowCarbLabel"]
    Sleep   2s
    click element    xpath=//*[@id="costByPortionOnePortionCheck"] 
    sleep   2s
    click element    xpath=//*[@id="anotherEntry1"]
    sleep   2s
    click element    xpath=//*[@id="anotherEntry1"]
    sleep  2s
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    sleep   2s
    #click element    xpath=//*[@id="click-to-continue"]
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    sleep  2s
    click element      xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    sleep  2s
    scroll element into view    xpath=//*[@id="dish-${dishname}"] 
    Page Should Contain Element     xpath=//*[@id="dish-${dishname}"]      
    close browser
 
5.6.1.3_menu_settings_menu_items_let's_add_to_your_menu_add_multiple_dishes2
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish  
    ${number}    Generate Random String  3  [NUMBERS]
    Input text   xpath=//*[@id="free-solo-demo"]    onedish${number}
    ${dishname}       Get Element Attribute     xpath=//*[@id="free-solo-demo"]    value
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    click element     xpath=//*[@id="List-box-Thisdishispartof"]
    Sleep  2s
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    log to console    entering Ingredients as Ingredient1, Ingredient2, Ingredient3, Ingredient4, Ingredient5, all set as optional
    Input text    xpath=//*[@id="ingredOne"]     Ingredient 1
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient 2
    Input text    xpath=//*[@id="ingredThree"]   Ingredient 3
    Input text    xpath=//*[@id="ingredFour"]    Ingredient 4
    Input text    xpath=//*[@id="ingredFive"]    Ingredient 5    
    log to console    entering additional desc as Additional Description 1!@#$
    Input text    xpath=//*[@name="dishAdditionalDesc"]    Additional Description 1!@#$
    log to console    unselecting the cost by portion checkbox
    Scroll Element Into View      xpath=//*[@id="lowCarbLabel"]
    sleep   2s
    click element    xpath=//*[@id="costByPortionOnePortionCheck"] 
    sleep   2s
    click element    xpath=//*[@id="anotherEntry1"]
    sleep   2s
    click element    xpath=//*[@id="anotherEntry1"]
    sleep   2s
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    #click element    xpath=//*[@id="click-to-continue"]
    sleep  2s
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    sleep  2s
    click element     xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    sleep  2s 
    scroll element into view    xpath=//*[@id="dish-${dishname}"] 
    Page Should Contain Element     xpath=//*[@id="dish-${dishname}"]    
    close browser
 
5.6.1.3_menu_settings_menu_items_let's_add_to_your_menu_add_multiple_dishes3
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish
    ${number}    Generate Random String  3  [NUMBERS]
    Input text   xpath=//*[@id="free-solo-demo"]    onedish${number}
    ${dishname}       Get Element Attribute     xpath=//*[@id="free-solo-demo"]    value
    Set Global Variable     ${dishname}
    log to console    ${dishname}
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    click element     xpath=//*[@id="List-box-Thisdishispartof"]
    Sleep  2s
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    log to console    entering additional desc as Additional Description 1!@#$
    Input text    xpath=//*[@name="dishAdditionalDesc"]    Additional Description 1!@#$
    log to console    unselecting the cost by portion checkbox
    Scroll Element Into View      xpath=//*[@id="lowCarbLabel"]
    sleep   2s
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    sleep  2s
    #click element    xpath=//*[@id="click-to-continue"]
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    sleep  2s
    click element      xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]  
    sleep   2s
    scroll element into view    xpath=//*[@id="dish-${dishname}"] 
    Page Should Contain Element     xpath=//*[@id="dish-${dishname}"]     
    
#5.6.1.4_menu_settings_menu_items_let's_add_to_your_menu_view_menu
    #click element      xpath=//*[@href="/user/menu-settings/menu-items/view-menu"]
    #sleep  2s
    #page should contain      ${dishname}   
    #Set Global Variable     ${dishname}
    #log to console    ${dishname}
    
5.6.1.5_menu_settings_menu_items_let's_add_to_your_menu_edit_dish
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish
    ${number}    Generate Random String  3  [NUMBERS]
    Input text   xpath=//*[@id="free-solo-demo"]    onedish${number}
    ${dishname}       Get Element Attribute     xpath=//*[@id="free-solo-demo"]    value
    Set Global Variable     ${dishname}
    log to console    ${dishname}
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    click element     xpath=//*[@id="List-box-Thisdishispartof"]
    Sleep  2s
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    sleep  1s
    log to console    entering additional desc as Additional Description 1!@#$
    Input text    xpath=//*[@name="dishAdditionalDesc"]    Additional Description 1!@#$
    log to console    unselecting the cost by portion checkbox
    Scroll Element Into View      xpath=//*[@id="lowCarbLabel"]
    sleep   2s
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]
    #click element    xpath=//*[@id="click-to-continue"]
    click element      xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    sleep  2s
    Set Global Variable     ${dishname}
    scroll element into view    xpath=//*[@id="dish-${dishname}"] 
    click element    xpath=//*[@id="dish-${dishname}"]
    Page Should Contain    Let's Add To Your Menu!
    Scroll Element Into View      xpath=//*[@id="lowCarbLabel"] 
    sleep   2s
    Input text    xpath=//*[@id="ingredOne"]     Ingredient 1 edit
    #Wait Until Element Is Visible    xpath=//*[@id="yesPopUpCancelChanges0"]   
    #click element    xpath=//*[@id="yesPopUpCancelChanges0"]
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient 2 edit
    click element      xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    click element    xpath=//*[@id="yesPopUpCancelChanges1"]
    click element    xpath=//*[@id="go-back"]
    click element      xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    sleep  2s
    Set Global Variable     ${dishname}
    scroll element into view    xpath=//*[@id="dish-${dishname}"] 
    click element    xpath=//*[@id="dish-${dishname}"]
    Page Should Contain    Let's Add To Your Menu!
    Scroll Element Into View      xpath=//*[@id="lowCarbLabel"]
    #Page Should Contain    Ingredient 1 edit
    #Page Should Contain    Ingredient 2 edit
    sleep  2s
    Wait Until Element Is Visible    xpath=//*[@id="ingredOne"]
    ${text}=    get value    xpath=//*[@id='ingredOne']
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${text}   Ingredient 1 edit  
    sleep  2s
    Wait Until Element Is Visible    xpath=//*[@id="ingredTwo"]
    ${text}=    get value    xpath=//*[@id='ingredTwo']
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${text}   Ingredient 2 edit  
     
5.6.1.6_menu_settings_menu_items_let's_add_to_your_menu_delete_dish
    click element      xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    Set Global Variable     ${dishname}
    scroll element into view    xpath=//*[@id="dish-${dishname}"] 
    click element    xpath=//*[@id="dish-${dishname}"]
    Page Should Contain    Let's Add To Your Menu!
    click element    xpath=//*[@id="free-solo-demo"]
    Wait Until Element Is Visible    xpath=//*[@id="yesPopUpCancelChanges0"]   
    click element    xpath=//*[@id="yesPopUpCancelChanges0"]
    Wait Until Element Is Visible    xpath=//*[@aria-label="delete"]
    click element  xpath=//*[@aria-label="delete"]
    Wait Until Element Is Visible     xpath=//*[@id="yesPopUpCancelChanges2"]  
    sleep  2s
    click element   xpath=//*[@id="yesPopUpCancelChanges2"]
    sleep  2s
    Page Should Contain      ${dishname}
    close browser
    
5.6.1.7_menu_settings_menu_items_let's_add_to_your_menu_add_dish_mandatory_fields_only
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    Entering Name of the dish 
    ${number}   Generate Random String  3  [NUMBERS]
    Input text    xpath=//*[@id="free-solo-demo"]    onedish3${number}
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*  
    sleep   2s
    click element     xpath=//*[@id="List-box-Thisdishispartof"]
    Sleep  2s
    scroll element into view    xpath=//*[@id="ingredTwo"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    sleep  3s
    click element    xpath=//*[contains(text(),'Appetizers')]
    Scroll Element Into View     xpath=//*[@id="anotherEntry2"]  
    log to console    entering additional desc as  dish additional description
    Input text    xpath=//*[@name="dishAdditionalDesc"]    dish additional description
    scroll element into view    xpath=//*[@id="lowCarbLabel"]
    log to console    unselecting the cost by portion checkbox
    click element    xpath=//*[@id="costByPortionOnePortionCheck"]
    Sleep  2s
    Checkbox Should Not Be Selected    xpath=//*[@id="costByPortionOnePortionCheck"]
    scroll element into view    xpath=//*[@id="go-back"]
    click element    xpath=//*[@id="glutenFreeNo"]
    click element    xpath=//*[@id="vegetarianNo"]
    click element    xpath=//*[@id="eggarianNo"]
    click element    xpath=//*[@id="veganNo"]
    click element    xpath=//*[@id="soyNutsNo"]
    click element    xpath=//*[@id="eggsNo"]
    click element    xpath=//*[@id="dairyNo"]
    click element    xpath=//*[@id="shellfishNo"]
    click element    xpath=//*[@id="go-back"]    
    log to console    adding with only mandatory fields is acceptable
    close browser
    
5.6.1.8_menu_settings_menu_items_let's_add_to_your_menu_menu_categories_match_reqts
    [Tags]   Do Not Run
    login pkg1
    Click element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    #page should contain    breakfast
    page should contain    lunch
    page should contain    dinner dessert
    log to console    this menu categories contains all the required items.
    close browser

#5.6.1.9 -  Manual testcase

#5.6.1.10 -  Manual testcase

#5.6.1.11 - Manual testcase
    
5.6.1.14_menu_settings_menu_items_let's_add_to_your_menu_submission_confirmation
    [Tags]   Do Not Run
    login pkg1
    Click element     xpath=//*[@href="/user/menu-settings"]
    log to console     login successfull and entering text in lets add to your menu.
    Wait Until Element Is Visible      xpath=//*[@href="/user/menu-settings/menu-items"] 
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    4_1_10_1_text_present    Best8Eats Submission Confrmation!
    4_1_10_1_text_present    Success - Your Request Has Been Submitted. Please Check Your Email For Payment Confrmation.
    4_1_10_1_text_present    Once Your Apps Are Ready??, You Will Receive An Email With The Link
    4_1_10_1_text_present    Thank You For Using Best8Eats! 
    4_1_10_1_text_present    Confirmation Number
    close browser
    
    
