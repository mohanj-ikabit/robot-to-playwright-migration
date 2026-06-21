*** Settings ***
Default Tags      vieweditmenu
#Library           SeleniumLibrary
#Library           String
#Library            FakerLibrary
#Library            OperatingSystem
#Library            Collections 
#Resource          ../Resource/dropdownlist.robot
#Resource          ../Resource/numericalvalue.robot
#Resource          ../Resource/textfield.robot
#Resource          ../Resource/button.robot 
#Resource          ../Resource/URL.robot 
#Resource          ../Resource/Checkbox.robot
#Resource          ../Resource/Email ID.robot
#Resource          ../Resource/Text on form.robot
#Resource          ../Resource/genericfunctions.robot
Library           SeleniumLibrary
Library            FakerLibrary
Library          String
Library            OperatingSystem
Library            Collections 
Resource           ../Resource/genericfunctions.robot
Suite Teardown    Close All Browsers

*** Test Cases ***
5.6.2.4_menu_settings_vieweditmenu_back
    login pkg1
    #Sleep   1s
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    click element    xpath=//*[@href="/user/menu-settings"]
    log to console     login successful
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-menu"]
    #use correct id for the back arrow
    click element    xpath=//*[@id="goBack"]
    #verify that the previous form is opened
    page should contain    View ALL Menu Items
    page should contain    (Click On the Menu Item To View Details)
    
    click element    xpath=//*[@id="goBack"]
    #verify that the previous form is opened
    page should contain    Let's Add To Your Menu!
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    
    click element    xpath=//*[@id="click-to-continue"]
    #verify that the next form is opened
    page should contain    View ALL Menu Items
    page should contain    (Click On the Menu Item To View Details)
    
    click element    xpath=//*[@href="/user/menu-items/view-edit-menu"]
    page should contain    View & Finalize Menu
    page should contain    Please Pick a Menu To View
   
AddTestMenusForTestsBelow
    login pkg1
    Sleep   1s
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    log to console    clicking menu settings
    click element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    log to console    enter test menus TestMenu-1, TestMenu-2, TestMenu-3
    Input text    xpath=//*[@id="enterMenuItem"]    TestMenu-1
    click element    xpath=//*[@id="addToMenu"]
    Input text    xpath=//*[@id="enterMenuItem"]    TestMenu-2
    click element    xpath=//*[@id="addToMenu"]
    Input text    xpath=//*[@id="enterMenuItem"]    TestMenu-3
    click element    xpath=//*[@id="addToMenu"]
    
