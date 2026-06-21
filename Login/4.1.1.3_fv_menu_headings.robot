*** Settings ***
Default Tags      fvmenuheadings
Library           SeleniumLibrary
Library           AutoItLibrary
Library           DateTime
Resource          ../Resource/radio button.robot
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot
Resource          ../Resource/Text on form.robot
Resource          ../Resource/dropdown.robot
Resource          ../Resource/date.robot
Suite Teardown     Close all browsers

*** Test Cases ***
App_login
    Login
    
GoTo_RestaurantInfo
    Click Element    xpath=//*[@href="/user/restaurant-info"]
Check_heading_RestaurantInfo
    4_1_3_1_link_rightName     /user/restaurant-info     Restaurant Info
Check_heading_LogoTagline
    4_1_3_1_link_rightName     /user/restaurant-info/aesthetics          Logo & Tagline
Check_heading_PolicyPayments
    4_1_3_1_link_rightName     /user/restaurant-info/policy-payments     Policies & Payments
Check_heading_PromoCodes
    4_1_3_1_link_rightName     /user/restaurant-info/create-promocodes     Promo Codes
Check_heading_CalendarSettings
    4_1_3_1_link_rightName     /user/restaurant-info/calendar-settings     Calendar Settings

GoTo_MenuSettings
    Click Element    xpath=//*[@href="/user/menu-settings"]
Check_heading_MenuSettings
    4_1_3_1_link_rightName     /user/menu-settings     Menu Settings
#Check_heading_MenuSettings
    #4_1_3_1_link_rightName     /user/menu-settings     Menu Help

Check_heading_MenuCategory
    4_1_3_1_link_rightName     /user/menu-settings/menu-category     Menu Category
Check_heading_MenuSubCategory
    4_1_3_1_link_rightName     /user/menu-settings/menu-sub-category     Menu Sub Category
Check_heading_MenuItems
    4_1_3_1_link_rightName     /user/menu-settings/menu-items     Menu Items

GoTo_AccountSettings
    Click Element    xpath=//*[@href="/user/account-settings"]
Check_heading_AccountSettings
    4_1_3_1_link_rightName     /user/account-settings     Account Settings
    
GoTo_AdminSettings
    Click Element    xpath=//*[@href="/user/admin-settings"]
Check_heading_AdminSettings
    4_1_3_1_link_rightName     /user/admin-settings     Admin Settings
#Check_heading_AdminSettings
    #4_1_3_1_link_rightName     /user/admin-settings     Permissions & Approvals
Check_heading_AdminSettings_Subn_Billing
    4_1_3_1_link_rightName     /user/admin-settings/subscription-billing    Subscriptions & Billing


Check_heading_Logout
    4_1_3_1_link_rightName     /logout/user/logout     Logout
    
    

