*** Settings ***
Default Tags      menualcoholicbvg
Library           SeleniumLibrary
#Library            AutoItLibrary
Library            OperatingSystem    
Resource          ../Resource/genericfunctions.robot
Suite Teardown    Close Browser

*** Variables ***
${BVG1_NAME}            Corona
${BVG1_TYPE}            Beer
${BVG1_DESC}            Nice Beer
${BVG1_NAME_DESC}       Corona - Nice Beer

${BVG1_SIZE11}          225
${BVG1_SIZE_SELECTED_11}   ml
${BVG1_PRICE11}         5.79
${BVG1_COMESIN11}       Can
${BVG1_INUNIT11}        1/2
${BVG1_CALORIES11}      120

${BVG1_SIZE12}          4
${BVG1_SIZE_SELECTED_12}   oz
${BVG1_PRICE12}         8.89
${BVG1_COMESIN12}       Bottle
${BVG1_INUNIT12}       1/4
${BVG1_CALORIES12}      240

${BVG1_SIZE13}          1
${BVG1_SIZE_SELECTED_13}   lts
${BVG1_PRICE13}         20.99
${BVG1_COMESIN13}       Togo Container
${BVG1_INUNIT13}        1
${BVG1_CALORIES13}      850

${BVG2_NAME}            Pinot
${BVG2_TYPE}            Wine
${BVG2_DESC}            Nice Wine
${BVG2_NAME_DESC}       Wine - Nice Wine

${BVG2_SIZE21}          2
${BVG2_SIZE_SELECTED_21}   oz
${BVG2_PRICE21}         17.99
${BVG2_COMESIN21}      Other
${BVG2_INUNIT21}        4
${BVG2_CALORIES21}      130

${BVG2_SIZE22}          3
${BVG2_SIZE_SELECTED_22}   lts
${BVG2_PRICE22}         15.99
${BVG2_COMESIN22}      Bottle
${BVG2_INUNIT22}        1/2
${BVG2_CALORIES22}       1050

${BVG2_SIZE23}          1
${BVG2_SIZE_SELECTED_23}   lts
${BVG2_PRICE23}         30.99
${BVG2_COMESIN23}       Bottle
${BVG2_INUNIT23}        1/1
${BVG2_CALORIES23}      2450

${VE_CATEGORY_ALCBVG}       Alcoholic Beverages

${BVG3_NAME}            Delete Wine
${BVG3_TYPE}            Cider
${BVG3_DESC}            Delete Nice Wine
${BVG3_NAME_DESC}       Delete - Nice Wine

${BVG3_SIZE31}          3
${BVG3_SIZE_SELECTED_31}   oz
${BVG3_PRICE31}         18.99
${BVG3_COMESIN31}      Other
${BVG3_INUNIT31}        5
${BVG3_CALORIES31}      150

${BVG3_SIZE32}          1
${BVG3_SIZE_SELECTED_32}   lts
${BVG3_PRICE32}         16.99
${BVG3_COMESIN32}      Bottle
${BVG3_INUNIT32}        1/3
${BVG3_CALORIES32}       1060

${BVG3_SIZE33}          2
${BVG3_SIZE_SELECTED_33}   lts
${BVG3_PRICE33}         32.99
${BVG3_COMESIN33}       Bottle
${BVG3_INUNIT33}        1/2
${BVG3_CALORIES33}      3450

