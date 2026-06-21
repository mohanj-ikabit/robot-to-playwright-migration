*** Settings ***
Default Tags      logout
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot

Suite Teardown    Close All Browsers





*** Test Cases ***
5.1.7.1_user_logout
    [Documentation]    Checks if user is logged out if logout button is clicked
    Login Pkg1
    Log To Console    Login is successful.
    Page Should Contain    Best8Eats Dashboard
    Log To Console    Clicking logout
    Logout And Verify
    Log To Console    Logout is successful.


5.1.8.1_user_login_logout_goback
    [Documentation]    Login, logout, try to go back to the last viewed form
    Login Pkg1
    Log To Console    Login is successful.
    Page Should Contain    Best8Eats Dashboard
    Log To Console    Clicking logout
    Logout And Verify
    Log To Console    Going back to check if previous pages are accessible
    Verify User Cannot Navigate_Back_To_Dashboard