AddDishesToTesttMenusForTestsBelow-Dish1
    Click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    log to console     entering text in lets add to your menu.
    
    log to console    entering Name of the dish as Dish1
    Input text    xpath=//*[@id="dishName"]    Dish1
    
    Input text    xpath=//*[@id="calories"]    100
    
    log to console    select from Menu(s) This Dish Is a Part Of?* as breakfast
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    Click Element At Coordinates   xpath=//select[@id="?listID1"]   0    0
    scroll element into view    xpath=//*[@id="TestMenu-1"]
    Select From List By Label    xpath=//*[@id="?listID1"]    TestMenu-1
        
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    Click Element At Coordinates   xpath=//select[@id="?listID2"]   0    0
    #scroll element into view    xpath=//*[@id="?"]
    Select From List By Label    xpath=//*[@id="?listID2"]    Appetizers
    
    #5 Main Ingredients
    scroll element into view    xpath=//*[@id="anotherEntry2"]
    log to console    entering Ingredients
    Input text    xpath=//*[@id="ingredOne"]     Ingredient-11
    Select Radio Button   ingredOneOptional   Yes
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient-12
    Select Radio Button   ingredOneOptional   Yes
    Input text    xpath=//*[@id="ingredThree"]   Ingredient-13
    Select Radio Button   ingredOneOptional   Yes
    Input text    xpath=//*[@id="ingredFour"]    Ingredient-14
    Select Radio Button   ingredOneOptional   Yes
    Input text    xpath=//*[@id="ingredFive"]    Ingredient-15
    Select Radio Button   ingredOneOptional   Yes    
    
    #Additional Description
    log to console    entering additional desc as Additional Description Dish1-description
    Input text    xpath=//*[@id="dishAdditionalDesc"]    Additional Description     Dish1-description
    
    #Cost By Portion Size
    log to console    unselecting the cost by portion checkbox
    Unselect Checkbox    xpath=//*[@id="costByPortionOnePortionCheck"]
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    
    #click element    xpath=
    #scroll element into view    xpath=//*[@id="eaThreeText"]
    #log to console    entering cost as blank
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="eaOneText"]    new1
    #Input text    xpath=//*[@id="eaOneDollar"]    500
    #Input text    xpath=//*[@id="eaOneCent"]    500
    #Input text    xpath=//*[@id="eaTwoText"]    new2
    #Input text    xpath=//*[@id="eaTwoDollar"]    500
    #Input text    xpath=//*[@id="eaTwoCent"]    500
    #Input text    xpath=//*[@id="eaThreeText"]    new3
    
    #This Dish Is
    scroll element into view    xpath=//*[@id="calories"]
    select Checkbox    xpath=//*[@id="lowCarb"]
    select Checkbox    xpath=//*[@id="ketoFriendly"]
    select Checkbox    xpath=//*[@id="southBeachDiet"]
    select Checkbox    xpath=//*[@id="highProtein"]
    select Checkbox    xpath=//*[@id="atkinsFriendly"]
    select Checkbox    xpath=//*[@id="rawFoodDiet"]
    select Checkbox    xpath=//*[@id="paleoFriendly"]
    select Checkbox    xpath=//*[@id="weightWatchers"]
    select Checkbox    xpath=//*[@id="mediterraneanDiet"]
    
    #Extra Additions
    Input text    xpath=//*[@id="extraAdditionsTextBox1"]    Chicken1
    Input text    xpath=//*[@id="extraAdditionsDollars1"]    12
    Input text    xpath=//*[@id="extraAdditionsCents1"]      34
    Input text    xpath=//*[@id="extraAdditionsTextBox2"]    Avocado1
    Input text    xpath=//*[@id="extraAdditionsDollars2"]    43
    Input text    xpath=//*[@id="extraAdditionsCents2"]      21
    click element   xpath=//*[@id="anotherEntry2"]
   
    #Dish Customization
    select radio button     glutenFree    Yes
    select radio button     vegetarian    No
    select radio button     eggarian    Yes
    select radio button     vegan    No
   
    #Allergen Information
    select radio button     soyNuts    Yes
    select radio button     eggs    No
    select radio button     dairy    Yes
    select radio button     shellfish    No
    select radio button     gluten    Yes
    select radio button     soy    No
   
    #Click Save & Add another to save the dish
    click element    xpath=//*[@id="go-back"]
    
    #click element    xpath=//*[@id="glutenFreeNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="vegetarianNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="eggarianNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="veganNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="soyNutsNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="eggsNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="dairyNo"]/span[1]/span[1]/input
    #click element    xpath=//*[@id="shellfishNo"]/span[1]/span[1]/input
    
    #Click View & Finalize Menu to view the dish
    #click element    xpath=//*[@id="click-to-continue"]
    #click element    xpath=//*[@id="go-back"]
    #${d}    get text    xpath=
    #log to console    ${d}
    #log to console    Verify the details of the dish
    #Page Should Contain    Dish1
    #Click on dish name to go to the tab - Lets Add to the Menu to verify the dish ingredients
    #click button     Dish1
    #${text}=    Get text    xpath=//*[@id="${id}"]    

