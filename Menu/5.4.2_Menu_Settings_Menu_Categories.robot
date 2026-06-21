*** Variables ***
${SIGNUP_URL}    https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/
${LOGIN_URL}     https://verify-getrestaurantapp-v1-0-0.d3bydizwdiwzbp.amplifyapp.com/login

${PKG1_USER_ID}         grapp.user17@gmail.com
${PKG1_PASSWORD}        Test@1234
${PKG1_COMPANY_ID}      31532808

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
#Pre-Requisite for the test cases - Menu Categories - Chef's Special, Du Jor (Daily Specials), Today's Specials should not be in the list of selected Menus, else tests will fail.
5.4.2.1_menu_settings_menu_category_no_data
  
    #Log To Console    Click Remove All. Click To Continue. Verify an error is reported.
    login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep  2s
    Click Element    xpath=//*[@id="Add-All"]
    Sleep  2s
    Click Element    xpath=//*[@id="Remove-All"]
    Sleep  1s
    Click Element   xpath=//*[@id="clickToContinue"]
    Page Should Contain Element       xpath=//*[@href="/user/menu-settings/menu-category"]
    Page Should Contain    Menu Categories
    Page Should Contain    Please Tell Us The Different Menus You Have In Your Restaurant*
    Page Should Contain    Please enter at least one menu.

5.4.2.2_menu_settings_menu_category_add_remove_items
    #Log To Console    Login. Add a few items, Remove 1 item. Logout. Login. Verify that the added items are displayed in the right column successfully.
    login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep  2s
    Log To Console    Add and then remove 1 element
    Sleep  2s
    Click Element   xpath=//*[@id="left-Chef's Specials"]
    Click Element   xpath=//*[@id="Add"]
    Page Should Contain Element         xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Chef's Specials"]    
    Click Element   xpath=//*[@id="right-Chef's Specials"]
    Click Element   xpath=//*[@id="remove"]
    Page Should Contain Element         xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="right-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Wait Until Page Contains    Chef's Specials     5
    
    Log To Console    Add 4 elements
    Click Element   xpath=//*[@id="left-Chef's Specials"]
    Click Element   xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Click Element   xpath=//*[@id="left-Prix Fixe Menu"]
    Click Element   xpath=//*[@id="Add"]
    Click Element   xpath=//*[@id="left-Today's Specials"]
    Click Element   xpath=//*[@id="Add"]
    Page Should Contain Element    xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element    xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Contain Element    xpath=//*[@id="right-Prix Fixe Menu"]
    Page Should Contain Element    xpath=//*[@id="right-Today's Specials"]

    Page Should Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Prix Fixe Menu"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    
    Page Should Not Contain Element    xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element    xpath=//*[@id="left-Prix Fixe Menu"]
    Page Should Not Contain Element    xpath=//*[@id="left-Today's Specials"]
    
    Log To Console    Remove 1 out of 4 elements. Click To Continue. Come Back to Menu Categories. Verify 3 out of the elements were added.
    Click Element   xpath=//*[@id="right-Prix Fixe Menu"]
    Click Element   xpath=//*[@id="remove"]
    Sleep  2s
    Page Should Contain Element         xpath=//*[@id="left-Prix Fixe Menu"] 
    Page Should Not Contain Element     xpath=//*[@id="right-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Prix Fixe Menu"]
    
    Click Element       xpath=//*[@id="clickToContinue"]
    Wait Until Page Contains    Menu Categories     5
    Page Should Contain     Please select pick availability of Chef's Specials   
    #Click Element       xpath=//*[@id="goBack"]
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Click Element       xpath=//*[@id="yesPopUpCancelChanges1"]
    Page Should Contain Element         xpath=//*[@id="left-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="right-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Prix Fixe Menu"]
    
    Page Should Contain Element         xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element         xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Contain Element         xpath=//*[@id="right-Today's Specials"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="left-Today's Specials"]
    sleep  2s
    #Log To Console    Logout. Login. Verify that the 3 out of 4 elements added above are still displayed in the right column.
    #logout
    #sleep  15s
    #login pkg1
    #log to console    going to menu settings
    #Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]  5
    #Click Element    xpath=//*[@href="/user/menu-settings"]
    #log to console    going to menu categories
    #Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    #click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    #Sleep  2s
    Page Should Contain Element         xpath=//*[@id="left-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="right-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Prix Fixe Menu"]
    
    Page Should Contain Element         xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element         xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Contain Element         xpath=//*[@id="right-Today's Specials"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Contain Element         xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="left-Today's Specials"]

    Log To Console   Remove 3 elements to run the test in continuation. Verify that those elements are now displayed in the left column.
    Click Element   xpath=//*[@id="right-Chef's Specials"]
    Click Element   xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Click Element   xpath=//*[@id="right-Today's Specials"]
    Click Element   xpath=//*[@id="Remove-All"]
    Log To Console    Click To Continue to save the changes. User will be navigated to Menu Sub-Category.
    Click Element       xpath=//*[@id="clickToContinue"]
    Wait Until Page Contains    Menu Categories     5
    Page Should Contain    Please enter at least one menu.
    Log To Console    Click Go Back to navigate back to Menu Category to verify changes.
    #Click Element       xpath=//*[@id="goBack"]
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Page Should Contain Element     xpath=//*[@id="left-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Contain Element     xpath=//*[@id="left-Today's Specials"]
    Page Should Not Contain Element         xpath=//*[@id="right-Chef's Specials"]
    Page Should Not Contain Element         xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Not Contain Element         xpath=//*[@id="right-Today's Specials"]
    close browser


