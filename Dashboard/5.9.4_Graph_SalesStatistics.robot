*** Settings ***
Default tags      dashboard
Library           SeleniumLibrary
Library           Eyes-Selenium
Library           RobotAppEyes
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot
#Resource          ../Resource/image_comparison.robot
Suite Teardown        close all browsers

*** Test Cases ***
#Image Comparison Ok
  #Compare Images    ./reference-screenshots/reference-1.png    ./test-screenshots/test-1.png   0.1
#Image Comparison NOk
  #Compare Images    ./reference-screenshots/reference-2.png    ./test-screenshots/test-2.png   0.1
  
Dashboard_PickUp_LastWeek
    #Checks if user is logged out if logout button is clicked
    login pkg1
    log to console    login is successful.
    BuiltIn.Sleep    3s
    Page Should Contain    Top Sellers (This Month)
    
    #page should contain image    chartLastweek
    #element should be visible    chartLastweek 
    #${image_url}=  Get Element Attribute  chartLastweek  src
    #log to console  ${image_url}
    #Run Process  curl  -o  logo.png   ${image_url}
    
    #Download Image     /static/media/dish1_100x100.f65354ba.jpg
    #Should Be Equal      ../Resource/DashboardGraph_LastWeek2.png    ../Resource/DashboardGraph_LastWeek.png
    #Compare Images      ../Resource/DashboardGraph_LastWeek2.png    ../Resource/DashboardGraph_LastWeek.png    0.1
    RobotAppEyes.Open Eyes Session
    RobotAppEyes.Compare Image      ../Resource/DashboardGraph_LastWeek2.png    ../Resource/DashboardGraph_LastWeek.png
    RobotAppEyes.Close Eyes Session
    
    #Page Should Contain Image     
    Wait Until Element Is Visible    xpath=//*[@href="/login"]     10s
    log to console    logout is successful.
    

    close browser
