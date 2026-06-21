*** Settings ***
Default Tags      menusubcatfood
Library           SeleniumLibrary
Library            FakerLibrary
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close Browser  

*** Keywords ***


    
*** Test Cases ***
5.5.1.1_menu_settings_menu_subcategory_navigate_to_page_and_verify_ui_elements
    login pkg1
    Go To Menu Subcategory Page
    
    # Verify UI Elements
    Page Should Contain    Some popular food categories in your cuisine
    Page Should Contain    Food Sub-Categories Chosen
    Page Should Contain Element    id=add-button
    Page Should Contain Element    id=remove-button
    Page Should Contain Element    id=addAll-button
    Page Should Contain Element    id=removeAll-button
   
    
5.5.1.2_menu_settings_menu_subcategory_add_item
    Sleep  2s
    Click Element   xpath=//*[@id="left-BBQ"]
    Click Element    xpath=//*[@id="add-button"]
    Page Should Contain Element    xpath=//*[@id="right-BBQ"]
    Click Element   xpath=//*[@id="right-BBQ"]
    Click Element   xpath=//*[@id="remove-button"]
    Page Should Contain Element    xpath=//*[@id="left-BBQ"]
    Wait Until Page Contains    BBQ
    Click Element   xpath=//*[@id="left-BBQ"]
    #Wait Until Page Contains    Accompaniment    5
    #Sleep    2s
    #Click Element   xpath=//*[@id="left-Accompaniment"]
    Sleep    2s
    Wait Until Page Contains    Appetizers 
    Click Element   xpath=//*[@id="right-Appetizers"]
    Click Element    xpath=//*[@id="add-button"]
    Click Element   xpath=//*[@id="right-Accompaniment"]
    Click Element    xpath=//*[@id="add-button"]
    Page Should Contain Element    xpath=//*[@id="right-BBQ"]
    Page Should Contain Element    xpath=//*[@id="right-Accompaniment"]
    Page Should Contain Element    xpath=//*[@id="right-Appetizers"]
    Click Element   xpath=//*[@id="right-BBQ"]
    Click Element   xpath=//*[@id="remove-button"]
    Click Element   xpath=//*[@id="right-Accompaniment"]
    Click Element   xpath=//*[@id="right-Appetizers"]
    #Click Element   xpath=//*[@id="removeAll-button"]
    Sleep  2s
    Page Should Not Contain Element    xpath=//*[@id="right-A La Carte"] 
    Click Element      xpath=//*[@id="clickToContinue"]
    Wait Until Page Contains    Alcoholic Beverages ToGo
    Sleep  1s
    #Click Element     xpath=//*[@href="/logout/user/logout"]
    #Sleep   12s
    logout
    #log to console    clicking Sign in
    #click element    xpath=//*[@href='/login']
    #log to console    entering password...................Test@123
    #SeleniumLibrary.Input Text    xpath=//*[@id='password']    Test@123
    #log to console    clicking submit
    #SeleniumLibrary.Click Button    xpath=//*[@id='submit']
    login pkg1
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    Click Element     xpath=//*[@href="/user/menu-settings/menu-sub-category"] 
    Sleep   1s
    log to console    going to menu sub categories - default tab - food
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    Sleep  1s
    page should contain    Food
    Page Should Contain Element    xpath=//*[@id="right-Accompaniment"] 
    Page Should Contain Element    xpath=//*[@id="right-Appetizers"]
    Click Element   xpath=//*[@id="removeAll-button"]
    
    
5.5.1.3_menu_settings_menu_subcategory_remove_items
    Click Element   xpath=//*[@id="addAll-button"]
    Sleep   2s
    Page Should Contain Element    xpath=//*[@id="right-A La Carte"]
    Page Should Contain Element    xpath=//*[@id="right-Accompaniment"]
    Page Should Contain Element    xpath=//*[@id="right-Appetizers"]
    Click Element   xpath=//*[@id="removeAll-button"]
    Page Should Not Contain Element    xpath=//*[@id="right-A La Carte"]
    Page Should Not Contain Element    xpath=//*[@id="right-Accompaniment"]
    Page Should Not Contain Element    xpath=//*[@id="right-Appetizers"]
    