AddDishesToTesttMenusForTestsBelow-Dish2
    log to console    entering Name of the dish as Dish2
    Input text    xpath=//*[@id="dishName"]    Dish2
    
    Input text    xpath=//*[@id="calories"]    200
    
    log to console    select from Menu(s) This Dish Is a Part Of?* as breakfast
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    Click Element At Coordinates   xpath=//select[@id="?listID1"]   0    0
    scroll element into view    xpath=//*[@id="TestMenu-1"]
    Select From List By Label    xpath=//*[@id="?listID1"]    TestMenu-1
    
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    Click Element At Coordinates   xpath=//select[@id="?listID2"]   0    0
    #scroll element into view    xpath=//*[@id="?"]
    Select From List By Label    xpath=//*[@id="?listID2"]    Appetizers
    
    #5 Main Ingredients
    scroll element into view    xpath=//*[@id="anotherEntry2"]
    log to console    entering Ingredients
    Input text    xpath=//*[@id="ingredOne"]     Ingredient-21
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient-22
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredThree"]   Ingredient-23
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredFour"]    Ingredient-24
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredFive"]    Ingredient-25
    Select Radio Button    ingredOneOptional     Yes    
    
    #Additional Description
    log to console    entering additional desc as Additional Description Dish2-description
    Input text    xpath=//*[@id="dishAdditionalDesc"]    Additional Description     Dish2-description
    
    #Cost By Portion Size
    log to console    unselecting the cost by portion checkbox
    Unselect Checkbox    xpath=//*[@id="costByPortionOnePortionCheck"]
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    
    #click element    xpath=
    #scroll element into view    xpath=//*[@id="eaThreeText"]
    #log to console    entering cost as blank
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="eaOneText"]    new1
    #Input text    xpath=//*[@id="eaOneDollar"]    500
    #Input text    xpath=//*[@id="eaOneCent"]    500
    #Input text    xpath=//*[@id="eaTwoText"]    new2
    #Input text    xpath=//*[@id="eaTwoDollar"]    500
    #Input text    xpath=//*[@id="eaTwoCent"]    500
    #Input text    xpath=//*[@id="eaThreeText"]    new3
    
    #This Dish Is
    scroll element into view    xpath=//*[@id="calories"]
    select Checkbox    xpath=//*[@id="lowCarb"]
    select Checkbox    xpath=//*[@id="ketoFriendly"]
    select Checkbox    xpath=//*[@id="southBeachDiet"]
    select Checkbox    xpath=//*[@id="highProtein"]
    select Checkbox    xpath=//*[@id="atkinsFriendly"]
    select Checkbox    xpath=//*[@id="rawFoodDiet"]
    select Checkbox    xpath=//*[@id="paleoFriendly"]
    select Checkbox    xpath=//*[@id="weightWatchers"]
    select Checkbox    xpath=//*[@id="mediterraneanDiet"]
    
    #Extra Additions
    Input text    xpath=//*[@id="extraAdditionsTextBox1"]    Chicken2
    Input text    xpath=//*[@id="extraAdditionsDollars1"]    12
    Input text    xpath=//*[@id="extraAdditionsCents1"]      34
    Input text    xpath=//*[@id="extraAdditionsTextBox2"]    Avocado2
    Input text    xpath=//*[@id="extraAdditionsDollars2"]    43
    Input text    xpath=//*[@id="extraAdditionsCents2"]      21
    click element   xpath=//*[@id="anotherEntry2"]
   
    #Dish Customization
    select radio button     glutenFree    No
    select radio button     vegetarian    Yes
    select radio button     eggarian    No
    select radio button     vegan    Yes
   
    #Allergen Information
    select radio button     soyNuts    No
    select radio button     eggs    Yes
    select radio button     dairy    No
    select radio button     shellfish    Yes
    select radio button     gluten    No
    select radio button     soy    Yes
   
    #Click Save & Add another to save the dish
    click element    xpath=//*[@id="go-back"]
    
