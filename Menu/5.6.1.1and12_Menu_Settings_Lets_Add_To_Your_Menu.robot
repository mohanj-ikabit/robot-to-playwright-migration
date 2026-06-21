#this contains autoit test cases it cant be headless browser testing
*** Settings ***
Default Tags      letsaddtomenu
Library           SeleniumLibrary
Library            OperatingSystem     
Resource          ../Resource/Checkbox.robot
Resource          ../Resource/genericfunctions.robot
    
*** Test Cases ***
5.6.1.1_menu_settings_menu_items_let's_add_to_your_menu_max_data
    login
    Click element    xpath=//*[@href="/user/menu-help"]
    log to console     login successful and entering text in lets add to your menu.
    click element    xpath=//*[@href="/user/menu-items/add-menu-items"]
    log to console    entering maxdish in Name of the dish
    Input text    xpath=//*[@id="dishName"]    maxdish
    log to console    adding an image of dish.
    Create File    C:\\Users\\prathik\\Downloads\\food.png    file    SYSTEM
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    food.png
    Sleep    2
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    2
    click element    xpath=//*[@id="image-logo-select"]
    Remove File    C:\\Users\\prathik\\Downloads\\food.png
    
    log to console    dish comes with
    Input text    xpath=//*[@id="dishComesWith"]    maxdishside
    log to console    enter calories as 560
    Input text    xpath=//*[@id="calories"]    560
    
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    scroll element into view    xpath=//*[@id="eaOneCent"]
    log to console    selecting Appetizers from dish belongs to.
    click element    xpath=//*[@id="dishBelongsTo"]
    click element    xpath=//*[@id="menu-dishBelongsTo"]/div[3]/ul/li[2]
    log to console    entering ingredients ingred1 ingred2 ingred3 ingred4 ingred5
    Input text    xpath=//*[@id="ingredOne"]    ingred1
    Input text    xpath=//*[@id="ingredTwo"]    ingred2
    Input text    xpath=//*[@id="ingredThree"]    ingred3
    Input text    xpath=//*[@id="ingredFour"]    ingred4
    Input text    xpath=//*[@id="ingredFive"]    ingred5
    click element    xpath=//*[@id="ingredOneOptionalNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="ingredTwoOptionalNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="ingredThreeOptionalNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="ingredFourOptionalNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="ingredFiveOptionalNo"]/span[1]/span[1]/input
    log to console    entering additional desc as This is going all to well to be in !@#$%^&*(12398756987
    Input text    xpath=//*[@id="dishAdditionalDesc"]    This is going all to well to be in !@#$%^&*(12398756987
    log to console    unselecting the cost by portion checkbox
    click element    xpath=
    scroll element into view    xpath=//*[@id="eaThreeText"]
    Input text    xpath=//*[@id="amountDishDollars"]    500
    Input text    xpath=//*[@id="amountDishDollars"]    500
    Input text    xpath=//*[@id="amountDishDollars"]    500
    Input text    xpath=//*[@id="amountDishDollars"]    500
    Input text    xpath=//*[@id="amountDishDollars"]    500
    Input text    xpath=//*[@id="eaOneText"]    new1
    Input text    xpath=//*[@id="eaOneDollar"]    500
    Input text    xpath=//*[@id="eaOneCent"]    500
    Input text    xpath=//*[@id="eaTwoText"]    new2
    Input text    xpath=//*[@id="eaTwoDollar"]    500
    Input text    xpath=//*[@id="eaTwoCent"]    500
    Input text    xpath=//*[@id="eaThreeText"]    new3
    Input text    xpath=//*[@id="eaThreeDollar"]    500
    Input text    xpath=//*[@id="eaThreeCent"]    500
    Input text    xpath=//*[@id="eaFourText"]    new4
    Input text    xpath=//*[@id="eaFourDollar"]    500
    Input text    xpath=//*[@id="eaFourCent"]    500
    Input text    xpath=//*[@id="eaFiveText"]    new5
    Input text    xpath=//*[@id="eaFiveDollar"]    500
    Input text    xpath=//*[@id="eaFiveCent"]    500
    scroll element into view    xpath=//*[@id="calories"]
    click element    xpath=//*[@id="glutenFreeNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="vegetarianNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="eggarianNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="veganNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="soyNutsNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="eggsNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="dairyNo"]/span[1]/span[1]/input
    click element    xpath=//*[@id="shellfishNo"]/span[1]/span[1]/input
    Input text    xpath=//*[@id="calories"]    5000
    ${d}    get text    xpath=
    log to console    ${d}
    click element    xpath=//*[@id="click-to-continue"]
    ${d}    get text    xpath=
    log to console    ${d}
    ${d}    get text    xpath=
    log to console    ${d}
    ${d}    get text    xpath=
    log to console    ${d}
    ${d}    get text    xpath=
    log to console    ${d}
    ${d}    get text    xpath=
    log to console    ${d}
    ${d}    get text    xpath=
    log to console    ${d}
    ${d}    get text    xpath=
    log to console    ${d}
    
    log to console    Verify the details of the dish
    Page Should Contain    maxdish
    #Clicking on dish name should take user to the tab - Let's Add To Your Menu. Verify the dish ingredients on that form.
    click button     maxdish
    ${text}=    Get text    xpath=//*[@id="${id}"]
    
    ${VALUE}   Get value     xpath=//*[@id="$dishName"] 
    Should Be Equal    ${VALUE}   maxdish
    ${VALUE}   Get value     xpath=//*[@id="$dishComesWith"] 
    Should Be Equal    ${VALUE}   maxdishside
    ${VALUE}   Get value     xpath=//*[@id="$calories"] 
    Should Be Equal    ${VALUE}   560
    
    ${VALUE}   Get value     xpath=//*[@id="$ingredOne"] 
    Should Be Equal    ${VALUE}   ingredone
    ${VALUE}   Get value     xpath=//*[@id="$ingredTwo"] 
    Should Be Equal    ${VALUE}   ingredtwo
    ${VALUE}   Get value     xpath=//*[@id="$ingredTwo"] 
    Should Be Equal    ${VALUE}   ingredthree
    ${VALUE}   Get value     xpath=//*[@id="$ingredFour"] 
    Should Be Equal    ${VALUE}   ingredfour
    ${VALUE}   Get value     xpath=//*[@id="$ingredFive"] 
    Should Be Equal    ${VALUE}   ingredfive
    
    
    close browser
    