5.5.1.4_menu_settings_menu_subcategory_add_item_manually
    Sleep  1s
    ${text}         Generate Random String     4    chars=[LETTERS]
    Input Text      xpath=//*[@id="enterMenuItem"]          ${text}     
    ${value}   Get Element Attribute     xpath=//*[@id="enterMenuItem"]   value
    Set Global Variable         ${value}  
    Click Element    xpath=//*[@id="addToMenu"]
    Page Should Contain Element    xpath=//*[@id="right-${value}"]  
    Clear Element Text    xpath=//*[@id="enterMenuItem"]    
    
5.5.1.5_menu_settings_menu_subcategory_add_duplicate_item
    Sleep  1s
    Input Text      xpath=//*[@id="enterMenuItem"]     ${value}
    Click Element    xpath=//*[@id="addToMenu"]
    Page Should Contain    Please add a different menu
    Click Element   xpath=//*[@id="removeAll-button"]
    Page Should Contain Element    xpath=//*[@id="left-${value}"]   
    
add_remove_sub_categories   
    Log To Console    Select A La Carte
    Click Element   xpath=//*[@id="left-A La Carte"]
    Sleep  1s
    Log To Console    Select Wraps
    Click Element      xpath=//*[@id="left-Wraps"]
    Sleep  1s   
    Log To Console    Select Steak
    Click Element   xpath=//*[@id="left-Steak"]     
    Sleep  1s
    Log To Console    Select Pastas
    Click Element   xpath=//*[@id="left-Pastas"]
    Sleep  1s
    Log To Console    Select Seafood
    Click Element   xpath=//*[@id="left-Seafood"]     
    Sleep  1s
    Log To Console    Select Sliders
    Click Element   xpath=//*[@id="left-Sliders"]
    Sleep  1s
    Log To Console    Select Soups
    Click Element   xpath=//*[@id="left-Soups"]     
    Sleep  1s   
    Log To Console    clicking add button
    Scroll Element Into View       xpath=//*[@id="add-button"]
    Wait Until Element Is Visible      xpath=//*[@id="add-button"]
    Sleep   2s
    Click Element    xpath=//*[@id="add-button"]
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]
    Wait Until Element Is Visible     xpath=//*[@id="clickToContinue"]     
    Page Should Contain Element    xpath=//*[@id="right-A La Carte"]
    Log To Console    A La Carte is under Food Sub-Categories Chosen 
    Page Should Contain Element    xpath=//*[@id="right-Wraps"] 
    Log To Console    Wraps is under Food Sub-Categories Chosen 
    Page Should Contain Element    xpath=//*[@id="right-Steak"] 
    Log To Console   Steak is under Food Sub-Categories Chosen 
    Page Should Contain Element    xpath=//*[@id="right-Pastas"] 
    Log To Console    Pasta is under Food Sub-Categories Chosen
    Page Should Contain Element    xpath=//*[@id="right-Seafood"] 
    Log To Console    Seafood is under Food Sub-Categories Chosen
    Page Should Contain Element    xpath=//*[@id="right-Sliders"] 
    Log To Console    Sliders is under Food Sub-Categories Chosen
    Page Should Contain Element    xpath=//*[@id="right-Soups"] 
    Log To Console    Soups is under Food Sub-Categories Chosen
    Page Should Not Contain Element   xpath=//*[@id="left-A La Carte"]  
    Page Should Not Contain Element   xpath=//*[@id="left-Wraps"]  
    Page Should Not Contain Element   xpath=//*[@id="left-Steak"] 
    Page Should Not Contain Element   xpath=//*[@id="left-Pastas"] 
    Page Should Not Contain Element   xpath=//*[@id="left-Seafood"]  
    Page Should Not Contain Element   xpath=//*[@id="left-Sliders"] 
    Page Should Not Contain Element   xpath=//*[@id="left-Soups"]  
    Log To Console    Select A La Carte under Food Sub-Categories Chosen 
    Click Element   xpath=//*[@id="right-A La Carte"]  
    Log To Console   Select Pasta under Food Sub-Categories Chosen
    Click Element   xpath=//*[@id="right-Pastas"] 
    Log To Console    Select Sliders under Food Sub-Categories Chosen
    Click Element   xpath=//*[@id="right-Sliders"]
    Log To Console    click remove button
    Scroll Element Into View    xpath=//*[@id="remove-button"]
    Wait Until Element Is Visible      xpath=//*[@id="remove-button"]
    Click Element   xpath=//*[@id="remove-button"]
    Page Should Contain Element    xpath=//*[@id="left-A La Carte"]
    Log To Console    A La Carte is under Some popular food categories in your cuisine
    Page Should Contain Element    xpath=//*[@id="left-Pastas"] 
    Log To Console    Pastas is under Some popular food categories in your cuisine
    Page Should Contain Element    xpath=//*[@id="left-Sliders"] 
    Log To Console    Sliders is under Some popular food categories in your cuisine
    Page Should Not Contain Element    xpath=//*[@id="right-A La Carte"]
    Page Should Not Contain Element    xpath=//*[@id="right-Pastas"] 
    Page Should Not Contain Element    xpath=//*[@id="right-Sliders"] 
    Scroll Element Into View    xpath=//*[@id="clickToContinue"]
    Scroll Element Into View     xpath=//*[@id="add-button"]
    Wait Until Element Is Visible     xpath=//*[@id="add-button"]   
    Sleep  10s
    
 add_remove_all
    Wait Until Element Is Visible      xpath=//*[@id="addAll-button"]  
    Click Element   xpath=//*[@id="addAll-button"]  
    Log To Console    click add all button
    Page Should Contain Element    xpath=//*[@id="right-Wraps"]
    Sleep  1s
    Page Should Contain Element        xpath=//*[@id="right-Steak"]   
    Click Element   xpath=//*[@id="removeAll-button"]
    Log To Console    click remove all button
    Page Should Not Contain Element    xpath=//*[@id="right-Wraps"]
    Page Should Not Contain Element        xpath=//*[@id="right-Steak"] 
    Sleep  1s
    