5.4.2.3_menu_settings_menu_category_add_all
    
    login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    Click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep  2s
    #[Tags]    tbd
    Sleep   2s
    Wait Until Element Is Visible      xpath=//*[@id="Add-All"]   5
    Page Should Contain     Menu Categories
    Page Should Contain     Please Tell Us The Different Menus You Have In Your Restaurant*
    
    Log To Console   Click Add All. Verify all elements are available in the right column.
    Click Element   xpath=//*[@id="Add-All"]
    Sleep  1s    
    Page Should Contain Element     xpath=//*[@id="right-A La Carte"]
    Page Should Contain Element     xpath=//*[@id="right-Alcoholic Beverages"]
    Page Should Contain Element     xpath=//*[@id="right-Breakfast"]
    Page Should Contain Element     xpath=//*[@id="right-Brunch"]
    Page Should Contain Element     xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="right-Dessert Menu"]
    Page Should Contain Element     xpath=//*[@id="right-Dinner"]
    Page Should Contain Element     xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Contain Element     xpath=//*[@id="right-Lunch"]
    Page Should Contain Element     xpath=//*[@id="right-Non Alcoholic Beverages"]
    Page Should Contain Element     xpath=//*[@id="right-Prix Fixe Menu"]
    Page Should Contain Element     xpath=//*[@id="right-Seasonal Tasting"]
    Page Should Contain Element     xpath=//*[@id="right-Today's Specials"]
    Page Should Contain Element     xpath=//*[@id="right-Wine List"]

    Page Should Contain Element     xpath=//*[@id="pick-availability-A La Carte"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Alcoholic Beverages"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Breakfast"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Brunch"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Dessert Menu"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Dinner"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Lunch"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Non Alcoholic Beverages"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Prix Fixe Menu"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Seasonal Tasting"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Wine List"]
    
    Log To Console   Verify that no elements are displayed in the left column.
    Page Should Not Contain Element     xpath=//*[@id="left-A La Carte"]
    Page Should Not Contain Element     xpath=//*[@id="left-Alcoholic Beverages"]
    Page Should Not Contain Element     xpath=//*[@id="left-Breakfast"]
    Page Should Not Contain Element     xpath=//*[@id="left-Brunch"]
    Page Should Not Contain Element     xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Dessert Menu"]
    Page Should Not Contain Element     xpath=//*[@id="left-Dinner"]
    Page Should Not Contain Element     xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="left-Lunch"]
    Page Should Not Contain Element     xpath=//*[@id="left-Non Alcoholic Beverages"]
    Page Should Not Contain Element     xpath=//*[@id="left-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="left-Seasonal Tasting"]
    Page Should Not Contain Element     xpath=//*[@id="left-Today's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="left-Wine List"]
    
    Page Should Contain    A La Carte
    Page Should Contain    Alcoholic Beverages
    Page Should Contain    Breakfast
    Page Should Contain    Brunch
    Page Should Contain    Chef's Specials
    Page Should Contain    Dessert Menu
    Page Should Contain    Dinner
    Page Should Contain    Du Jor (Daily Specials)
    Page Should Contain    Lunch
    Page Should Contain    Non Alcoholic Beverages
    Page Should Contain    Prix Fixe Menu
    Page Should Contain    Seasonal Tasting
    Page Should Contain    Today's Specials
    Page Should Contain    Wine List
    sleep  20s
    
