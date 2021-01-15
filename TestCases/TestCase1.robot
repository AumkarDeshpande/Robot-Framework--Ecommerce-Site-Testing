*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.amazon.in/


*** Test Cases ***
OpenBrowser Test
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    @{windowTitles}=  Get Window Titles
    log to console  @{windowTitles}
    capture page screenshot  F:/Python Programms/Robot Framework/Screenshots/OpenBrowser_Test.png

Search Test
    Input Text  id:twotabsearchtextbox  mobiles
    click element  id:nav-search-submit-text
    capture page screenshot  F:/Python Programms/Robot Framework/Screenshots/Search_Test.png

Apply Filters Test

    set selenium speed  3 seconds
    click element  xpath=//li[@id='p_85/10440599031']/span/a/div/label/i                #amazonPrime
    click element  xpath=//li[@id='p_89/Samsung']/span/a/div/label/i                   #samsung
    click element  xpath=//li[@id='p_36/1318507031']/span/a                            #proce range
    click element  xpath=//li[@id='p_n_is_cod_eligible/4931671031']/span/a/div/label/i      #pay on delivery
    capture page screenshot  F:/Python Programms/Robot Framework/Screenshots/Apply_Filters_Test.png


Select First Product
    click element  xpath=//span[contains(text(),'Samsung Galaxy M51 (Electric Blue, 8GB RAM, 128GB ')]
    ${tab1}=    Select Window    NEW
    click element   xpath://input[@id="add-to-cart-button"]
    close window
    Select Window   ${tab1}


Select Second Product
    click element  xpath=//span[contains(text(),'Samsung Galaxy M51 (Electric Blue, 6GB RAM, 128GB ')]
    ${tab1}=    Select Window    NEW
    click element   xpath://input[@id="add-to-cart-button"]
    close window
    Select Window   ${tab1}

Go To Cart
    click element   xpath://div[@id="nav-cart-count-container"]
    capture page screenshot  F:/Python Programms/Robot Framework/Screenshots/Go_To_Cart.png

Close Browser Test
    Close Browser


*** Keywords ***