5.6.1.12_(4.1.11.2)_let's_add_to_your_menu_file_upload_valid_image_with.png
    login
    Click element    xpath=//*[@href="/user/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    entering onedish in Name of the dish
    Input text    xpath=//*[@id="dishName"]    onedish
    log to console    adding an image of dish.
    Create File    C:\\Users\\prathik\\Downloads\\food.png    file    SYSTEM
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    food.png
    Sleep    2
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    2
    click element    xpath=//*[@id="image-logo-select"]
    Remove File    C:\\Users\\prathik\\Downloads\\food.png
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    log to console    png is accepted for uploading.
    close browser
    
5.6.1.12_(4.1.11.2)_let's_add_to_your_menu_file_upload_valid_image_with.jpg
    login
    Click element    xpath=//*[@href="/user/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    entering onedish in Name of the dish
    Input text    xpath=//*[@id="dishName"]    onedish
    log to console    adding an image of dish.
    Create File    C:\\Users\\prathik\\Downloads\\food.jpg    file    SYSTEM
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    food.jpg
    Sleep    2
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    2
    click element    xpath=//*[@id="image-logo-select"]
    Remove File    C:\\Users\\prathik\\Downloads\\food.jpg
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    log to console    png is accepted for uploading.
    close browser
    
5.6.1.12_(4.1.11.5)_let's_add_to_your_menu_file_upload_valid_image_with_large.jpg
    #this requires a large jpg file to exist in C:\\Users\\prathik\\Downloads\\food.jpg already to run the file name should be food.jpg
    login
    Click element    xpath=//*[@href="/user/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    entering onedish in Name of the dish
    Input text    xpath=//*[@id="dishName"]    onedish
    log to console    adding an image of dish.
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    food.jpg
    Sleep    2
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    2
    click element    xpath=//*[@id="image-logo-select"]
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    log to console    png is accepted for uploading.
    close browser
    
5.6.1.12_(4.1.11.6)_let's_add_to_your_menu_file_upload_valid_image_with_small.jpg
    #this requires a small jpg file to exist in C:\\Users\\prathik\\Downloads\\food.jpg already to run the file name should be food.jpg
    login
    Click element    xpath=//*[@href="/user/menu-items"]
    log to console     login successfull and entering text in lets add to your menu.
    log to console    entering onedish in Name of the dish
    Input text    xpath=//*[@id="dishName"]    onedish
    log to console    adding an image of dish.
    click element    xpath=//*[@id="drag-drop-image"]
    Wait For Active Window    WindowTitle=Open
    Win Activate    Open    &Open
    Send    Downloads
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    1
    Send    food.jpg
    Sleep    2
    control Click    Open    &Open    [CLASS:Button; INSTANCE:1]    LEFT
    Sleep    2
    click element    xpath=//*[@id="image-logo-select"]
    log to console    select breakfast from Menu(s) This Dish Is a Part Of?*
    click element    xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/div[1]/div[4]/div[2]/ul/div[1]/div[1]/span/span/input
    log to console    png is accepted for uploading.
    close browser
    