AddDishesToTesttMenusForTestsBelow-Dish3
    log to console    entering Name of the dish as Dish3
    Input text    xpath=//*[@id="dishName"]    Dish3
    
    Input text    xpath=//*[@id="calories"]    300
    
    log to console    select from Menu(s) This Dish Is a Part Of?* as breakfast
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    Click Element At Coordinates   xpath=//select[@id="?listID1"]   0    0
    scroll element into view    xpath=//*[@id="TestMenu-1"]
    Select From List By Label    xpath=//*[@id="?listID1"]    TestMenu-1
    
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    Click Element At Coordinates   xpath=//select[@id="?listID2"]   0    0
    #scroll element into view    xpath=//*[@id="?"]
    Select From List By Label    xpath=//*[@id="?listID2"]    Entree
    
    #5 Main Ingredients
    scroll element into view    xpath=//*[@id="anotherEntry2"]
    log to console    entering Ingredients
    Input text    xpath=//*[@id="ingredOne"]     Ingredient-31
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient-32
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredThree"]   Ingredient-33
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredFour"]    Ingredient-34
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredFive"]    Ingredient-35
    Select Radio Button    ingredOneOptional     Yes    
    
    #Additional Description
    log to console    entering additional desc as Additional Description Dish3-description
    Input text    xpath=//*[@id="dishAdditionalDesc"]    Additional Description     Dish3-description
    
    #Cost By Portion Size
    log to console    unselecting the cost by portion checkbox
    Unselect Checkbox    xpath=//*[@id="costByPortionOnePortionCheck"]
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    
  
    
    #This Dish Is
    scroll element into view    xpath=//*[@id="calories"]
    select Checkbox    xpath=//*[@id="lowCarb"]
    select Checkbox    xpath=//*[@id="ketoFriendly"]
    select Checkbox    xpath=//*[@id="southBeachDiet"]
    select Checkbox    xpath=//*[@id="highProtein"]
    select Checkbox    xpath=//*[@id="atkinsFriendly"]
    select Checkbox    xpath=//*[@id="rawFoodDiet"]
    select Checkbox    xpath=//*[@id="paleoFriendly"]
    select Checkbox    xpath=//*[@id="weightWatchers"]
    select Checkbox    xpath=//*[@id="mediterraneanDiet"]
    
    #Extra Additions
    Input text    xpath=//*[@id="extraAdditionsTextBox1"]    Chicken3
    Input text    xpath=//*[@id="extraAdditionsDollars1"]    12
    Input text    xpath=//*[@id="extraAdditionsCents1"]      34
    Input text    xpath=//*[@id="extraAdditionsTextBox2"]    Avocado3
    Input text    xpath=//*[@id="extraAdditionsDollars2"]    43
    Input text    xpath=//*[@id="extraAdditionsCents2"]      21
    click element   xpath=//*[@id="anotherEntry2"]
   
    #Dish Customization
    select radio button     glutenFree    Yes
    select radio button     vegetarian    Yes
    select radio button     eggarian    Yes
    select radio button     vegan    Yes
   
    #Allergen Information
    select radio button     soyNuts    Yes
    select radio button     eggs    Yes
    select radio button     dairy    Yes
    select radio button     shellfish    Yes
    select radio button     gluten    Yes
    select radio button     soy    Yes
   
    #Click Save & Add another to save the dish
    click element    xpath=//*[@id="go-back"]
    