5.4.2.4_menu_settings_menu_category_remove_all
    login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    Click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep  2s
    #[Tags]    tbd
    Sleep   2s
    Wait Until Element Is Visible      xpath=//*[@id="Add-All"]   5
    Page Should Contain     Menu Categories
    Page Should Contain     Please Tell Us The Different Menus You Have In Your Restaurant*
    
    Log To Console   Click Add All. Verify all elements are available in the right column.
    Click Element   xpath=//*[@id="Add-All"]
    Log To Console   Click Remove All. Verify all elements are available in the left column.
    Click Element   xpath=//*[@id="Remove-All"]
    Sleep    2s    
    Page Should Contain Element     xpath=//*[@id="left-A La Carte"]
    Page Should Contain Element     xpath=//*[@id="left-Alcoholic Beverages"]
    Page Should Contain Element     xpath=//*[@id="left-Breakfast"]
    Page Should Contain Element     xpath=//*[@id="left-Brunch"]
    Page Should Contain Element     xpath=//*[@id="left-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="left-Dessert Menu"]
    Page Should Contain Element     xpath=//*[@id="left-Dinner"]
    Page Should Contain Element     xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Contain Element     xpath=//*[@id="left-Lunch"]
    Page Should Contain Element     xpath=//*[@id="left-Non Alcoholic Beverages"]
    Page Should Contain Element     xpath=//*[@id="left-Prix Fixe Menu"]
    Page Should Contain Element     xpath=//*[@id="left-Seasonal Tasting"]
    Page Should Contain Element     xpath=//*[@id="left-Today's Specials"]
    Page Should Contain Element     xpath=//*[@id="left-Wine List"]
   
    Log To Console    Verify that no elements are displayed in the right column.
    Page Should Not Contain Element     xpath=//*[@id="right-A La Carte"]
    Page Should Not Contain Element     xpath=//*[@id="right-Alcoholic Beverages"]
    Page Should Not Contain Element     xpath=//*[@id="right-Breakfast"]
    Page Should Not Contain Element     xpath=//*[@id="right-Brunch"]
    Page Should Not Contain Element     xpath=//*[@id="right-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="right-Dessert Menu"]
    Page Should Not Contain Element     xpath=//*[@id="right-Dinner"]
    Page Should Not Contain Element     xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="right-Lunch"]
    Page Should Not Contain Element     xpath=//*[@id="right-Non Alcoholic Beverages"]
    Page Should Not Contain Element     xpath=//*[@id="right-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="right-Seasonal Tasting"]
    Page Should Not Contain Element     xpath=//*[@id="right-Today's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="right-Wine List"]
    
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-A La Carte"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Alcoholic Beverages"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Breakfast"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Brunch"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Dessert Menu"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Dinner"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Lunch"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Non Alcoholic Beverages"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Prix Fixe Menu"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Seasonal Tasting"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Wine List"]
    
    Page Should Contain    A La Carte
    Page Should Contain    Alcoholic Beverages
    Page Should Contain    Breakfast
    Page Should Contain    Brunch
    Page Should Contain    Chef's Specials
    Page Should Contain    Dessert Menu
    Page Should Contain    Dinner
    Page Should Contain    Du Jor (Daily Specials)
    Page Should Contain    Lunch
    Page Should Contain    Non Alcoholic Beverages
    Page Should Contain    Prix Fixe Menu
    Page Should Contain    Seasonal Tasting
    Page Should Contain    Today's Specials
    Page Should Contain    Wine List   
    sleep  2s
    
5.4.2.5_menu_settings_menu_category_add_item_manually
    Login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    Click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    
    Sleep   2s
    ${text}         Generate Random String     4    chars=[LETTERS]
    Input Text      xpath=//*[@id="enterMenuItem"]          MC_${text}     
    ${value}    Get Element Attribute     xpath=//*[@id="enterMenuItem"]   value
    Set Global Variable         ${value}  
    Click Element    xpath=//*[@id="addToMenu"]
    Page Should Contain Element    xpath=//*[@id="right-${value}"]
    Click Element   xpath=//*[@id="right-${value}"]
    Click Element   xpath=//*[@id="remove"]
    Page Should Contain Element    xpath=//*[@id="left-${value}"]
    Clear Element Text    xpath=//*[@id="enterMenuItem"]    

