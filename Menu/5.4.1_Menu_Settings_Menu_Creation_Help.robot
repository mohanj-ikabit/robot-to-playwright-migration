*** Settings ***
Default Tags      menuhelp
Library           SeleniumLibrary
#Library            FakerLibrary
Library            AutoItLibrary
Library            OperatingSystem    
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/radio button.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/URL.robot 
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/Email ID.robot
Resource          ../Resource/Text on form.robot

*** Variables ***
${THEGRILL_URL}     https://thegrillnewyork.com

*** Test Cases ***
5.4.1.4_menu_settings_menu_creation_help_select_no_for_upload
    login pkg1
    log to console    clicking menu settings
    click element    xpath=//*[@href="/user/menu-settings"]
    
    #Radio Button Should Be Set To    Yes   Yes
    Radio Button Should Be Set To    oneTimeSetupCost    Yes
    Page Should Contain Element    webUrl
    Page Should Contain Element    uploadImages
    #Page Should Contain    Your ToGo Menu
    #Page Should Contain    My website:
    Page Should Contain    Upload Menu Images:
    Page Should Contain    (Please make sure they are of readable quality, JPEG and PNG images only and upto 12 files (maximum) can be uploaded)

    #Select Radio Button    No    No
    Select Radio Button    oneTimeSetupCost    No
    Element Should Not Be Visible    webUrl
    Element Should Not Be Visible    uploadImages
    #Page Should Not Contain    Your ToGo Menu
    #Page Should Not Contain    My website:
    #Page Should Not Contain    Upload Menu Images:
    #Page Should Not Contain    (Please make sure they are of readable quality, JPEG and PNG images only and upto 12 files (maximum) can be uploaded)
    
    close browser


5.4.1.5.1_menu_settings_menu_creation_help_signup_for_upload
    [Documentation]    Input URL and verify it's retained
    
    login pkg1
    log to console    login successful
    
    log to console    navigating to Menu Settings
    click element    xpath=//*[@href="/user/menu-settings"]
    
    Scroll Element Into View    id=clickToContinue
    Input Text    xpath=//input[@id="webUrl"]    ${THEGRILL_URL}
    
    ${temp_url}=    Get Value    xpath=//*[@id="webUrl"]
    log to console    Entered URL is: ${temp_url}

    close browser


5.4.1.6_menu_settings_menu_creation_help_upload_reupload_image_form_navigation
    [Documentation]    Verify data retention after navigating away and back
    
    Login pkg1
    Log To Console    login successful
    
    Log To Console    navigating to Menu Settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    
    Scroll Element Into View    id=clickToContinue
    Input Text    xpath=//input[@id="webUrl"]    ${THEGRILL_URL}
    ${temp_url1}=    Get Value    xpath=//*[@id="webUrl"]
    Log To Console    url is ....... ${temp_url1}
    
    # Navigate away and come back
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Scroll Element Into View    id=clickToContinue
    ${temp_url2}=    Get Value    xpath=//*[@id="webUrl"]
    Log To Console    url is ....... ${temp_url2}
    
    Should Be Equal As Strings    ${temp_url1}    ${temp_url2}
    
    close browser

5.4.1.7_menu_settings_menu_creation_help_upload_image_tests
    [Tags]   Do Not Run
    Login pkg1
    Log To Console    clicking menu settings
    Click Element    xpath=//*[@href="/user/menu-settings"]
    Scroll Element Into View   clickToContinue
    Click Element    drag-drop-image
    
    #Choose a file that doesn't exist - 4.1.11.1
    Choose File    drag-drop-image    ../Resource/Testfile1.jpg
    Choose File    drag-drop-image    ../Resource/Testfile1.png
    
    #Choose a valid file that exist - 4.1.11.3 - file_upload_invalid_content_valid_extension xls file with .png
    Choose File    drag-drop-image    ../Resource/Testfile3_doc.jpg
    Choose File    drag-drop-image    ../Resource/Testfile3_xls.png
    
    #Choose a valid file that exist - 4.1.11.4 - file_upload_valid_content_invalid_extension 
    Choose File    drag-drop-image    ../Resource/Testfile4_jpg.doc
    Choose File    drag-drop-image    ../Resource/Testfile4_png.xls
    
    #Choose a valid file that exist - 4.1.11.5 - file_upload_gt_maxsize
    Choose File    drag-drop-image    ../Resource/Testfile5_validlarge.jpg
    Choose File    drag-drop-image    ../Resource/Testfile5_validlarge.png

    #Choose a valid file that exist - 4.1.11.6 - file_upload_empty_file
    Choose File    drag-drop-image    ../Resource/Testfile6_empty.jpg
    Choose File    drag-drop-image    ../Resource/Testfile6_empty.png

    #Choose a valid file that exist - 4.1.11.2 - file_upload_valid_image
    Choose File    drag-drop-image    ../Resource/Testfile2_valid.jpg
    Choose File    drag-drop-image    ../Resource/Testfile2_valid.png

    close browser
    
 5.4.1.5_menu_settings_menu_creation_help_signup_for_upload
    [Tags]   Do Not Run
    Login pkg1
    log to console    clicking menu settings
    click element    xpath=//*[@href="/user/menu-settings"]
    Radio Button Should Be Set To    oneTimeSetupCost    Yes
    sleep  2s
    wait until element is visible   xpath=//*[@id="drag-drop-image"]
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    5s
    Send   Screenshot (444).png 
    Sleep  1
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep  5s
    click element    xpath=//*[@id="uploadImages"]