AddDishesToTesttMenusForTestsBelow-Dish4
    log to console    entering Name of the dish as Dish4
    Input text    xpath=//*[@id="dishName"]    Dish4
    
    Input text    xpath=//*[@id="calories"]    400
    
    log to console    select from Menu(s) This Dish Is a Part Of?* as breakfast
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    Click Element At Coordinates   xpath=//select[@id="?listID1"]   0    0
    scroll element into view    xpath=//*[@id="TestMenu-2"]
    Select From List By Label    xpath=//*[@id="?listID1"]    TestMenu-2
    
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    Click Element At Coordinates   xpath=//select[@id="?listID2"]   0    0
    #scroll element into view    xpath=//*[@id="?"]
    Select From List By Label    xpath=//*[@id="?listID2"]    Entree
    
    #5 Main Ingredients
    scroll element into view    xpath=//*[@id="anotherEntry2"]
    log to console    entering Ingredients
    Input text    xpath=//*[@id="ingredOne"]     Ingredient-41
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient-42
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredThree"]   Ingredient-43
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredFour"]    Ingredient-44
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredFive"]    Ingredient-45
    Select Radio Button    ingredOneOptional     Yes    
    
    #Additional Description
    log to console    entering additional desc as Additional Description Dish4-description
    Input text    xpath=//*[@id="dishAdditionalDesc"]    Additional Description     Dish4-description
    
    #Cost By Portion Size
    log to console    unselecting the cost by portion checkbox
    Unselect Checkbox    xpath=//*[@id="costByPortionOnePortionCheck"]
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    
    #click element    xpath=
    #scroll element into view    xpath=//*[@id="eaThreeText"]
    #log to console    entering cost as blank
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="eaOneText"]    new1
    #Input text    xpath=//*[@id="eaOneDollar"]    500
    #Input text    xpath=//*[@id="eaOneCent"]    500
    #Input text    xpath=//*[@id="eaTwoText"]    new2
    #Input text    xpath=//*[@id="eaTwoDollar"]    500
    #Input text    xpath=//*[@id="eaTwoCent"]    500
    #Input text    xpath=//*[@id="eaThreeText"]    new3
    
    #This Dish Is
    scroll element into view    xpath=//*[@id="calories"]
    select Checkbox    xpath=//*[@id="lowCarb"]
    select Checkbox    xpath=//*[@id="ketoFriendly"]
    select Checkbox    xpath=//*[@id="southBeachDiet"]
    select Checkbox    xpath=//*[@id="highProtein"]
    select Checkbox    xpath=//*[@id="atkinsFriendly"]
    select Checkbox    xpath=//*[@id="rawFoodDiet"]
    select Checkbox    xpath=//*[@id="paleoFriendly"]
    select Checkbox    xpath=//*[@id="weightWatchers"]
    select Checkbox    xpath=//*[@id="mediterraneanDiet"]
    
    #Extra Additions
    Input text    xpath=//*[@id="extraAdditionsTextBox1"]    Chicken4
    Input text    xpath=//*[@id="extraAdditionsDollars1"]    12
    Input text    xpath=//*[@id="extraAdditionsCents1"]      34
    Input text    xpath=//*[@id="extraAdditionsTextBox2"]    Avocado4
    Input text    xpath=//*[@id="extraAdditionsDollars2"]    43
    Input text    xpath=//*[@id="extraAdditionsCents2"]      21
    click element   xpath=//*[@id="anotherEntry2"]
   
    #Dish Customization
    select radio button     glutenFree    No
    select radio button     vegetarian    No
    select radio button     eggarian    No
    select radio button     vegan    No
   
    #Allergen Information
    select radio button     soyNuts    No
    select radio button     eggs    No
    select radio button     dairy    No
    select radio button     shellfish    No
    select radio button     gluten    No
    select radio button     soy    No
   
    #Click Save & Add another to save the dish
    click element    xpath=//*[@id="go-back"]
    