5.4.2.6_menu_settings_menu_category_add_duplicate_item
    login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    Click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep   2s
    Log To Console   Add the Menu Category added in the previous test
    
    Input Text      xpath=//*[@id="enterMenuItem"]     Brunch
    Click Element    xpath=//*[@id="addToMenu"]
    Page Should Contain    Please add a different menu
    
    Log To Console   Add a Menu Category available by default in Web App, to generate an error
    Page Should Contain    Breakfast
    Input Text    xpath=//*[@id="enterMenuItem"]    Breakfast
    log to console    clicking add to menu
    Click element    xpath=//*[@id="addToMenu"]
    Page Should Contain     Please add a different menu
    sleep  20s
 
5.4.2.7_menu_settings_menu_category_data_retention_during_form_navigation_cancel
    #[Tags]   tbd
    #reload page
    login pkg1
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    Click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep   2s
    Wait Until Element Is Visible      xpath=//*[@id="Add-All"]   5
    Page Should Contain     Menu Categories
    Page Should Contain     Please Tell Us The Different Menus You Have In Your Restaurant*
    
    #Click Element   xpath=//*[@id="Remove-All"]
    Log To Console   Click Remove All. Verify all elements are available in the left column.
    Click Element   xpath=//*[@id="Remove-All"]
    Log To Console    Add 3 elements
    Click Element   xpath=//*[@id="left-Chef's Specials"]
    Click Element   xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Click Element   xpath=//*[@id="left-Today's Specials"]
    Click Element   xpath=//*[@id="Add"]
   # Page Should Contain Element    xpath=//*[@id="right-Chef's Specials"]
   # Page Should Contain Element    xpath=//*[@id="right-Du Jor (Daily Specials)"]
    #Page Should Contain Element    xpath=//*[@id="right-Today's Specials"]
    #Page Should Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    #Page Should Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    #Page Should Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element    xpath=//*[@id="left-Today's Specials"]
    Log To Console    Remove 1 element
    Click Element   xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Click Element   xpath=//*[@id="remove"]
    Sleep  1s
    #use Go Back button during this data retention test. Use navigation to another menu in the other data retention test to verify that chrome popup is not displayed in either case.
    #Click Element    xpath=//*[@id="goBack"]
    click element    xpath=//*[@href="/user/menu-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    Click Element    xpath=//*[@id="noPopUpCancelChanges1"]
    Sleep  2s
    Log To Console   User is navigated to the page - Menu Creation Help
    Page Should Contain    Creating your menu:
    Page Should Contain    Let Us Create Your Digital Menu Entries For You
    Sleep  2s
    logout
    close browser
    sleep  5s
    login pkg1        
    Wait Until Element Is Visible    xpath=//*[@href="/user/restaurant-info"]   
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Sleep  2s
    Page Should Contain    Please Tell Us The Different Menus You Have In Your Restaurant*
    Page Should Contain    Select a Menu
    Page Should Not Contain Element    xpath=//*[@id="right-Chef's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Not Contain Element    xpath=//*[@id="right-Today's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Contain Element         xpath=//*[@id="left-Chef's Specials"]
    Page Should Contain Element         xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Contain Element         xpath=//*[@id="left-Today's Specials"]
    close browser
    
