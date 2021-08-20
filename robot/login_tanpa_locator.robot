*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    sbs.resource
Library    AllureLibrary    
Variables    POM/locator.py

*** Variables ***


*** Test Cases ***
register
    define apps
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/navigation_account    15
    Click Element    xpath=//android.widget.FrameLayout[@resource-id="com.sebangsa.arena:id/navigation_account"][@content-desc="Account"]    
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/btn_register    
    Click Element    id=com.sebangsa.arena:id/btn_register    
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/username    
    ${username} =    Generate Random String    10    [LETTERS]  
    ${email} =    Generate Random String    10    [LETTERS]
    Set Global Variable    ${username}
    Input Text    id=com.sebangsa.arena:id/username    ${username}
    Input Text    id=com.sebangsa.arena:id/email    ${email}@mailinator.com
    Input Text    id=com.sebangsa.arena:id/password    123456qwe
    Click Element    id=com.sebangsa.arena:id/button_register
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/action_positif
    Click Element    id=com.sebangsa.arena:id/action_positif
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/gender  
    Click Element    id=com.sebangsa.arena:id/gender 
    Wait Until Element Is Visible    xpath=//android.widget.CheckedTextView[@text="Male"]     
    Click Element    xpath=//android.widget.CheckedTextView[@text="Male"]
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/action_save    
    Click Element    id=com.sebangsa.arena:id/action_save
    Sleep    5    
    Click Element    id=com.sebangsa.arena:id/navigation_account
    ${username} =    Get Text    id=com.sebangsa.arena:id/name
    Element Text Should Be    id=com.sebangsa.arena:id/name    ${username} 
    log    ${username}       
    Sleep    3    
    Close Application
    