AddDishesToTesttMenusForTestsBelow-Dish5
    log to console    entering Name of the dish as Dish5
    Input text    xpath=//*[@id="dishName"]    Dish5
    
    Input text    xpath=//*[@id="calories"]    500
    
    log to console    select from Menu(s) This Dish Is a Part Of?* as breakfast
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    Click Element At Coordinates   xpath=//select[@id="?listID1"]   0    0
    scroll element into view    xpath=//*[@id="TestMenu-3"]
    Select From List By Label    xpath=//*[@id="?listID1"]    TestMenu-3
    
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    Click Element At Coordinates   xpath=//select[@id="?listID2"]   0    0
    #scroll element into view    xpath=//*[@id="?"]
    Select From List By Label    xpath=//*[@id="?listID2"]    Snacks
    
    #5 Main Ingredients
    scroll element into view    xpath=//*[@id="anotherEntry2"]
    log to console    entering Ingredients
    Input text    xpath=//*[@id="ingredOne"]     Ingredient-51
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredTwo"]     Ingredient-52
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredThree"]   Ingredient-53
    Select Radio Button    ingredOneOptional     Yes
    Input text    xpath=//*[@id="ingredFour"]    Ingredient-54
    Select Radio Button    ingredOneOptional     No
    Input text    xpath=//*[@id="ingredFive"]    Ingredient-55
    Select Radio Button    ingredOneOptional     Yes    
    
    #Additional Description
    log to console    entering additional desc as Additional Description Dish5-description
    Input text    xpath=//*[@id="dishAdditionalDesc"]    Additional Description     Dish5-description
    
    #Cost By Portion Size
    log to console    unselecting the cost by portion checkbox
    Unselect Checkbox    xpath=//*[@id="costByPortionOnePortionCheck"]
    Input text    xpath=//*[@id="costPortionTextBox0"]    Small
    Input text    xpath=//*[@id="costPortionDollars0"]    1
    Input text    xpath=//*[@id="costPortionCents0"]      11
    Input text    xpath=//*[@id="costPortionTextBox1"]    Large
    Input text    xpath=//*[@id="costPortionDollars1"]    2
    Input text    xpath=//*[@id="costPortionCents1"]      22
    
    #click element    xpath=
    #scroll element into view    xpath=//*[@id="eaThreeText"]
    #log to console    entering cost as blank
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="amountDishDollars"]    500
    #Input text    xpath=//*[@id="eaOneText"]    new1
    #Input text    xpath=//*[@id="eaOneDollar"]    500
    #Input text    xpath=//*[@id="eaOneCent"]    500
    #Input text    xpath=//*[@id="eaTwoText"]    new2
    #Input text    xpath=//*[@id="eaTwoDollar"]    500
    #Input text    xpath=//*[@id="eaTwoCent"]    500
    #Input text    xpath=//*[@id="eaThreeText"]    new3
    
    #This Dish Is
    scroll element into view    xpath=//*[@id="calories"]
    select Checkbox    xpath=//*[@id="lowCarb"]
    select Checkbox    xpath=//*[@id="ketoFriendly"]
    select Checkbox    xpath=//*[@id="southBeachDiet"]
    select Checkbox    xpath=//*[@id="highProtein"]
    select Checkbox    xpath=//*[@id="atkinsFriendly"]
    select Checkbox    xpath=//*[@id="rawFoodDiet"]
    select Checkbox    xpath=//*[@id="paleoFriendly"]
    select Checkbox    xpath=//*[@id="weightWatchers"]
    select Checkbox    xpath=//*[@id="mediterraneanDiet"]
    
    #Extra Additions
    Input text    xpath=//*[@id="extraAdditionsTextBox1"]    Chicken5
    Input text    xpath=//*[@id="extraAdditionsDollars1"]    12
    Input text    xpath=//*[@id="extraAdditionsCents1"]      34
    Input text    xpath=//*[@id="extraAdditionsTextBox2"]    Avocado5
    Input text    xpath=//*[@id="extraAdditionsDollars2"]    43
    Input text    xpath=//*[@id="extraAdditionsCents2"]      21
    click element   xpath=//*[@id="anotherEntry2"]
   
    #Dish Customization
    select radio button     glutenFree    No
    select radio button     vegetarian    No
    select radio button     eggarian    No
    select radio button     vegan    No
   
    #Allergen Information
    select radio button     soyNuts    No
    select radio button     eggs    No
    select radio button     dairy    No
    select radio button     shellfish    No
    select radio button     gluten    No
    select radio button     soy    No
   
    #Click Save & Add another to save the dish
    click element    xpath=//*[@id="go-back"]

ViewEditMenu_Menusvisible
    Click element    xpath=//*[@href="/user/menu-items/view-edit-items"]
    log to console     verify the menus
    
    Click Element At Coordinates   xpath=//select[@id="?listID3"]   0    0
    #scroll element into view    xpath=//*[@id="TestMenu-3"]
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-1
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-2
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-3
    
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-1
    Page should contain    Appetizers
    Page should contain    Dish1
    Page should contain    Dish2
    
    Page should contain    Entree
    Page should contain    Dish3
    
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-2
    Page should contain    Entree
    Page should contain    Dish4
    
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-3
    Page should contain    Snacks
    Page should contain    Dish5
    
    #verify the details of the dishes - TBD

ViewEditMenu_delete_menu_with_dish
    Click element    xpath=//*[@href="/user/menu-items/view-edit-items"]
    log to console     delete a menu with dish in it
    Click Element At Coordinates   xpath=//select[@id="?listID3"]   0    0
    #scroll element into view    xpath=//*[@id="TestMenu-3"]
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-1
    Click element    xpath=//*[@id="?delete"]
    #verify that an alert is shown
    Page should contain     Are you sure you want to delete this menu from your system?
    Page should contain     NOTE: This Action Cannot be Undone.
    Page should contain     YOur customers will not be able to see this menu on their Best8Eats App.
    Page should contain     You are making changes to
    
ViewEditMenu_edit_dish
    Click element    xpath=//*[@href="/user/menu-items/view-edit-items"]
    log to console     edit a dish
    Click element    xpath=//*[@id="?edit"]
    Sleep   3s
    Page should contain    Let's Add To The Menu
    ${VALUE}   Get value     xpath=//*[@id="dishName"]
    Should Be Equal As Strings    ${VALUE}    xpath=//*[@id="?editeddishname"]
    