5.4.2.8_menu_settings_menu_subcategory_data_retention_during_form_navigation_save
    #[Tags]   tbd
    #reload page
    login pkg1
    log to console     going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Log To Console    Add a few elements. Remove 1 element.
    Wait Until Element Is Visible      xpath=//*[@id="Add-All"]   5
    Page Should Contain     Menu Categories
    Page Should Contain     Please Tell Us The Different Menus You Have In Your Restaurant*
    
    #Click Element   xpath=//*[@id="Remove-All"]
    Log To Console    Add 3 elements
    Click Element   xpath=//*[@id="left-Chef's Specials"]
    Click Element   xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Click Element   xpath=//*[@id="left-Today's Specials"]
    Click Element   xpath=//*[@id="Add"]
    Page Should Contain Element    xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element    xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Page Should Contain Element    xpath=//*[@id="right-Today's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element    xpath=//*[@id="left-Today's Specials"]
    Log To Console    Remove 1 element
    Click Element   xpath=//*[@id="right-Du Jor (Daily Specials)"]
    Click Element   xpath=//*[@id="remove"]
    Sleep  1s
    Log To Console   Navigate to a different page. Popup for Unsaved Data is displayed. Click Yes to save changes.
    click element    xpath=//*[@href="/user/account-settings"]
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    #Page Should Contain Element    closePopUpCancelChanges1
    Page Should Contain Element    yesPopUpCancelChanges1
    Page Should Contain Element    noPopUpCancelChanges1
    Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Sleep  2s
    
    Log To Console    User should stay at the same page - Menu Category. User is not navigated to a different page.
    Page Should Contain    Please Tell Us The Different Menus You Have In Your Restaurant*
    Page Should Contain    Select a Menu
    Page Should Contain Element    xpath=//*[@id="right-Chef's Specials"]
    Page Should Contain Element    xpath=//*[@id="right-Today's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Chef's Specials"]
    Page Should Contain Element     xpath=//*[@id="pick-availability-Today's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Chef's Specials"]
    Page Should Not Contain Element    xpath=//*[@id="left-Today's Specials"]
    
    Page Should Contain Element    xpath=//*[@id="left-Du Jor (Daily Specials)"]
    Page Should Not Contain Element     xpath=//*[@id="pick-availability-Du Jor (Daily Specials)"]
    
    close browser
    
    
5.4.2.9_menu_settings_menu_category_pick_availability
    #[Tags]   tbd
    #reload page
    login pkg1
    log to console     going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Log To Console   Click Remove All. Verify all elements are available in the left column.
    Click Element   xpath=//*[@id="Remove-All"]
    log to console    selecting breakfast and brunch
    click element    xpath=//*[@id="left-Breakfast"]
    click element    xpath=//*[@id="left-Brunch"]
    log to console    clicking add
    click element    xpath=//*[@id="Add"]
    Page Should Contain Element         xpath=//*[@id="right-Breakfast"]
    Page Should Contain Element         xpath=//*[@id="right-Brunch"]
    sleep  2s
    click element    xpath=//*[@id="clickToContinue"]
     Page Should Contain   Please select pick availability of Breakfast
     
    #   log to console    clicking next
    #click element    xpath=//*[contains(text(),"Pick availability")]
    #    ${error}    get text    xpath=
    #    log to console    ${error}
    #    click element    xpath=
    log to console    clicking pick availability for breakfast
    click element    xpath=//*[@id="pick-availability-Breakfast"] 
    #entering for monday tab
    log to console    entering for monday
    log to console    entering monday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start time1 =07:07AM 
    Press Keys    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="friday-end-time2"]    0505p
    sleep  2s
    #log to console    clicking side button
    #click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="sunday-end-time2"]    0505p
    
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
    log to console    clicking next
    sleep  3s
    click element    xpath=//*[@id="clickToContinue"]
    Page Should Contain   Please select pick availability of Brunch
    sleep  10s
    close browser
    #    click element    xpath=//*[@id="clickToContinue"]
    #    ${error}    get text    xpath=//*[contains(text(),"Please fill in values for :")]
    #    log to console    ${error}
    