5.5.1.7_menu_settings_menu_subcategory_data_retention_during_form_navigation_cancel
    Click Element   xpath=//*[@id="left-A La Carte"]
    Sleep  1s
    Click Element      xpath=//*[@id="left-Wraps"]
    Sleep  1s   
    Click Element   xpath=//*[@id="left-Steak"]   
    Click Element    xpath=//*[@id="add-button"] 
    Page Should Contain Element    xpath=//*[@id="right-A La Carte"]
    Page Should Contain Element    xpath=//*[@id="right-Wraps"] 
    Page Should Contain Element    xpath=//*[@id="right-Steak"] 
    Click Element     xpath=//*[@id="right-Steak"] 
    Click Element     xpath=//*[@id="remove-button"]
    Sleep  1s
    #click element    xpath=//*[@href="/user/account-settings"]
    #use Go Back button during this data retention test. Use navigation to another menu in the other data retention test to verify that chrome popup is not displayed in either case.
    #Click Element    xpath=//*[@id="goBack"]
    Click Element     xpath=//*[@href="/user/menu-settings/menu-category"] 
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    Click Element    xpath=//*[@id="noPopUpCancelChanges1"]
    Sleep  2s
    Page Should Contain    Menu Categories
    Page Should Contain    Select a Menu
    Sleep  2s
    #Click Element     xpath=//*[@href="/logout/user/logout"]
    #Sleep   12s
    logout
    login pkg1
    #log to console    clicking Sign in
    #click element    xpath=//*[@href='/login']
    #log to console    entering password...................Test@123
    #SeleniumLibrary.Input Text    xpath=//*[@id='password']    Test@123
    #log to console    clicking submit
    #SeleniumLibrary.Click Button    xpath=//*[@id='submit']
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    Click Element     xpath=//*[@href="/user/menu-settings/menu-sub-category"] 
    Sleep   1s
    log to console    going to menu sub categories - default tab - food
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    Sleep  1s
    page should contain    Food
    Page Should Not Contain Element       xpath=//*[@id="right-A La Carte"]
    #Page Should Not Contain Element    xpath=//*[@id="right-Steak"] 
    #Page Should Not Contain Element    xpath=//*[@id="right-Wraps"] 
    Click Element   xpath=//*[@id="removeAll-button"]
    Sleep  1s