ViewEditMenu_delete_dish
    reload page
    log to console     delete a dish
    Click Element At Coordinates    xpath=//select[@id="?listID3"]   0    0
    #scroll element into view    xpath=//*[@id="TestMenu-3"]
    Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-3
    #delete the only dish - Dish5 in this menu
    Click element    xpath=//*[@id="?delete"]
    Page should not contain     Snacks
    Page should not contain     Dish5
    Page should not contain     Dish5-description
    
    Page should not contain     Ingredient-51
    Page should not contain     Ingredient-52
    Page should not contain     Ingredient-53
    Page should not contain     Ingredient-54
    Page should not contain     Ingredient-55   
    #calories
    Page should not contain     500
    
    Page should not contain     Low Carb
    Page should not contain     Keto Friendly
    Page should not contain     South Beach Diet
    Page should not contain     High Protein
    Page should not contain     Atkins Friendly
    Page should not contain     Raw Food Diet
    Page should not contain     Paleo Friendly
    Page should not contain     Weight Watchers
    Page should not contain     Mediterranean Diet
    
    #verify the menu is no longer available in the dropdown
    Click Element At Coordinates   xpath=//select[@id="?listID3"]   0    0
    #scroll element into view    xpath=//*[@id="TestMenu-3"]
    {status}=     Select From List By Label    xpath=//*[@id="?listID3"]    TestMenu-3
    Run Keyword If    ${status}==True    Log to console    Test Passed
    
    log to console     verify the dish is available in the Let's Add To The Menu dropdown still after being deleted from the menu
    Click element    xpath=//*[@href="/user/menu-items"]
    Sleep   1s
    Page should contain    Let's Add To The Menu
    Input text    xpath=//*[@id="dishName"]    Dish5
    
    
        
    ${VALUE}   Get value     xpath=//*[@id="$dishName"] 
    Should Be Equal    ${VALUE}   Dish5
    ${VALUE}   Get value     xpath=//*[@id="$dishAdditionalDesc"] 
    Should Be Equal    ${VALUE}   Dish5-description
    ${VALUE}   Get value     xpath=//*[@id="$calories"] 
    Should Be Equal    ${VALUE}   500
    
    Page should contain     Snacks
    
    ${VALUE}   Get value     xpath=//*[@id="$ingredOne"] 
    Should Be Equal    ${VALUE}   Ingredient-51
    ${VALUE}   Get value     xpath=//*[@id="$ingredTwo"] 
    Should Be Equal    ${VALUE}   Ingredient-52
    ${VALUE}   Get value     xpath=//*[@id="$ingredTwo"] 
    Should Be Equal    ${VALUE}   Ingredient-53
    ${VALUE}   Get value     xpath=//*[@id="$ingredFour"] 
    Should Be Equal    ${VALUE}   Ingredient-54
    ${VALUE}   Get value     xpath=//*[@id="$ingredFive"] 
    Should Be Equal    ${VALUE}   Ingredient-55
    
    #Dish Customization
    Radio button should not be selected    glutenFree    No
    Radio button should not be selected    vegetarian    No
    Radio button should not be selected    eggarian    No
    Radio button should not be selected    vegan    No
   
    #Allergen Information
    Radio button should not be selected    soyNuts
    Radio button should not be selected    eggs
    Radio button should not be selected    dairy
    Radio button should not be selected    shellfish
    Radio button should not be selected    gluten
    Radio button should not be selected    soy
    
    #dish is
    Checkbox should be selected    xpath=//*[@id="lowCarb"]
    Checkbox should be selected    xpath=//*[@id="ketoFriendly"]
    Checkbox should be selected    xpath=//*[@id="southBeachDiet"]
    Checkbox should be selected    xpath=//*[@id="highProtein"]
    Checkbox should be selected    xpath=//*[@id="atkinsFriendly"]
    Checkbox should be selected    xpath=//*[@id="rawFoodDiet"]
    Checkbox should be selected    xpath=//*[@id="paleoFriendly"]
    Checkbox should be selected    xpath=//*[@id="weightWatchers"]
    Checkbox should be selected    xpath=//*[@id="mediterraneanDiet"]
    
    close browser
    
   
    
    
