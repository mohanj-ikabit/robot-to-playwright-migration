*** Settings ***
Default Tags      listbox
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Text on form.robot

*** Test Cases ***
5.5.2.6_menu_settings_menu_subcategory_alcoholic_bvgs_list_matches_reqts
    login
    log to console    clicking menu settings
    log to console    going to menu sub categories
    click element    xpath=//*[@href="/user/menu-help"]
    log to console    going to alcoholic beverages togo  
    click element    xpath=//*[@href="/user/menu-sub-category/food"]
    click element    xpath=//*[@href="/user/menu-sub-category/alcoholic-beverages-togo"]
    page should contain    Please List The Alcoholic Beverages On Your Menu
    #click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div/div[1]/div[2]/div[1]/div[3]
    #Click Element At Coordinates   xpath=//select[@id="alBvType1"]     0    0
    #Click Element     xpath=//*[@id='alBvType1']
    Click Element     xpath=//select[@id="alBvType1"]  
    page should contain    Beer
    page should contain    Wine
    page should contain    Cider
    page should contain    Liquor/Spirits
    page should contain    Liqueurs
    page should contain    Others
    log to console    Type list contains all the required items which are Beer, Wine, Cider, Liquor/Spirits, liqueurs, Others
    close browser