5.5.1.8_menu_settings_menu_subcategory_data_retention_during_form_navigation_save
    Click Element   xpath=//*[@id="left-A La Carte"]
    Sleep  1s
    Click Element      xpath=//*[@id="left-Wraps"]
    Sleep  1s   
    Click Element   xpath=//*[@id="left-Steak"]   
    Click Element    xpath=//*[@id="add-button"] 
    Page Should Contain Element    xpath=//*[@id="right-A La Carte"]
    Page Should Contain Element    xpath=//*[@id="right-Wraps"] 
    Page Should Contain Element    xpath=//*[@id="right-Steak"] 
    Click Element     xpath=//*[@id="right-Steak"] 
    Click Element     xpath=//*[@id="remove-button"]
    click element    xpath=//*[@href="/user/account-settings"]
    Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Sleep  1s
    page should contain    Food
    Page Should Contain Element       xpath=//*[@id="right-A La Carte"]
    Page Should Contain Element    xpath=//*[@id="right-Wraps"] 
    Click Element   xpath=//*[@id="removeAll-button"]
    Sleep  1s

5.5.1.9_menu_settings_menu_subcategory_list_per_reqts
    Sleep  8s
    log to console    checking the sub-categories in the list
    Page Should Contain    A La Carte
    Page Should Contain    Accompaniment
    Page Should Contain    Appetizers
    Page Should Contain    BBQ
    Page Should Contain    Bagels
    Page Should Contain    Baked Goods
    Page Should Contain    Biscuits
    Page Should Contain    Bowls
    Page Should Contain    Breads
    Page Should Contain    Burgers
    Page Should Contain    Calzones
    Page Should Contain    Cereal
    Page Should Contain    Chef Recommendations
    Page Should Contain    Chef'S Special
    Page Should Contain    Chicken
    Page Should Contain    Continental Breakfast
    Page Should Contain    Create Your Own Bowl
    Page Should Contain    Create Your Own Burger
    Page Should Contain    Create Your Own Burrito
    Page Should Contain    Create Your Own Pizza
    Page Should Contain    Create Your Own Sandwich
    Page Should Contain    Daily Specials
    Page Should Contain    Desserts
    Page Should Contain    Dips
    Page Should Contain    Dips & Spreads
    Page Should Contain    Eggs
    Page Should Contain    Entree
    Page Should Contain    Fajitas
    Page Should Contain    Family Style Dinners
    Page Should Contain    Fish
    Page Should Contain    Flat Breads
    Page Should Contain    French Toast
    Page Should Contain    Fresh Fish Of The Day
    Page Should Contain    Griddles
    Page Should Contain    Healthy Corner
    Page Should Contain    Hot Dog
    Page Should Contain    Hot Sandwiches
    Page Should Contain    Kids Menu
    Page Should Contain    Low Carb Menu
    Page Should Contain    Main Dishes
    Page Should Contain    Meat
    Page Should Contain    Melts
    Page Should Contain    Oatmeal
    Page Should Contain    Oatmeal & Granola
    Page Should Contain    Omelets
    Page Should Contain    Omelets & Scrambles
    Page Should Contain    Pancakes
    Page Should Contain    Pancakes & Waffels
    Page Should Contain    Panini
    Page Should Contain    Pastas
    Page Should Contain    Pies
    Page Should Contain    Pizza
    Page Should Contain    Poultry
    Page Should Contain    Poultry & Seafood
    Page Should Contain    Prix Fixe Menu
    Page Should Contain    Protein
    Page Should Contain    Quiche
    Page Should Contain    Rolls
    Page Should Contain    Salads
    Page Should Contain    Sandwiches
    Page Should Contain    Savory Crepes
    Page Should Contain    Scones
    Page Should Contain    Seafood
    Page Should Contain    Seasonal Specials
    Page Should Contain    Sides
    Page Should Contain    Skewers
    Page Should Contain    Skillets
    Page Should Contain    Sliders
    Page Should Contain    Small Bites
    Page Should Contain    Small Plates
    Page Should Contain    Snacks
    Page Should Contain    Soups
    Page Should Contain    Soups & Salads
    Page Should Contain    Specialties
    Page Should Contain    Starters
    Page Should Contain    Steak
    Page Should Contain    Stew
    Page Should Contain    Sweets
    Page Should Contain    Tarts
    Page Should Contain    Toasts
    Page Should Contain    Veal
    Page Should Contain    Vegan
    Page Should Contain    Vegetarian
    Page Should Contain    Waffles
    Page Should Contain    Wings
    Page Should Contain    Wraps

# 5.5.1.10_menu_settings_menu_subcategory_list_alphabetical - Manually tested
# 5.5.1.11_menu_settings_menu_subcategory_spellcheck - Manually tested
   
    