*** Test Cases ***    
5.5.2.1._menu_settings_menu_subcategory_alcoholic_bvgs_no_data
    login pkg1
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories food  
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console     going to alcoholic beverages togo 
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    log to console    delete bvg1 if it exists
    ${bvg1_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname1"] 
    Run Keyword If   '${bvg1_exists}' == 'True'   Click Element    xpath=//*[@id="delete1"]
    Scroll Element Into View    xpath=//*[@id="anotherEntry"]
    log to console   delete bvg2 if it exists
    ${bvg2_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname2"] 
    Run Keyword If   '${bvg2_exists}' == 'True'   Click Element    xpath=//*[@id="delete2"]
    
    log to console    without entering any data clicking next
    click element    xpath=//*[@id="clickToContinue"]
    Sleep  4s
    page should contain    Please List The Non-Alcoholic Beverages On Your Menu
    log to console    clicked next without entering data we are now in next page as desired.

5.5.2.2.1_menu_settings_menu_subcategory_alcoholic_bvgs_missing_mandatory_bvg_name
    #Bug 2636. Error message is not readable
    Sleep  1s
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console    going to alcoholic beverages togo
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    #Wait Until Element Is Visible     xpath=//*[@id="delete1"]    
    #click element    xpath=//*[@id="delete1"] 
    #Wait Until Element Is Visible    xpath=//*[@id="ElementId delete popup"]
    #click element     xpath=//*[@id="Yes to delete confirmation"] 
    #scroll element into view   xpath=//*[@id="anotherEntry"]
    #Sleep  2s
    #click element  xpath=//*[@id="anotherEntry"]
    Wait Until Element Is Visible   xpath=//*[@id="alBvname1"] 
    Click Element     xpath=//*[@id="alBvname1"] 
    Sleep  1s
    Clear Element Text    xpath=//*[@id="alBvname1"]
    click element    xpath=//*[@id="alBvType1"]
    Sleep  1s
    click element  xpath=//*[contains(text(),'Beer')]
    Sleep  2s
    log to console    Beverage name blank.
    Input text    xpath=//*[@id="price11"]    4.99
    Sleep  1s
    Click Element   xpath=//*[@id="clickToContinue"]
    Sleep  4s
    Page Should Not Contain    Please List The Non-Alcoholic Beverages On Your Menu
    Page Should Contain Element    xpath=//*[@id="errorBeverages"]
    ${error}=    get value    xpath=//*[@id="errorBeverages"]
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Please fill in mandatory values for Alcoholic Beverages # 1
    Run Keyword If    ${status}==True    Log To Console    Test Passed
    Run Keyword If    ${status}!=True    Log to Console    For ID=errorBeverages, value reported as None
    log to console   reading the error message plain text
    #Page Should Contain    Please fill in mandatory values for 
    #Page Should Contain    Alcoholic Beverage # 1  
    Page Should Contain    Please fill in mandatory values for Alcoholic Beverages # 1 
    Sleep  2s

5.5.2.2.2_menu_settings_menu_subcategory_alcoholic_bvgs_missing_mandatory_bvg_type
    Scroll Element Into View    xpath=//*[@id="alBvname1"] 
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    Click Element    xpath=//*[@id="noPopUpCancelChanges1"]
    log to console    going to food
    Sleep  2s
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    log to console    going to alcoholic beverages togo
    page should contain    Please List The Alcoholic Beverages On Your Menu   
    Wait Until Page Contains Element     xpath=//*[@id="alBvname1"] 
    log to console    enter beverage name, leave Type as unselected, enter price
    Sleep  2s
    click element    xpath=//*[@id="delete1"] 
    Sleep  2s
    scroll element into view     xpath=//*[@id="anotherEntry"]
    click element  xpath=//*[@id="anotherEntry"]
    Wait Until Element Is Visible   xpath=//*[@id="alBvname1"] 
    Input Text      xpath=//*[@id="alBvname1"]  red drink
    Click Element     xpath=//*[@id="alBvname1"] 
    Sleep  1s
    Clear Element Text    xpath=//*[@id="alBvname1"]
    #click element    xpath=//*[@id="alBvType1"]
    #click element  xpath=//*[contains(text(),'Beer')]
    Input text    xpath=//*[@id="price11"]    4.99
    Click Element   xpath=//*[@id="clickToContinue"]
    Sleep  1s
    Page Should Contain Element    xpath=//*[@id="errorBeverages"]
    ${error}=    get value    xpath=//*[@id="errorBeverages"]
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Please fill in mandatory values for Alcoholic Beverages # 1
    Run Keyword If    ${status}==True    Log To Console    Test Passed
    Run Keyword If    ${status}!=True    Log to Console    For ID=errorBeverages, value reported as None
    log to console   reading the error message plain text
    #Page Should Contain    Please fill in mandatory values for 
    #Page Should Contain    Alcoholic Beverage # 1  
    Page Should Contain    Please fill in mandatory values for Alcoholic Beverages # 1
    Sleep  2s
    
5.5.2.2.3_menu_settings_menu_subcategory_alcoholic_bvgs_missing_mandatory_bvg_price
    Scroll Element Into View    xpath=//*[@id="alBvname1"] 
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    Click Element    xpath=//*[@id="noPopUpCancelChanges1"]
    log to console    going to food
    Sleep  2s
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    log to console    going to alcoholic beverages togo
    page should contain    Please List The Alcoholic Beverages On Your Menu   
    log to console    enter beverage name, type, leave price blank
    Sleep  2s
    click element    xpath=//*[@id="delete1"] 
    Sleep  2s
    scroll element into view     xpath=//*[@id="anotherEntry"]
    click element  xpath=//*[@id="anotherEntry"]
    Wait Until Element Is Visible   xpath=//*[@id="alBvname1"] 
    Input Text      xpath=//*[@id="alBvname1"]  red drink
    Click Element     xpath=//*[@id="alBvname1"] 
    Sleep  1s
    Clear Element Text    xpath=//*[@id="alBvname1"]
    click element    xpath=//*[@id="alBvType1"]
    click element  xpath=//*[contains(text(),'Beer')]
    #Input text    xpath=//*[@name="price11"]    4.99
    #Input text    xpath=//*[@id="price11"]    4.99
    Click Element   xpath=//*[@id="clickToContinue"]
    Sleep  1s
    Page Should Contain Element    xpath=//*[@id="errorBeverages"]
    ${error}=    get value    xpath=//*[@id="errorBeverages"]
    ${status}=  Run Keyword And Return Status  Should Be Equal As Strings    ${error}     Please fill in mandatory values for Alcoholic Beverages # 1
    Run Keyword If    ${status}==True    Log To Console    Test Passed
    Run Keyword If    ${status}!=True    Log to Console    For ID=errorBeverages, value reported as None
    log to console   reading the error message plain text
    #Page Should Contain    Please fill in mandatory values for
    #Page Should Contain    Alcoholic Beverage # 1  
    Page Should Contain    Please fill in mandatory values for Alcoholic Beverages # 1
    Sleep  2s
    #close browser
    
 5.5.2.5_menu_settings_menu_subcategory_alcoholic_bvgs_list_matches_reqts
    #login pkg1
    #Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    #log to console    clicking menu settings
    #Click Element    xpath=//*[@href="/user/menu-settings"]
    #log to console    going to menu sub categories food  
    #Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    #log to console     going to alcoholic beverages togo 
    #Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #page should contain    Please List The Alcoholic Beverages On Your Menu 
    #Sleep   1s
    #page should contain    Please List The Alcoholic Beverages On Your Menu
    click element    xpath=//*[@id="delete1"]
    sleep  2s
    click element  xpath=//*[@id="anotherEntry"]
    Wait Until Element Is Visible     xpath=//*[@id="alBvType1"]   
    click element    xpath=//*[@id="alBvType1"]
    Sleep  4s
    Page Should Contain    Beer
    Log To Console   Beer
    Page Should Contain    Wine
    Log To Console  Wine
    Page Should Contain    Cider
    Log To Console   Cider
    Page Should Contain    Liquor/Spirits
    Log To Console  Liquor/Spirits
    Page Should Contain    Liqueurs
    Log To Console  Liqueurs
    Page Should Contain    Others
    Log To Console  Others
    Sleep  2s
    Click Element       xpath=//*[contains(text(),'Wine')] 
    sleep  2s  
    log to console    Type contains all the required items which are Beer, Wine, Cider, Liquor/Spirits, Liqueurs, Others 

5.5.2.6_menu_settings_menu_subcategory_alcoholic_bvgs_size_matches_reqts
    click element   xpath=//*[@id="size_select11"]
    page should contain    oz
    page should contain    ml
    page should contain    lts
    page should contain    None
    click element  xpath=//*[contains(text(),'None')]   
    
5.5.2.7_menu_settings_menu_subcategory_alcoholic_bvgs_comesin_matches_reqts
    click element   xpath=//*[@id="comesin11"]
    page should contain    None
    page should contain    Can
    page should contain    Bottle
    page should contain    Togo Container
    page should contain    Other
    #close the popup by selecting None
    click element  xpath=//*[contains(text(),'None')]

5.5.2.8_menu_settings_menu_subcategory_alcoholic_bvgs_duplicate_item
    page should contain    Please List The Alcoholic Beverages On Your Menu
    log to console    enter alcoholic beverage1 - Corona
    Sleep   1s
    Input text    xpath=//*[@id="alBvname1"]    Corona
    log to console    enter type as Beer
    click element    xpath=//*[@id="alBvType1"]
    Sleep   2s
    click element       xpath=//*[contains(text(),'Beer')]
    log to console    enter description1 as nice beer
    Input text    xpath=//*[@id="alBvDesc1"]    nice beer
    #Input text    xpath=//*[@id="size11"]    4
    #input the size
    Input text    xpath=//*[@id="price11"]    5.99
    #Input text    xpath=//*[@id="inunit11"]    3
    #Input text    xpath=//*[@id="calories11"]    140
    #log to console    going to non-alcoholic beverages togo
    #Click Element     xpath=//*[@id="clickToContinue"] 
    #log to console    going back to alcoholic beverages togo
    #Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #page should contain    Please List The Alcoholic Beverages On Your Menu
    scroll element into view     xpath=//*[@id="clickToContinue"]
    Sleep   1s
    click element  xpath=//*[@id="anotherEntry"]
    log to console    enter alcoholic beverage2 with duplicate name - Corona, with different Type
    Sleep   1s
    Input text    xpath=//*[@id="alBvname2"]    Corona
    log to console    enter type as 
    click element    xpath=//*[@id="alBvType2"]
    click element  xpath=//*[contains(text(),'Liqueurs')]
    log to console    enter description2 as......nice beer - duplicate
    Input text    xpath=//*[@id="alBvDesc2"]    nice beer - duplicate
    #Input text    xpath=//*[@id="size21"]    4
    #input the size
    Input text    xpath=//*[@id="price21"]    4.99
    #Input text    xpath=//*[@id="inunit21"]    3
    #Input text    xpath=//*[@id="calories21"]    140
    Click Element     xpath=//*[@id="clickToContinue"] 
    #page should contain element    
    page should contain    Alcoholic Beverages name entered already exists, Please choose a unique Alcoholic Beverages name
    log to console    delete bvg1 if it exists to run next tests
    ${bvg1_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname1"] 
    Run Keyword If   '${bvg1_exists}' == 'True'   Click Element    xpath=//*[@id="delete1"]
    Scroll Element Into View    xpath=//*[@id="anotherEntry"]
    log to console   delete bvg2 if it exists to run next tests
    ${bvg2_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname2"] 
    Run Keyword If   '${bvg2_exists}' == 'True'   Click Element    xpath=//*[@id="delete2"]

5.5.2.8_menu_settings_menu_subcategory_alcoholic_bvgs_data_retention_form_navigation_cancel
    page should contain    Please List The Alcoholic Beverages On Your Menu
    log to console    enter alcoholic beverage1 - Corona1
    Sleep   1s
    Input text    xpath=//*[@id="alBvname1"]    Corona1
    log to console    enter type as Beer
    click element    xpath=//*[@id="alBvType1"]
    Sleep   2s
    click element       xpath=//*[contains(text(),'Beer')]
    log to console    enter description1 as nice beer1
    Input text    xpath=//*[@id="alBvDesc1"]    nice beer1
    #Input text    xpath=//*[@id="size11"]    4
    #input the size
    Input text    xpath=//*[@id="price11"]    5.99
    #Input text    xpath=//*[@id="inunit11"]    3
    #Input text    xpath=//*[@id="calories11"]    140
    log to console    going to a different menu
    Click Element    xpath=//*[@href="/user/menu-settings/menu-sub-category/non-alcoholic-beverages-togo"]
    log to console    verify that the popup for unsaved data is being displayed
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    Page Should Contain Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Page Should Contain Element    xpath=//*[@id="noPopUpCancelChanges1"]
    log to console   clicking no for Unsaved Data popup
    Click Element    xpath=//*[@id="noPopUpCancelChanges1"]
    log to console    user should navigate to the other form
    Page Should Contain    Please List The Non-Alcoholic Beverages On Your Menu
    Page Should Contain    Non-Alcoholic Beverage # 1
    log to console   go back to the form - Alcoholic Beverages for the next tests
    Click Element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    Page Should Contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    
5.5.2.9_menu_settings_menu_subcategory_alcoholic_bvgs_data_retention_form_navigation_save
    page should contain    Please List The Alcoholic Beverages On Your Menu
    log to console    enter alcoholic beverage1 - Corona
    Sleep   1s
    Input text    xpath=//*[@id="alBvname1"]    Corona
    log to console    enter type as Beer
    click element    xpath=//*[@id="alBvType1"]
    Sleep   2s
    click element       xpath=//*[contains(text(),'Beer')]
    log to console    enter description1 as nice beer
    Input text    xpath=//*[@id="alBvDesc1"]    nice beer
    #Input text    xpath=//*[@id="size11"]    4
    #input the size
    Input text    xpath=//*[@id="price11"]    5.99
    #Input text    xpath=//*[@id="inunit11"]    3
    #Input text    xpath=//*[@id="calories11"]    140
    log to console    going to a different menu
    Click Element    xpath=//*[@href="/user/account-settings"]
    log to console    verify that the popup for unsaved data is being displayed
    Page Should Contain    Unsaved Data
    Page Should Contain    Do you want to save the changes made to this form?
    Page Should Contain Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    Page Should Contain Element    xpath=//*[@id="noPopUpCancelChanges1"]
    log to console   clicking Yes for Unsaved Data popup
    Click Element    xpath=//*[@id="yesPopUpCancelChanges1"]
    log to console    user should stay on the same form
    
    Page Should Contain    Please List The Alcoholic Beverages On Your Menu
    Page Should Contain Element   xpath=//*[@id="alBvname1"]
    ${bvg_name}=    Get Element Attribute    xpath=//*[@id="alBvname1"]    value
    Should be equal as strings    ${bvg_name}    Corona
    
    Page Should Contain Element   xpath=//*[@id="alBvDesc1"]
    ${bvg_desc}=    Get Element Attribute    xpath=//*[@id="alBvDesc1"]    value
    Should be equal as strings    ${bvg_desc}    nice beer
    
    Page Should Contain Element   xpath=//*[@id="price11"]
    ${bvg_price11}=    Get Element Attribute    xpath=//*[@id="price11"]    value
    Should be equal    ${bvg_price11}    5.99    
    Close Browser
    
5.5.2.2_menu_settings_menu_subcategory_alcoholic_bvgs_add1st
    login pkg1
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories food  
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console     going to alcoholic beverages togo 
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    log to console    delete bvg1 if it exists
    ${bvg1_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname1"] 
    Run Keyword If   '${bvg1_exists}' == 'True'   Click Element    xpath=//*[@id="delete1"]
    log to console    Bvg2 will now become Bvg1 if Bvg2 existed
    log to console    delete bvg1 if it exists
    ${bvg1_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname1"] 
    Run Keyword If   '${bvg1_exists}' == 'True'   Click Element    xpath=//*[@id="delete1"]
    
    #Scroll Element Into View    xpath=//*[@id="anotherEntry"]
    #log to console   delete bvg1 if it exists
    #${bvg1_exists}=   Run Keyword And Return Status   Page Should Contain Element   xpath=//*[@id="alBvname1"]
    #Run Keyword If   '${bvg1_exists}' == 'True'   Click Element    xpath=//*[@id="delete1"]
    
    Click Element    xpath=//*[@id="clickToContinue"]
    #Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/non-alcoholic-beverages-togo"]  
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/non-alcoholic-beverages-togo"]
    Sleep   4s
    Page Should Contain    Please List The Non-Alcoholic Beverages On Your Menu
    Wait Until Page Contains   Please List The Non-Alcoholic Beverages On Your Menu    5
    Wait Until Page Contains   Non-Alcoholic Beverage # 1    5
    Wait Until Element Is Visible     xpath=//*[@id="alBvType1"]    5
    #Click Element    xpath=//*[@id="goBack"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    Sleep   1s
    Scroll Element Into View     xpath=//*[@id="alBvname1"]
    Wait Until Element Is Visible     xpath=//*[@id="alBvname1"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    
    #Sleep  2s
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    #Click Element    xpath=//*[@id="noPopUpCancelChanges1"]
    #log to console    going to food
    #Sleep  2s
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #log to console    going to alcoholic beverages togo
    #page should contain    Please List The Alcoholic Beverages On Your Menu
    log to console    adding first beverage
    #Sleep   1s
    #click element    xpath=//*[@id="delete1"]
    #sleep  2s
    #click element  xpath=//*[@id="anotherEntry"]

    Input text    xpath=//*[@id="alBvname1"]    ${BVG1_NAME}
    log to console    enter type1 as ${BVG1_TYPE}
    click element    xpath=//*[@id="alBvType1"]
    click element    xpath=//*[contains(text(),'${BVG1_TYPE}')]   
    sleep  3s
    log to console    enter description1 as......${BVG1_DESC}
    Input text    xpath=//*[@id="alBvDesc1"]    ${BVG1_DESC}
    
    Input text    xpath=//*[@id="size11"]    ${BVG1_SIZE11}
    click element   xpath=//*[@id="size_select11"]
    #click element  xpath=//*[contains(data-value(),'${BVG1_SIZE_SELECTED_11}')]
    click element    xpath=//*[contains(@data-value,'${BVG1_SIZE_SELECTED_11}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price11"]    ${BVG1_PRICE11}
    click element   xpath=//*[@id="comesin11"]
    #click element   xpath=//*[contains(text(),'${BVG1_COMESIN11}')]
    click element   xpath=//*[contains(@data-value,'${BVG1_COMESIN11}')]
    Input text    xpath=//*[@id="inunit11"]    ${BVG1_INUNIT11}
    Input text    xpath=//*[@id="calories11"]    ${BVG1_CALORIES11}
    
    Input text    xpath=//*[@id="size12"]    ${BVG1_SIZE12}
    click element   xpath=//*[@id="size_select12"]
    #click element  xpath=//*[contains(data-value(),'${BVG1_SIZE_SELECTED_12}')]
    click element    xpath=//*[contains(@data-value,'${BVG1_SIZE_SELECTED_12}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price12"]    ${BVG1_PRICE12}
    click element   xpath=//*[@id="comesin12"]
    #click element   xpath=//*[contains(text(),'${BVG1_COMESIN12}')]
    click element   xpath=//*[contains(@data-value,'${BVG1_COMESIN12}')]
    Input text    xpath=//*[@id="inunit12"]    ${BVG1_INUNIT12}
    Input text    xpath=//*[@id="calories12"]    ${BVG1_CALORIES12}

    Input text    xpath=//*[@id="size13"]    ${BVG1_SIZE13}
    click element   xpath=//*[@id="size_select13"]
    #click element  xpath=//*[contains(data-value(),'${BVG1_SIZE_SELECTED_13}')]
    click element    xpath=//*[contains(@data-value,'${BVG1_SIZE_SELECTED_13}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price13"]    ${BVG1_PRICE13}
    click element   xpath=//*[@id="comesin13"]
    #click element   xpath=//*[contains(text(),'${BVG1_COMESIN13}')]
    click element   xpath=//*[contains(@data-value,'${BVG1_COMESIN13}')]
    Input text    xpath=//*[@id="inunit13"]    ${BVG1_INUNIT13}
    Input text    xpath=//*[@id="calories13"]    ${BVG1_CALORIES13}
    
    Click Element     xpath=//*[@id="clickToContinue"] 
    Sleep  5s
    
viewallmenuitems_verifybvg_afteradding_bvg1    
    log to console   Verify that the bvg is displayed on View All Menu Items
    log to console   going to View All menu Items
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    page should contain    (Click On the Menu Item To View Details)

    scroll element into view     xpath=//*[@id="alBvname1"]
    page should contain element   xpath=//*[@id="alBvname1"]
    page should contain element     xpath=//*[@id="alBvg1-size1"]
    #page should contain element    xpath=//*[@id="alBvg1-calories1"]
    page should contain element    xpath=//*[@id="alBvg1-price1"]
    page should contain element     xpath=//*[@id="alBvg1-size2"]
    #page should contain element    xpath=//*[@id="alBvg1-calories2"]
    page should contain element    xpath=//*[@id="alBvg1-price2"]
    page should contain element     xpath=//*[@id="alBvg1-size3"]
    #page should contain element    xpath=//*[@id="alBvg1-calories3"]
    page should contain element    xpath=//*[@id="alBvg1-price3"]
      
    ${va_alBvg1size1}=    Get Element Attribute    xpath=//*[@id="alBvg1-size1"]    value
    Should be equal    ${va_alBvg1size1}   ${BVG1_SIZE11}${BVG1_SIZE_SELECTED_11}
    
    #${va_alBvg1calories1}=    Get Element Attribute    xpath=//*[@id="alBvg1-calories1"]    value
    #Should be equal    ${va_alBvg1calories1}   ${BVG1_CALORIES11}
    
    ${va_alBvg1price1}=    Get Element Attribute    xpath=//*[@id="alBvg1-price1"]    value
    Should be equal    ${va_alBvg1price1}   ${BVG1_PRICE11}
    
    ${va_alBvg1size2}=    Get Element Attribute    xpath=//*[@id="alBvg1-size2"]    value
    #failing this size only, rest all working.
    Should be equal   ${va_alBvg1size2}   ${BVG1_SIZE12}${BVG1_SIZE_SELECTED_12}
    
    #${va_alBvg1calories2}=    Get Element Attribute    xpath=//*[@id="alBvg1-calories2"]    value
    #Should be equal    ${va_alBvg1calories2}   ${BVG1_CALORIES12}
    
    ${va_alBvg1price2}=    Get Element Attribute    xpath=//*[@id="alBvg1-price2"]    value
    Should be equal    ${va_alBvg1price2}   ${BVG1_PRICE12}
    
    ${va_alBvg1size3}=    Get Element Attribute    xpath=//*[@id="alBvg1-size3"]    value
    Should be equal    ${va_alBvg1size3}   ${BVG1_SIZE13}${BVG1_SIZE_SELECTED_13}
    
    #${va_alBvg1calories3}=    Get Element Attribute    xpath=//*[@id="alBvg1-calories3"]    value
    #Should be equal    ${va_alBvg1calories3}   ${BVG1_CALORIES13}
    
    ${va_alBvg1price3}=    Get Element Attribute    xpath=//*[@id="alBvg1-price3"]    value
    Should be equal    ${va_alBvg1price3}   ${BVG1_PRICE13}
    
    Page should contain      ${BVG1_NAME_DESC}
    #bug-2628, value of element not readable
    #${va_bvg_name_desc}=    Get Element Attribute    xpath=//*[@id="alBvg1"]    value
    #${va_bvg_name_desc}=    Get value     xpath=//*[@id="alBvg1"]
    #Should be equal    ${va_bvg_name_desc}   ${BVG1_NAME_DESC}
    
    Scroll Element Into View     xpath=//*[@href="/logout/user/logout"]
    Click Element     xpath=//*[@href="/logout/user/logout"]
    Sleep   12s

logoutlogin_verifybvg_afteradding_bvg1    
    log to console   Verify that the bvg is displayed after logging back in
    login pkg1
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories - default tab - food
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console    going to alcoholic beverages togo
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
       
    ${beverage_name}   Get Element Attribute     xpath=//*[@id="alBvname1"]    value
    Should Be Equal As Strings    ${beverage_name}    ${BVG1_NAME}
    Log to Console     ${beverage_name}     
        
    ${beverage_size11}   Get Element Attribute      xpath=//*[@id="size11"]    value
    Should Be Equal As Numbers    ${beverage_size11}    ${BVG1_SIZE11}
    Log to Console      ${beverage_size11}
    ${beverage_price11}   Get Element Attribute      xpath=//*[@id="price11"]    value
    Should Be Equal As Numbers    ${beverage_price11}     ${BVG1_PRICE11}
    Log to Console      ${beverage_price11}
    #${sizeselected11}=    Get Element Attribute    xpath=//*[@id="size_selected111"]    value
    #Should be equal    ${sizeselected11}    ${BVG1_SIZE_SELECTED_11}
    Page Should Contain     ${BVG1_SIZE_SELECTED_11}
    Page Should Contain     ${BVG1_COMESIN11}
    ${in_unit11}=    Get Element Attribute    xpath=//*[@id="inunit11"]    value
    Should be equal    ${inunit11}    ${BVG1_INUNIT11}
    ${beverage_calories11}   Get Element Attribute      xpath=//*[@id="calories11"]    value
    Should Be Equal As Numbers    ${beverage_calories11}     ${BVG1_CALORIES11}
    Log to Console      ${beverage_calories11}
   
    ${beverage_size12}   Get Element Attribute      xpath=//*[@id="size12"]    value
    Should Be Equal As Numbers    ${beverage_size12}    ${BVG1_SIZE12}
    Log to Console      ${beverage_size12}
    ${beverage_price12}   Get Element Attribute      xpath=//*[@id="price12"]    value
    Should Be Equal As Numbers    ${beverage_price12}     ${BVG1_PRICE12}
    Log to Console      ${beverage_price12}
    #${sizeselected12}=    Get Element Attribute    xpath=//*[@id="size_selected212"]    value
    #Should be equal    ${sizeselected12}    ${BVG1_SIZE_SELECTED_12}
    Page Should Contain     ${BVG1_SIZE_SELECTED_12}
    Page Should Contain     ${BVG1_COMESIN12}
    ${in_unit11}=    Get Element Attribute    xpath=//*[@id="inunit12"]    value
    Should be equal    ${inunit11}    ${BVG1_INUNIT12}
    ${beverage_calories12}   Get Element Attribute      xpath=//*[@id="calories12"]    value
    Should Be Equal As Numbers    ${beverage_calories12}     ${BVG1_CALORIES12}
    Log to Console      ${beverage_calories12}
    
    ${beverage_size13}   Get Element Attribute      xpath=//*[@id="size13"]    value
    Should Be Equal As Numbers    ${beverage_size13}    ${BVG1_SIZE13}
    Log to Console      ${beverage_size13}
    ${beverage_price13}   Get Element Attribute      xpath=//*[@id="price13"]    value
    Should Be Equal As Numbers    ${beverage_price13}     ${BVG1_PRICE13}
    Log to Console      ${beverage_price13}
    #${sizeselected13}=    Get Element Attribute    xpath=//*[@id="size_selected313"]    value
    #Should be equal    ${sizeselected13}    ${BVG1_SIZE_SELECTED_13}
    Page Should Contain     ${BVG1_SIZE_SELECTED_13}
    Page Should Contain     ${BVG1_COMESIN13}
    ${in_unit13}=    Get Element Attribute    xpath=//*[@id="inunit13"]    value
    Should be equal    ${inunit13}    ${BVG1_INUNIT13}
    ${beverage_calories13}   Get Element Attribute      xpath=//*[@id="calories13"]    value
    Should Be Equal As Numbers    ${beverage_calories13}     ${BVG1_CALORIES13}
    Log to Console      ${beverage_calories13}
    
    #${beverage_type}   Get Element Attribute      xpath=//*[@id="alBvType1"]    value
    #Should Be Equal As Strings    ${beverage_type}    ${BVG1_TYPE}
    #Click Element    xpath=//*[@id="alBvType1"]
    #Sleep  1s
    #Page Should Contain Element   xpath=//*[contains(text(),'${BVG1_TYPE}')]
    Page Should Contain     ${BVG1_TYPE}
    
    #Wait Until Element Is Visible    xpath=//*[@id="delete1"]
    #Click Element         xpath=//*[@id="delete1"]
    #Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
    #Click Element   xpath=//*[@id="clickToContinue"]
    #log to console    going to alcoholic beverages togo
    #Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #page should contain    Please List The Alcoholic Beverages On Your Menu

viewedit_verifybvg_afteradding_bvg1
    [Tags]   BlockedByBug
    log to console   Verify that the bvg is displayed on View Edit Menu
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]    
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-menu"]
    Wait Until Element Is Visible    xpath=//*[@id="menuView"]
    click element   xpath=//*[@id="menuView"]
    Page should contain        Alcoholic Beverages
    click element    xpath=//*[contains(@data-value,'${VE_CATEGORY_ALCBVG}')]
    
    scroll element into view     xpath=//*[@id="alBvg1"]
    page should contain element   xpath=//*[@id="alBvg1"]
    page should contain element   xpath=//*[@id="alBvg1-desc"]
    page should contain element     xpath=//*[@id="alBvg1-size1"]
    page should contain element     xpath=//*[@id="alBvg1-comesin1"]
    page should contain element     xpath=//*[@id="alBvg1-inunit1"]
    page should contain element    xpath=//*[@id="alBvg1-calories1"]
    page should contain element    xpath=//*[@id="alBvg1-price1"]
    
    page should contain element     xpath=//*[@id="alBvg1-size2"]
    page should contain element     xpath=//*[@id="alBvg1-comesin2"]
    page should contain element     xpath=//*[@id="alBvg1-inunit2"]
    page should contain element    xpath=//*[@id="alBvg1-calories2"]
    page should contain element    xpath=//*[@id="alBvg1-price2"]
    
    page should contain element     xpath=//*[@id="alBvg1-size3"]
    page should contain element    xpath=//*[@id="alBvg1-calories3"]
    page should contain element     xpath=//*[@id="alBvg1-comesin3"]
    page should contain element     xpath=//*[@id="alBvg1-inunit3"]
    page should contain element    xpath=//*[@id="alBvg1-price3"]
      
    ${ve_alBvg1size1}=    Get Element Attribute    xpath=//*[@id="alBvg1-size1"]    value
    Should be equal    ${ve_alBvg1size1}   ${BVG1_SIZE11}${BVG1_SIZE_SELECTED_11}
    ${ve_alBvg1comesin1}=    Get Element Attribute    xpath=//*[@id="alBvg1-comesin1"]    value
    Should be equal    ${ve_alBvg1comesin1}   ${BVG1_COMESIN11}
    ${ve_alBvg1inunit1}=    Get Element Attribute    xpath=//*[@id="alBvg1-inunit1"]    value
    Should be equal    ${ve_alBvg1inunit1}   ${BVG1_INUNIT11}
    ${ve_alBvg1calories1}=    Get Element Attribute    xpath=//*[@id="alBvg1-calories1"]    value
    Should be equal    ${ve_alBvg1calories1}   ${BVG1_CALORIES11}
    ${ve_alBvg1price1}=    Get Element Attribute    xpath=//*[@id="alBvg1-price1"]    value
    Should be equal    ${ve_alBvg1price1}   ${BVG1_PRICE11}
    
    ${ve_alBvg1size2}=    Get Element Attribute    xpath=//*[@id="alBvg1-size2"]    value
    Should be equal   ${ve_alBvg1size2}   ${BVG1_SIZE12}${BVG1_SIZE_SELECTED_12}
    ${ve_alBvg1comesin2}=    Get Element Attribute    xpath=//*[@id="alBvg1-comesin2"]    value
    Should be equal    ${ve_alBvg1comesin2}   ${BVG1_COMESIN12}
    ${ve_alBvg1inunit2}=    Get Element Attribute    xpath=//*[@id="alBvg1-inunit2"]    value
    Should be equal    ${ve_alBvg1inunit2}   ${BVG1_INUNIT12}
    ${ve_alBvg1calories2}=    Get Element Attribute    xpath=//*[@id="alBvg1-calories2"]    value
    Should be equal    ${ve_alBvg1calories2}   ${BVG1_CALORIES12}  
    ${ve_alBvg1price2}=    Get Element Attribute    xpath=//*[@id="alBvg1-price2"]    value
    Should be equal    ${ve_alBvg1price2}   ${BVG1_PRICE12}
    
    ${ve_alBvg1size3}=    Get Element Attribute    xpath=//*[@id="alBvg1-size3"]    value
    Should be equal    ${ve_alBvg1size3}   ${BVG1_SIZE13}${BVG1_SIZE_SELECTED_13}
    ${ve_alBvg1comesin3}=    Get Element Attribute    xpath=//*[@id="alBvg1-comesin3"]    value
    Should be equal    ${ve_alBvg1comesin3}   ${BVG1_COMESIN13}
    ${ve_alBvg1inunit3}=    Get Element Attribute    xpath=//*[@id="alBvg1-inunit3"]    value
    Should be equal    ${ve_alBvg1inunit3}   ${BVG1_INUNIT13}
    ${ve_alBvg1calories3}=    Get Element Attribute    xpath=//*[@id="alBvg1-calories3"]    value
    Should be equal    ${ve_alBvg1calories3}   ${BVG1_CALORIES13}
    ${ve_alBvg1price3}=    Get Element Attribute    xpath=//*[@id="alBvg1-price3"]    value
    Should be equal    ${ve_alBvg1price3}   ${BVG1_PRICE13}
    
    Page should contain      ${BVG1_DESC}   
    ${ve_bvg_name_desc}=    Get Element Attribute    xpath=//*[@id="alBvg1-desc"]    value
    #${ve_bvg_name_desc}=    Get value     xpath=//*[@id="alBvg1-desc"]
    Should be equal    ${ve_bvg_name_desc}   ${BVG1_DESC}

5.5.2.2_menu_settings_menu_subcategory_alcoholic_bvgs_add2nd
    #login pkg1
    #Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    Adding 2nd beverage
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories food  
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console     going to alcoholic beverages togo 
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    
    Page Should Contain    Please List The Alcoholic Beverages On Your Menu
    Wait Until Page Contains   Please List The Alcoholic Beverages On Your Menu    5
    Wait Until Page Contains   Alcoholic Beverage # 1    5
    Wait Until Element Is Visible     xpath=//*[@id="alBvType1"]    5
    Sleep   1s
    Scroll Element Into View     xpath=//*[@id="anotherEntry"]
    click element  xpath=//*[@id="anotherEntry"]

    Input text    xpath=//*[@id="alBvname2"]    ${BVG2_NAME}
    log to console    enter type2 as ${BVG2_TYPE}
    click element    xpath=//*[@id="alBvType2"]
    click element    xpath=//*[contains(text(),'${BVG2_TYPE}')]   
    sleep  3s
    log to console    enter description2 as......${BVG2_DESC}
    Input text    xpath=//*[@id="alBvDesc2"]    ${BVG2_DESC}
    
    Input text    xpath=//*[@id="size21"]    ${BVG2_SIZE21}
    click element   xpath=//*[@id="size_select21"]
    #click element  xpath=//*[contains(data-value(),'${BVG2_SIZE_SELECTED_21}')]
    click element    xpath=//*[contains(@data-value,'${BVG2_SIZE_SELECTED_21}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price21"]    ${BVG2_PRICE21}
    click element   xpath=//*[@id="comesin21"]
    #click element   xpath=//*[contains(text(),'${BVG2_COMESIN21}')]
    click element   xpath=//*[contains(@data-value,'${BVG2_COMESIN21}')]
    Input text    xpath=//*[@id="inunit21"]    ${BVG2_INUNIT21}
    Input text    xpath=//*[@id="calories21"]    ${BVG2_CALORIES21}
    
    Input text    xpath=//*[@id="size22"]    ${BVG2_SIZE22}
    click element   xpath=//*[@id="size_select22"]
    #click element  xpath=//*[contains(data-value(),'${BVG2_SIZE_SELECTED_22}')]
    click element    xpath=//*[contains(@data-value,'${BVG2_SIZE_SELECTED_22}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price22"]    ${BVG2_PRICE22}
    click element   xpath=//*[@id="comesin22"]
    #click element   xpath=//*[contains(text(),'${BVG2_COMESIN22}')]
    click element   xpath=//*[contains(@data-value,'${BVG2_COMESIN22}')]
    Input text    xpath=//*[@id="inunit22"]    ${BVG2_INUNIT22}
    Input text    xpath=//*[@id="calories22"]    ${BVG2_CALORIES22}

    Input text    xpath=//*[@id="size23"]    ${BVG2_SIZE23}
    click element   xpath=//*[@id="size_select23"]
    #click element  xpath=//*[contains(data-value(),'${BVG2_SIZE_SELECTED_23}')]
    click element    xpath=//*[contains(@data-value,'${BVG2_SIZE_SELECTED_23}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price23"]    ${BVG2_PRICE23}
    click element   xpath=//*[@id="comesin23"]
    #click element   xpath=//*[contains(text(),'${BVG2_COMESIN23}')]
    click element   xpath=//*[contains(@data-value,'${BVG2_COMESIN23}')]
    Input text    xpath=//*[@id="inunit23"]    ${BVG2_INUNIT23}
    Input text    xpath=//*[@id="calories23"]    ${BVG2_CALORIES23}
    
    Click Element     xpath=//*[@id="clickToContinue"] 
    Sleep  5s
    
viewallmenuitems_verifybvg_afteradding_bvg2
    log to console   Verify that the bvg is displayed on View All Menu Items
    log to console   going to View All menu Items
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    page should contain    (Click On the Menu Item To View Details)

    scroll element into view     xpath=//*[@id="alBvname2"]
    page should contain element   xpath=//*[@id="alBvname2"]
    page should contain element     xpath=//*[@id="alBvg2-size1"]
    #page should contain element    xpath=//*[@id="alBvg2-calories1"]
    page should contain element    xpath=//*[@id="alBvg2-price1"]
    page should contain element     xpath=//*[@id="alBvg2-size2"]
    #page should contain element    xpath=//*[@id="alBvg2-calories2"]
    page should contain element    xpath=//*[@id="alBvg2-price2"]
    page should contain element     xpath=//*[@id="alBvg2-size3"]
    #page should contain element    xpath=//*[@id="alBvg2-calories3"]
    page should contain element    xpath=//*[@id="alBvg2-price3"]
      
    ${va_alBvg2size1}=    Get Element Attribute    xpath=//*[@id="alBvg2-size1"]    value
    Should be equal    ${va_alBvg2size1}   ${BVG2_SIZE21}${BVG2_SIZE_SELECTED_21}
    
    #${va_alBvg2calories1}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories1"]    value
    #Should be equal    ${va_alBvg2calories1}   ${BVG2_CALORIES21}
    
    ${va_alBvg2price1}=    Get Element Attribute    xpath=//*[@id="alBvg2-price1"]    value
    Should be equal    ${va_alBvg2price1}   ${BVG2_PRICE21}
    
    ${va_alBvg2size2}=    Get Element Attribute    xpath=//*[@id="alBvg2-size2"]    value
    #failing this size only, rest all working.
    Should be equal   ${va_alBvg2size2}   ${BVG2_SIZE22}${BVG2_SIZE_SELECTED_22}
    
    #${va_alBvg2calories2}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories2"]    value
    #Should be equal    ${va_alBvg2calories2}   ${BVG2_CALORIES22}
    
    ${va_alBvg2price2}=    Get Element Attribute    xpath=//*[@id="alBvg2-price2"]    value
    Should be equal    ${va_alBvg2price2}   ${BVG2_PRICE22}
    
    ${va_alBvg2size3}=    Get Element Attribute    xpath=//*[@id="alBvg2-size3"]    value
    Should be equal    ${va_alBvg2size3}   ${BVG2_SIZE23}${BVG2_SIZE_SELECTED_23}
    
    #${va_alBvg2calories3}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories3"]    value
    #Should be equal    ${va_alBvg2calories3}   ${BVG2_CALORIES23}
    
    ${va_alBvg2price3}=    Get Element Attribute    xpath=//*[@id="alBvg2-price3"]    value
    Should be equal    ${va_alBvg2price3}   ${BVG2_PRICE23}
    
    Page should contain      ${BVG2_DESC}
    #bug-2628, value of element not readable
    #${va_bvg_name_desc}=    Get Element Attribute    xpath=//*[@id="alBvg2"]    value
    #${va_bvg_name_desc}=    Get value     xpath=//*[@id="alBvg2"]
    #Should be equal    ${va_bvg_name_desc}   ${BVG2_NAME_DESC}
    
    Scroll Element Into View     xpath=//*[@href="/logout/user/logout"]
    Click Element     xpath=//*[@href="/logout/user/logout"]
    Sleep   12s
    
logoutlogin_verifybvg_afteradding_bvg2
    log to console   Verify that the bvg is displayed after logging back in
    login pkg1
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories - default tab - food
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console    going to alcoholic beverages togo
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
       
    ${beverage_name}   Get Element Attribute     xpath=//*[@id="alBvname2"]    value
    Should Be Equal As Strings    ${beverage_name}    ${BVG2_NAME}
    Log to Console     ${beverage_name}     
        
    ${beverage_size21}   Get Element Attribute      xpath=//*[@id="size21"]    value
    Should Be Equal As Numbers    ${beverage_size21}    ${BVG2_SIZE21}
    Log to Console      ${beverage_size21}
    ${beverage_price21}   Get Element Attribute      xpath=//*[@id="price21"]    value
    Should Be Equal As Numbers    ${beverage_price21}     ${BVG2_PRICE21}
    Log to Console      ${beverage_price21}
    #${sizeselected21}=    Get Element Attribute    xpath=//*[@id="size_selected121"]    value
    #Should be equal    ${sizeselected21}    ${BVG2_SIZE_SELECTED_21}
    Page Should Contain     ${BVG2_SIZE_SELECTED_21}
    Page Should Contain     ${BVG2_COMESIN21}
    ${in_unit21}=    Get Element Attribute    xpath=//*[@id="inunit21"]    value
    Should be equal    ${inunit21}    ${BVG2_INUNIT21}
    ${beverage_calories21}   Get Element Attribute      xpath=//*[@id="calories21"]    value
    Should Be Equal As Numbers    ${beverage_calories21}     ${BVG2_CALORIES21}
    Log to Console      ${beverage_calories21}
   
    ${beverage_size22}   Get Element Attribute      xpath=//*[@id="size22"]    value
    Should Be Equal As Numbers    ${beverage_size22}    ${BVG2_SIZE22}
    Log to Console      ${beverage_size22}
    ${beverage_price22}   Get Element Attribute      xpath=//*[@id="price22"]    value
    Should Be Equal As Numbers    ${beverage_price22}     ${BVG2_PRICE22}
    Log to Console      ${beverage_price22}
    #${sizeselected22}=    Get Element Attribute    xpath=//*[@id="size_selected222"]    value
    #Should be equal    ${sizeselected22}    ${BVG2_SIZE_SELECTED_22}
    Page Should Contain     ${BVG2_SIZE_SELECTED_22}
    Page Should Contain     ${BVG2_COMESIN22}
    ${in_unit22}=    Get Element Attribute    xpath=//*[@id="inunit22"]    value
    Should be equal    ${inunit22}    ${BVG2_INUNIT22}
    ${beverage_calories22}   Get Element Attribute      xpath=//*[@id="calories22"]    value
    Should Be Equal As Numbers    ${beverage_calories22}     ${BVG2_CALORIES22}
    Log to Console      ${beverage_calories22}
    
    ${beverage_size23}   Get Element Attribute      xpath=//*[@id="size23"]    value
    Should Be Equal As Numbers    ${beverage_size23}    ${BVG2_SIZE23}
    Log to Console      ${beverage_size23}
    ${beverage_price23}   Get Element Attribute      xpath=//*[@id="price23"]    value
    Should Be Equal As Numbers    ${beverage_price23}     ${BVG2_PRICE23}
    Log to Console      ${beverage_price23}
    #${sizeselected23}=    Get Element Attribute    xpath=//*[@id="size_selected323"]    value
    #Should be equal    ${sizeselected23}    ${BVG2_SIZE_SELECTED_23}
    Page Should Contain     ${BVG2_SIZE_SELECTED_23}
    Page Should Contain     ${BVG2_COMESIN23}
    ${in_unit23}=    Get Element Attribute    xpath=//*[@id="inunit23"]    value
    Should be equal    ${inunit23}    ${BVG2_INUNIT23}
    ${beverage_calories23}   Get Element Attribute      xpath=//*[@id="calories23"]    value
    Should Be Equal As Numbers    ${beverage_calories23}     ${BVG2_CALORIES23}
    Log to Console      ${beverage_calories23}
    
    #${beverage_type}   Get Element Attribute      xpath=//*[@id="alBvType2"]    value
    #Should Be Equal As Strings    ${beverage_type}    ${BVG2_TYPE}
    #Click Element    xpath=//*[@id="alBvType2"]
    #Sleep  1s
    #Page Should Contain Element   xpath=//*[contains(text(),'${BVG2_TYPE}')]
    Page Should Contain     ${BVG2_TYPE}
    
    #Wait Until Element Is Visible    xpath=//*[@id="delete2"]
    #Click Element         xpath=//*[@id="delete2"]
    #Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
    #Click Element   xpath=//*[@id="clickToContinue"]
    #log to console    going to alcoholic beverages togo
    #Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #page should contain    Please List The Alcoholic Beverages On Your Menu

viewedit_verifybvg_afteradding_bvg2
    [Tags]   BlockedByBug
    log to console   Verify that the bvg is displayed on View Edit Menu
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]    
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-menu"]
    Wait Until Element Is Visible    xpath=//*[@id="menuView"]
    click element   xpath=//*[@id="menuView"]
    Page should contain        Alcoholic Beverages
    click element    xpath=//*[contains(@data-value,'${VE_CATEGORY_ALCBVG}')]
    
    scroll element into view     xpath=//*[@id="alBvg2"]
    page should contain element   xpath=//*[@id="alBvg2"]
    page should contain element   xpath=//*[@id="alBvg2-desc"]
    page should contain element     xpath=//*[@id="alBvg2-size1"]
    page should contain element     xpath=//*[@id="alBvg2-comesin1"]
    page should contain element     xpath=//*[@id="alBvg2-inunit1"]
    page should contain element    xpath=//*[@id="alBvg2-calories1"]
    page should contain element    xpath=//*[@id="alBvg2-price1"]
    
    page should contain element     xpath=//*[@id="alBvg2-size2"]
    page should contain element     xpath=//*[@id="alBvg2-comesin2"]
    page should contain element     xpath=//*[@id="alBvg2-inunit2"]
    page should contain element    xpath=//*[@id="alBvg2-calories2"]
    page should contain element    xpath=//*[@id="alBvg2-price2"]
    
    page should contain element     xpath=//*[@id="alBvg2-size3"]
    page should contain element    xpath=//*[@id="alBvg2-calories3"]
    page should contain element     xpath=//*[@id="alBvg2-comesin3"]
    page should contain element     xpath=//*[@id="alBvg2-inunit3"]
    page should contain element    xpath=//*[@id="alBvg2-price3"]
      
    ${ve_alBvg2size1}=    Get Element Attribute    xpath=//*[@id="alBvg2-size1"]    value
    Should be equal    ${ve_alBvg2size1}   ${BVG2_SIZE21}${BVG2_SIZE_SELECTED_21}
    ${ve_alBvg2comesin1}=    Get Element Attribute    xpath=//*[@id="alBvg2-comesin1"]    value
    Should be equal    ${ve_alBvg2comesin1}   ${BVG2_COMESIN21}
    ${ve_alBvg2inunit1}=    Get Element Attribute    xpath=//*[@id="alBvg2-inunit1"]    value
    Should be equal    ${ve_alBvg2inunit1}   ${BVG2_INUNIT21}
    ${ve_alBvg2calories1}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories1"]    value
    Should be equal    ${ve_alBvg2calories1}   ${BVG2_CALORIES21}
    ${ve_alBvg2price1}=    Get Element Attribute    xpath=//*[@id="alBvg2-price1"]    value
    Should be equal    ${ve_alBvg2price1}   ${BVG2_PRICE21}
    
    ${ve_alBvg2size2}=    Get Element Attribute    xpath=//*[@id="alBvg2-size2"]    value
    Should be equal   ${ve_alBvg2size2}   ${BVG2_SIZE22}${BVG2_SIZE_SELECTED_22}
    ${ve_alBvg2comesin2}=    Get Element Attribute    xpath=//*[@id="alBvg2-comesin2"]    value
    Should be equal    ${ve_alBvg2comesin2}   ${BVG2_COMESIN22}
    ${ve_alBvg2inunit2}=    Get Element Attribute    xpath=//*[@id="alBvg2-inunit2"]    value
    Should be equal    ${ve_alBvg2inunit2}   ${BVG2_INUNIT22}
    ${ve_alBvg2calories2}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories2"]    value
    Should be equal    ${ve_alBvg2calories2}   ${BVG2_CALORIES22}  
    ${ve_alBvg2price2}=    Get Element Attribute    xpath=//*[@id="alBvg2-price2"]    value
    Should be equal    ${ve_alBvg2price2}   ${BVG2_PRICE22}
    
    ${ve_alBvg2size3}=    Get Element Attribute    xpath=//*[@id="alBvg2-size3"]    value
    Should be equal    ${ve_alBvg2size3}   ${BVG2_SIZE23}${BVG2_SIZE_SELECTED_23}
    ${ve_alBvg2comesin3}=    Get Element Attribute    xpath=//*[@id="alBvg2-comesin3"]    value
    Should be equal    ${ve_alBvg2comesin3}   ${BVG2_COMESIN23}
    ${ve_alBvg2inunit3}=    Get Element Attribute    xpath=//*[@id="alBvg2-inunit3"]    value
    Should be equal    ${ve_alBvg2inunit3}   ${BVG2_INUNIT23}
    ${ve_alBvg2calories3}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories3"]    value
    Should be equal    ${ve_alBvg2calories3}   ${BVG2_CALORIES23}
    ${ve_alBvg2price3}=    Get Element Attribute    xpath=//*[@id="alBvg2-price3"]    value
    Should be equal    ${ve_alBvg2price3}   ${BVG2_PRICE23}
    
    Page should contain      ${BVG2_DESC}   
    ${ve_bvg_name_desc}=    Get Element Attribute    xpath=//*[@id="alBvg2-desc"]    value
    #${ve_bvg_name_desc}=    Get value     xpath=//*[@id="alBvg2-desc"]
    Should be equal    ${ve_bvg_name_desc}   ${BVG2_DESC}
    
5.5.2.4_menu_settings_menu_subcategory_alcoholic_bvgs_add3rd
    #login pkg1
    #Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    Adding 3rd beverage
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories food  
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console     going to alcoholic beverages togo 
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    
    Page Should Contain    Please List The Alcoholic Beverages On Your Menu
    Wait Until Page Contains   Please List The Alcoholic Beverages On Your Menu    5
    Wait Until Page Contains   Alcoholic Beverage # 1    5
    Wait Until Element Is Visible     xpath=//*[@id="alBvType2"]    5
    Sleep   1s
    Scroll Element Into View     xpath=//*[@id="anotherEntry"]
    click element  xpath=//*[@id="anotherEntry"]
    Input text    xpath=//*[@id="alBvname3"]    ${BVG3_NAME}
    log to console    enter type3 as ${BVG3_TYPE}
    click element    xpath=//*[@id="alBvType3"]
    click element    xpath=//*[contains(text(),"Cider")]   
    sleep  3s
    log to console    enter description2 as......${BVG3_DESC}
    Input text    xpath=//*[@id="alBvDesc3"]    ${BVG3_DESC}
    
    Input text    xpath=//*[@id="size31"]    ${BVG3_SIZE31}
    click element   xpath=//*[@id="size_select31"]
    #click element  xpath=//*[contains(data-value(),'${BVG2_SIZE_SELECTED_21}')]
    click element    xpath=//*[contains(@data-value,'${BVG3_SIZE_SELECTED_31}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price31"]    ${BVG3_PRICE31}
    click element   xpath=//*[@id="comesin31"]
    #click element   xpath=//*[contains(text(),'${BVG2_COMESIN21}')]
    click element   xpath=//*[contains(@data-value,'${BVG3_COMESIN31}')]
    Input text    xpath=//*[@id="inunit31"]    ${BVG3_INUNIT31}
    Input text    xpath=//*[@id="calories31"]    ${BVG3_CALORIES31}
    
    Input text    xpath=//*[@id="size32"]    ${BVG3_SIZE32}
    click element   xpath=//*[@id="size_select32"]
    #click element  xpath=//*[contains(data-value(),'${BVG2_SIZE_SELECTED_22}')]
    click element    xpath=//*[contains(@data-value,'${BVG3_SIZE_SELECTED_32}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price32"]    ${BVG3_PRICE32}
    click element   xpath=//*[@id="comesin32"]
    #click element   xpath=//*[contains(text(),'${BVG2_COMESIN22}')]
    click element   xpath=//*[contains(@data-value,'${BVG3_COMESIN32}')]
    Input text    xpath=//*[@id="inunit32"]    ${BVG3_INUNIT32}
    Input text    xpath=//*[@id="calories32"]    ${BVG3_CALORIES32}
    Input text    xpath=//*[@id="size33"]    ${BVG3_SIZE33}
    click element   xpath=//*[@id="size_select33"]
    #click element  xpath=//*[contains(data-value(),'${BVG2_SIZE_SELECTED_23}')]
    click element    xpath=//*[contains(@data-value,'${BVG3_SIZE_SELECTED_33}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    Input text    xpath=//*[@id="price33"]    ${BVG3_PRICE33}
    click element   xpath=//*[@id="comesin33"]
    #click element   xpath=//*[contains(text(),'${BVG2_COMESIN23}')]
    click element   xpath=//*[contains(@data-value,'${BVG3_COMESIN33}')]
    Input text    xpath=//*[@id="inunit33"]    ${BVG3_INUNIT33}
    Input text    xpath=//*[@id="calories33"]    ${BVG3_CALORIES33}
    
    Click Element     xpath=//*[@id="clickToContinue"] 
    Sleep  5s
    
viewallmenuitems_verifybvg_afteradding_bvg3
    log to console   Verify that the bvg is displayed on View All Menu Items
    log to console   going to View All menu Items
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    page should contain    (Click On the Menu Item To View Details)
    scroll element into view     xpath=//*[@id="alBvname3"]
    page should contain element   xpath=//*[@id="alBvname3"]
    page should contain element     xpath=//*[@id="alBvg3-size1"]
    #page should contain element    xpath=//*[@id="alBvg2-calories1"]
    page should contain element    xpath=//*[@id="alBvg3-price1"]
    page should contain element     xpath=//*[@id="alBvg3-size2"]
    #page should contain element    xpath=//*[@id="alBvg2-calories2"]
    page should contain element    xpath=//*[@id="alBvg3-price2"]
    page should contain element     xpath=//*[@id="alBvg3-size3"]
    #page should contain element    xpath=//*[@id="alBvg2-calories3"]
    page should contain element    xpath=//*[@id="alBvg3-price3"]
      
    ${va_alBvg3size1}=    Get Element Attribute    xpath=//*[@id="alBvg3-size1"]    value
    Should be equal    ${va_alBvg3size1}   ${BVG3_SIZE31}${BVG3_SIZE_SELECTED_31}
    
    #${va_alBvg2calories1}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories1"]    value
    #Should be equal    ${va_alBvg2calories1}   ${BVG2_CALORIES21}
    
    ${va_alBvg3price1}=    Get Element Attribute    xpath=//*[@id="alBvg3-price1"]    value
    Should be equal    ${va_alBvg3price1}   ${BVG3_PRICE31}
    
    ${va_alBvg3size2}=    Get Element Attribute    xpath=//*[@id="alBvg3-size2"]    value
    #failing this size only, rest all working.
    Should be equal   ${va_alBvg3size2}   ${BVG3_SIZE32}${BVG3_SIZE_SELECTED_32}
    
    #${va_alBvg2calories2}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories2"]    value
    #Should be equal    ${va_alBvg2calories2}   ${BVG2_CALORIES22}
    
    ${va_alBvg3price2}=    Get Element Attribute    xpath=//*[@id="alBvg3-price2"]    value
    Should be equal    ${va_alBvg3price2}   ${BVG3_PRICE32}
    
    ${va_alBvg3size3}=    Get Element Attribute    xpath=//*[@id="alBvg3-size3"]    value
    Should be equal    ${va_alBvg3size3}   ${BVG3_SIZE33}${BVG3_SIZE_SELECTED_33}
    
    #${va_alBvg2calories3}=    Get Element Attribute    xpath=//*[@id="alBvg2-calories3"]    value
    #Should be equal    ${va_alBvg2calories3}   ${BVG2_CALORIES23}
    
    ${va_alBvg3price3}=    Get Element Attribute    xpath=//*[@id="alBvg3-price3"]    value
    Should be equal    ${va_alBvg3price3}   ${BVG3_PRICE33}
    
    Page should contain      ${BVG3_DESC}
    #bug-2628, value of element not readable
    #${va_bvg_name_desc}=    Get Element Attribute    xpath=//*[@id="alBvg2"]    value
    #${va_bvg_name_desc}=    Get value     xpath=//*[@id="alBvg2"]
    #Should be equal    ${va_bvg_name_desc}   ${BVG2_NAME_DESC}
    
    Scroll Element Into View     xpath=//*[@href="/logout/user/logout"]
    Click Element     xpath=//*[@href="/logout/user/logout"]
    Sleep   12s
    
logoutlogin_verifybvg_afteradding_bvg3
    log to console   Verify that the bvg is displayed after logging back in
    login pkg1
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings"]
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories - default tab - food
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console    going to alcoholic beverages togo
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
       
    ${beverage_name}   Get Element Attribute     xpath=//*[@id="alBvname3"]    value
    Should Be Equal As Strings    ${beverage_name}    ${BVG3_NAME}
    Log to Console     ${beverage_name}     
        
    ${beverage_size31}   Get Element Attribute      xpath=//*[@id="size31"]    value
    Should Be Equal As Numbers    ${beverage_size31}    ${BVG3_SIZE31}
    Log to Console      ${beverage_size31}
    ${beverage_price31}   Get Element Attribute      xpath=//*[@id="price31"]    value
    Should Be Equal As Numbers    ${beverage_price31}     ${BVG3_PRICE31}
    Log to Console      ${beverage_price31}
    #${sizeselected21}=    Get Element Attribute    xpath=//*[@id="size_selected121"]    value
    #Should be equal    ${sizeselected21}    ${BVG2_SIZE_SELECTED_21}
    Page Should Contain     ${BVG3_SIZE_SELECTED_31}
    Page Should Contain     ${BVG3_COMESIN31}
    ${in_unit31}=    Get Element Attribute    xpath=//*[@id="inunit31"]    value
    Should be equal    ${inunit31}    ${BVG3_INUNIT31}
    ${beverage_calories31}   Get Element Attribute      xpath=//*[@id="calories31"]    value
    Should Be Equal As Numbers    ${beverage_calories31}     ${BVG3_CALORIES31}
    Log to Console      ${beverage_calories31}
   
    ${beverage_size32}   Get Element Attribute      xpath=//*[@id="size32"]    value
    Should Be Equal As Numbers    ${beverage_size32}    ${BVG3_SIZE32}
    Log to Console      ${beverage_size32}
    ${beverage_price32}   Get Element Attribute      xpath=//*[@id="price32"]    value
    Should Be Equal As Numbers    ${beverage_price32}     ${BVG3_PRICE32}
    Log to Console      ${beverage_price32}
    #${sizeselected22}=    Get Element Attribute    xpath=//*[@id="size_selected222"]    value
    #Should be equal    ${sizeselected22}    ${BVG2_SIZE_SELECTED_22}
    Page Should Contain     ${BVG3_SIZE_SELECTED_32}
    Page Should Contain     ${BVG3_COMESIN32}
    ${in_unit32}=    Get Element Attribute    xpath=//*[@id="inunit32"]    value
    Should be equal    ${inunit32}    ${BVG3_INUNIT32}
    ${beverage_calories32}   Get Element Attribute      xpath=//*[@id="calories32"]    value
    Should Be Equal As Numbers    ${beverage_calories32}     ${BVG3_CALORIES32}
    Log to Console      ${beverage_calories32}
    
    ${beverage_size33}   Get Element Attribute      xpath=//*[@id="size33"]    value
    Should Be Equal As Numbers    ${beverage_size33}    ${BVG3_SIZE33}
    Log to Console      ${beverage_size33}
    ${beverage_price33}   Get Element Attribute      xpath=//*[@id="price33"]    value
    Should Be Equal As Numbers    ${beverage_price33}     ${BVG3_PRICE33}
    Log to Console      ${beverage_price33}
    #${sizeselected23}=    Get Element Attribute    xpath=//*[@id="size_selected323"]    value
    #Should be equal    ${sizeselected23}    ${BVG2_SIZE_SELECTED_23}
    Page Should Contain     ${BVG3_SIZE_SELECTED_33}
    Page Should Contain     ${BVG3_COMESIN33}
    ${in_unit33}=    Get Element Attribute    xpath=//*[@id="inunit33"]    value
    Should be equal    ${inunit33}    ${BVG3_INUNIT33}
    ${beverage_calories33}   Get Element Attribute      xpath=//*[@id="calories33"]    value
    Should Be Equal As Numbers    ${beverage_calories33}     ${BVG3_CALORIES33}
    Log to Console      ${beverage_calories33}
    
    #${beverage_type}   Get Element Attribute      xpath=//*[@id="alBvType2"]    value
    #Should Be Equal As Strings    ${beverage_type}    ${BVG2_TYPE}
    #Click Element    xpath=//*[@id="alBvType2"]
    #Sleep  1s
    #Page Should Contain Element   xpath=//*[contains(text(),'${BVG2_TYPE}')]
    Page Should Contain     ${BVG3_TYPE}
    
    #Wait Until Element Is Visible    xpath=//*[@id="delete2"]
    #Click Element         xpath=//*[@id="delete2"]
    #Wait Until Element Is Visible    xpath=//*[@id="clickToContinue"]
    #Click Element   xpath=//*[@id="clickToContinue"]
    #log to console    going to alcoholic beverages togo
    #Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    #page should contain    Please List The Alcoholic Beverages On Your Menu
viewedit_verifybvg_afteradding_bvg3
    [Tags]   BlockedByBug
    log to console   Verify that the bvg is displayed on View Edit Menu
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]    
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-menu"]
    Wait Until Element Is Visible    xpath=//*[@id="menuView"]
    click element   xpath=//*[@id="menuView"]
    Page should contain        Alcoholic Beverages
    click element    xpath=//*[contains(@data-value,'${VE_CATEGORY_ALCBVG}')]
    
    scroll element into view     xpath=//*[@id="alBvg3"]
    page should contain element   xpath=//*[@id="alBvg3"]
    page should contain element   xpath=//*[@id="alBvg3-desc"]
    page should contain element     xpath=//*[@id="alBvg3-size1"]
    page should contain element     xpath=//*[@id="alBvg3-comesin1"]
    page should contain element     xpath=//*[@id="alBvg3-inunit1"]
    page should contain element    xpath=//*[@id="alBvg3-calories1"]
    page should contain element    xpath=//*[@id="alBvg3-price1"]
    
    page should contain element     xpath=//*[@id="alBvg3-size2"]
    page should contain element     xpath=//*[@id="alBvg3-comesin2"]
    page should contain element     xpath=//*[@id="alBvg3-inunit2"]
    page should contain element    xpath=//*[@id="alBvg3-calories2"]
    page should contain element    xpath=//*[@id="alBvg3-price2"]
    
    page should contain element     xpath=//*[@id="alBvg3-size3"]
    page should contain element    xpath=//*[@id="alBvg3-calories3"]
    page should contain element     xpath=//*[@id="alBvg3-comesin3"]
    page should contain element     xpath=//*[@id="alBvg3-inunit3"]
    page should contain element    xpath=//*[@id="alBvg3-price3"]
      
    ${ve_alBvg3size1}=    Get Element Attribute    xpath=//*[@id="alBvg3-size1"]    value
    Should be equal    ${ve_alBvg3size1}   ${BVG3_SIZE31}${BVG3_SIZE_SELECTED_31}
    ${ve_alBvg3comesin1}=    Get Element Attribute    xpath=//*[@id="alBvg3-comesin1"]    value
    Should be equal    ${ve_alBvg3comesin1}   ${BVG3_COMESIN31}
    ${ve_alBvg3inunit1}=    Get Element Attribute    xpath=//*[@id="alBvg3-inunit1"]    value
    Should be equal    ${ve_alBvg3inunit1}   ${BVG3_INUNIT31}
    ${ve_alBvg3calories1}=    Get Element Attribute    xpath=//*[@id="alBvg3-calories1"]    value
    Should be equal    ${ve_alBvg3calories1}   ${BVG3_CALORIES31}
    ${ve_alBvg3price1}=    Get Element Attribute    xpath=//*[@id="alBvg3-price1"]    value
    Should be equal    ${ve_alBvg3price1}   ${BVG3_PRICE31}
    
    ${ve_alBvg3size2}=    Get Element Attribute    xpath=//*[@id="alBvg3-size2"]    value
    Should be equal   ${ve_alBvg3size2}   ${BVG3_SIZE32}${BVG3_SIZE_SELECTED_32}
    ${ve_alBvg3comesin2}=    Get Element Attribute    xpath=//*[@id="alBvg3-comesin2"]    value
    Should be equal    ${ve_alBvg3comesin2}   ${BVG3_COMESIN32}
    ${ve_alBvg3inunit2}=    Get Element Attribute    xpath=//*[@id="alBvg3-inunit2"]    value
    Should be equal    ${ve_alBvg3inunit2}   ${BVG3_INUNIT32}
    ${ve_alBvg3calories2}=    Get Element Attribute    xpath=//*[@id="alBvg3-calories2"]    value
    Should be equal    ${ve_alBvg3calories2}   ${BVG3_CALORIES32}  
    ${ve_alBvg3price2}=    Get Element Attribute    xpath=//*[@id="alBvg3-price2"]    value
    Should be equal    ${ve_alBvg3price2}   ${BVG3_PRICE32}
    
    ${ve_alBvg3size3}=    Get Element Attribute    xpath=//*[@id="alBvg3-size3"]    value
    Should be equal    ${ve_alBvg3size3}   ${BVG3_SIZE33}${BVG3_SIZE_SELECTED_33}
    ${ve_alBvg3comesin3}=    Get Element Attribute    xpath=//*[@id="alBvg3-comesin3"]    value
    Should be equal    ${ve_alBvg3comesin3}   ${BVG3_COMESIN33}
    ${ve_alBvg3inunit3}=    Get Element Attribute    xpath=//*[@id="alBvg3-inunit3"]    value
    Should be equal    ${ve_alBvg3inunit3}   ${BVG3_INUNIT33}
    ${ve_alBvg3calories3}=    Get Element Attribute    xpath=//*[@id="alBvg3-calories3"]    value
    Should be equal    ${ve_alBvg3calories3}   ${BVG3_CALORIES33}
    ${ve_alBvg3price3}=    Get Element Attribute    xpath=//*[@id="alBvg3-price3"]    value
    Should be equal    ${ve_alBvg3price3}   ${BVG3_PRICE33}
    
    Page should contain      ${BVG3_DESC}   
    ${ve_bvg_name_desc}=    Get Element Attribute    xpath=//*[@id="alBvg3-desc"]    value
    #${ve_bvg_name_desc}=    Get value     xpath=//*[@id="alBvg2-desc"]
    Should be equal    ${ve_bvg_name_desc}   ${BVG3_DESC}

#5.5.2.4_menu_settings_menu_subcategory_alcoholic_bvgs_delete_
    #log to console    adding a beverage
    #Sleep   1s
    #click element    xpath=//*[@id="delete1"]
    #sleep  2s
    #click element  xpath=//*[@id="anotherEntry"]
    #Input text    xpath=//*[@id="alBvname3"]    ${BVG1_NAME}
    #log to console    enter type as ${BVG3_TYPE}
    #click element    xpath=//*[@id="alBvType3"]
    #click element    xpath=//*[contains(text(),'${BVG3_TYPE}')]   
    #sleep  3s
    #log to console    enter description as......${BVG3_DESC}
    #Input text    xpath=//*[@id="alBvDesc3"]    ${BVG3_DESC}
    
    #Input text    xpath=//*[@id="size31"]    ${BVG3_SIZE31}
    #click element   xpath=//*[@id="size_selected131"]
    #click element  xpath=//*[contains(data-value(),'${BVG3_SIZE_SELECTED_31}')]
    #click element    xpath=//*[contains(@data-value,'${BVG3_SIZE_SELECTED_31}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    #Input text    xpath=//*[@id="price31"]    ${BVG3_PRICE31}
    #click element   xpath=//*[@id="comesin31"]
    #click element   xpath=//*[contains(text(),'${BVG3_COMESIN31}')]
    #click element   xpath=//*[contains(@data-value,'${BVG3_COMESIN31}')]
    #Input text    xpath=//*[@id="inunit31"]    ${BVG3_INUNIT31}
    #Input text    xpath=//*[@id="calories31"]    ${BVG3_CALORIES31}
    
    #Input text    xpath=//*[@id="size32"]    ${BVG3_SIZE32}
    #click element   xpath=//*[@id="size_select32"]
    #click element  xpath=//*[contains(data-value(),'${BVG3_SIZE_SELECTED_32}')]
    #click element    xpath=//*[contains(@data-value,'${BVG3_SIZE_SELECTED_32}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    #Input text    xpath=//*[@id="price32"]    ${BVG3_PRICE32}
    #click element   xpath=//*[@id="comesin32"]
    #click element   xpath=//*[contains(text(),'${BVG3_COMESIN32}')]
    #click element   xpath=//*[contains(@data-value,'${BVG3_COMESIN32}')]
    #Input text    xpath=//*[@id="inunit32"]    ${BVG3_INUNIT32}
    #Input text    xpath=//*[@id="calories32"]    ${BVG3_CALORIES32}
    #Input text    xpath=//*[@id="size33"]    ${BVG3_SIZE33}
    #click element   xpath=//*[@id="size_selected333"]
    #click element  xpath=//*[contains(data-value(),'${BVG3_SIZE_SELECTED_33}')]
    #click element    xpath=//*[contains(@data-value,'${BVG3_SIZE_SELECTED_33}')]
    #close the popup by selecting None
    #click element  xpath=//*[contains(text(),'None')]   
    #Input text    xpath=//*[@id="price33"]    ${BVG3_PRICE33}
    #click element   xpath=//*[@id="comesin33"]
    #click element   xpath=//*[contains(text(),'${BVG3_COMESIN33}')]
    #click element   xpath=//*[contains(@data-value,'${BVG3_COMESIN33}')]
    #Input text    xpath=//*[@id="inunit33"]    ${BVG3_INUNIT33}
    #Input text    xpath=//*[@id="calories33"]    ${BVG3_CALORIES33}
    
    #Click Element     xpath=//*[@id="clickToContinue"] 
    #Sleep  5s
    
5.5.2.4_menu_settings_menu_subcategory_alcoholic_bvgs_delete_2nd bev
    log to console    delete  2nd beverage
    log to console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    log to console    going to menu sub categories food  
    Wait Until Element Is Visible   xpath=//*[@href="/user/menu-settings/menu-sub-category"]  
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category"]
    log to console     going to alcoholic beverages togo 
    Wait Until Element Is Visible    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    click element    xpath=//*[@href="/user/menu-settings/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    Sleep  2s
    #Sleep   1s
    #click element    xpath=//*[@id="delete1"]
    #sleep  2s
    click element  xpath=//*[@id="delete2"]
    sleep  2s
    Click Element     xpath=//*[@id="clickToContinue"] 
    Sleep  5s
    
viewallmenuitems_verifybvg_afterdeleting_bvg2
    log to console   Verify that the bvg is displayed on View All Menu Items
    log to console   going to View All menu Items
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    page should contain    (Click On the Menu Item To View Details)
    scroll element into view     xpath=//*[@id="alBvname1"]
    page should contain element   xpath=//*[@id="alBvname1"]
    page should contain element     xpath=//*[@id="alBvg1-size1"]
    #page should contain element    xpath=//*[@id="alBvg3-calories1"]
    page should contain element    xpath=//*[@id="alBvg1-price1"]
    page should contain element     xpath=//*[@id="alBvg1-size2"]
    #page should contain element    xpath=//*[@id="alBvg3-calories2"]
    page should contain element    xpath=//*[@id="alBvg1-price2"]
    page should contain element     xpath=//*[@id="alBvg1-size3"]
    #page should contain element    xpath=//*[@id="alBvg3-calories3"]
    page should contain element    xpath=//*[@id="alBvg1-price3"]    
    
viewallmenuitems_verifybvg_afterdeleting_bvg2
    log to console   Verify that the bvg is displayed on View All Menu Items
    log to console   going to View All menu Items
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    page should contain    (Click On the Menu Item To View Details)
    scroll element into view     xpath=//*[@id="alBvname2"]
    page should contain element   xpath=//*[@id="alBvname2"]
    page should contain element     xpath=//*[@id="alBvg2-size1"]
    #page should contain element    xpath=//*[@id="alBvg2-calories1"]
    page should contain element    xpath=//*[@id="alBvg2-price2"]
    page should contain element     xpath=//*[@id="alBvg2-size2"]
    #page should contain element    xpath=//*[@id="alBvg2-calories2"]
    page should contain element    xpath=//*[@id="alBvg2-price2"]
    page should contain element     xpath=//*[@id="alBvg2-size3"]
    #page should contain element    xpath=//*[@id="alBvg3-calories3"]
    page should contain element    xpath=//*[@id="alBvg2-price3"]


viewallmenuitems_verifybvg_afterdeleting_bvg2
    [Tags]   Do Not Run
    log to console   Verify that the bvg is NOT displayed on View All Menu Items
    log to console   going to View All menu Items
    click element    xpath=//*[@href="/user/menu-settings/menu-items"]
    page should contain    Please Add The Dishes In Your Restaurant To The Menu.
    sleep   1s
    click element    xpath=//*[@href="/user/menu-settings/menu-items/view-all-menu-items"]
    page should contain    (Click On the Menu Item To View Details)
    #scroll element into view     xpath=//*[@id="alBvg3"]
    page should not contain element   xpath=//*[@id="alBvg2"]
    page should not contain element     xpath=//*[@id="alBvg2-size1"]
    #page should not contain element    xpath=//*[@id="alBvg3-calories1"]
    page should not contain element    xpath=//*[@id="alBvg2-price1"]
    page should not contain element     xpath=//*[@id="alBvg2-size2"]
    #page should not contain element    xpath=//*[@id="alBvg3-calories2"]
    page should not contain element    xpath=//*[@id="alBvg2-price2"]
    page should not contain element     xpath=//*[@id="alBvg2-size3"]
    #page should not contain element    xpath=//*[@id="alBvg2-calories3"]
    page should not contain element    xpath=//*[@id="alBvg2-price3"]

5.5.2.4_menu_settings_menu_subcategory_alcoholic_bvgs_delete_all_X
    [Tags]   Do Not Run
    Input text    xpath=//*[@id="alBvname1"]    firstalcoholicdrink
    log to console    enter type1 as Wine
    click element    xpath=//*[@id="alBvType1"]
    click element  xpath=//*[contains(text(),'Wine')]
    log to console    enter description1 as......this is a alcoholic drink
    Input text    xpath=//*[@id="alBvDesc1"]    this is a alcoholic drink  
    #Input text    xpath=//*[@id="size"]    4
    #Input text    xpath=//*[@id="price"]    4.5
    #Input text    xpath=//*[@id="#in 1 unit"]    3
    #Input text    xpath=//*[@id="Calories"]    140
    Click Element     xpath=//*[@id="anotherEntry"] 
    Input text    xpath=//*[@id="alBvname2"]    secondalcoholicdrink
    log to console    enter type1 as Wine
    click element    xpath=//*[@id="alBvType2"]
    click element  xpath=//*[contains(text(),'Wine')]
    log to console    enter description1 as......this is a alcoholic drink
    Input text    xpath=//*[@id="alBvDesc1"]    this is a alcoholic drink  
    #Input text    xpath=//*[@id="size"]    4
    #Input text    xpath=//*[@id="price"]    4.5
    #Input text    xpath=//*[@id="#in 1 unit"]    3
    #Input text    xpath=//*[@id="Calories"]    140
    click Element         xpath=//*[@id="delete1"]
    wait Until Element Is Not Visible       xpath=//*[@id="delete1"]
    click Element         xpath=//*[@id="delete2"]
    wait Until Element Is Not Visible       xpath=//*[@id="delete2"]
    page should not contain     firstalcoholicdrink
    page should not contain     secondalcoholicdrink