5.4.2.10_menu_settings_menu_category_missing_availability_time
    login pkg1
    log to console     going to menu settings
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]    5
    click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu categories
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-category"]    5
    click element    xpath=//*[@href="/user/menu-settings/menu-category"]
    Log To Console   Click Remove All. Verify all elements are available in the left column.
    Click Element   xpath=//*[@id="Remove-All"]
    log to console    selecting Seasonal Tasting
    click element    xpath=//*[@id="left-Seasonal Tasting"]
    log to console    clicking add
    click element    xpath=//*[@id="Add"]
    Page Should Contain Element         xpath=//*[@id="right-Seasonal Tasting"]  
    sleep  2s
    click element    xpath=//*[@id="clickToContinue"]
    Page Should Contain   Please select pick availability of Seasonal Tasting
     # click element    xpath=//*[contains(text(),"Pick availability")]
    #    ${error}    get text    xpath=
    #    log to console    ${error}
    #    click element    xpath=
    log to console    clicking pick availability for Seasonal Tasting
    click element    xpath=//*[@id="pick-availability-Seasonal Tasting"]
    
    # log to console    entering monday start = 07:07AM
    # Input Text    xpath=//*[@id="monday-start-time1"]    07:07AM
    # log to console    entering monday end = 11:11AM
    # Input Text    xpath=//*[@id="monday-end-time1"]    1111a
    # log to console    entering monday start time2 = 11:11AM
    # Input Text    xpath=//*[@id="monday-start-time2"]    1111a
    log to console    entering for monday
    log to console    entering monday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="monday-start-time1"]    0707a
    log to console    entering monday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="monday-end-time1"]    1111a
    log to console    entering monday start time2 = 11:11a
    Press Keys    xpath=//*[@id="monday-start-time2"]    1111a
    ${res1visible}    page should contain    Start time should be greater than previous values
    Run Keyword If    ${res1visible}==True    log to console    showing error: Start time should be greater than previous values
    log to console    entering monday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="monday-start-time2"]    1212p
    log to console    entering monday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="monday-end-time2"]    0505p
    #entering for tuesday tab
    log to console    entering for tuesday
    click element    xpath=//*[@id="simple-tab-1"]
    log to console    entering tuesday start time1 =07:07AM 
    Press Keys    xpath=//*[@id="tuesday-start-time1"]    0707a
    log to console    entering tuesday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="tuesday-end-time1"]    1111a
    log to console    entering tuesday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="tuesday-start-time2"]    1212p
    log to console    entering tuesday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="tuesday-end-time2"]    0505p
    #entering for wednesday tab
    log to console    entering for wednesday
    click element    xpath=//*[@id="simple-tab-2"]
    log to console    entering wednesday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="wednesday-start-time1"]    0707a
    log to console    entering wednesday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="wednesday-end-time1"]    1111a
    log to console    entering wednesday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="wednesday-start-time2"]    1212p
    log to console    entering wednesday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="wednesday-end-time2"]    0505p
    #entering for thursday tab
    log to console    entering for thursday
    click element    xpath=//*[@id="simple-tab-3"]
    log to console    entering thursday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="thursday-start-time1"]    0707a
    log to console    entering thursday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="thursday-end-time1"]    1111a
    log to console    entering thursday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="thursday-start-time2"]    1212p
    log to console    entering thursday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="thursday-end-time2"]    0505p
     #entering for friday tab
    log to console    entering for friday
    click element    xpath=//*[@id="simple-tab-4"]
    log to console    entering friday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="friday-start-time1"]    0707a
    log to console    entering friday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="friday-end-time1"]    1111a
    log to console    entering friday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="friday-start-time2"]    1212p
    log to console    entering friday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="friday-end-time2"]    0505p
    sleep  2s
    #log to console    clicking side button
    #click element    xpath=//*[@class="MuiButtonBase-root MuiTabScrollButton-root MuiTabs-scrollButtons MuiTabs-scrollButtonsDesktop Mui-disabled"]
    #entering for saturday tab
    log to console    entering for saturday
    click element    xpath=//*[@id="simple-tab-5"]
    log to console    entering saturday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="saturday-start-time1"]    0707a
    log to console    entering saturday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="saturday-end-time1"]    1111a
    log to console    entering saturday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="saturday-start-time2"]    1212p
    log to console    entering saturday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="saturday-end-time2"]    0505p
    #entering for sunday tab
    log to console    entering for sunday
    click element    xpath=//*[@id="simple-tab-6"]
    log to console    entering sunday start time1 = 07:07AM
    Press Keys    xpath=//*[@id="sunday-start-time1"]    0707a
    log to console    entering sunday end time1 = 11:11AM
    Press Keys    xpath=//*[@id="sunday-end-time1"]    1111a
    log to console    entering sunday start time2 = 12:12PM
    Press Keys    xpath=//*[@id="sunday-start-time2"]    1212p
    log to console    entering sunday end time2 = 05:05PM
    Press Keys    xpath=//*[@id="sunday-end-time2"]    0505p
    
    log to console    clicking ok
    click element    xpath=//*[@id="timeOk"]
    #log to console    clicking next
    sleep  3s
    click element    xpath=//*[@id="clickToContinue"]  
    sleep  10s
    close browser
     

    

