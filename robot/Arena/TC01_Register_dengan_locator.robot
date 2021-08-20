*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    ../sbs.resource
Library    AllureLibrary    
Variables    ../POM/locator.py

*** Variables ***


*** Test Cases ***
register
    define apps
    Wait Until Element Is Visible    ${navigasi_akun}    15
    Click Element    ${navigasi_akun}    
    Wait Until Element Is Visible    ${btn_register}    
    Click Element    ${btn_register}    
    Wait Until Element Is Visible    ${txt_username}    
    ${username} =    Generate Random String    10    [LETTERS]  
    ${email} =    Generate Random String    10    [LETTERS]
    Set Global Variable    ${username}
    Input Text    ${txt_username}    ${username}
    Input Text    ${txt_email}    ${email}@mailinator.com
    Input Text    ${txt_password}    123456qwe
    Click Element    ${btn_register_form}
    Wait Until Element Is Visible    ${btn_konfirm_yes}
    Click Element    ${btn_konfirm_yes}
    Wait Until Element Is Visible    ${btn_pilih_gender}  
    Click Element    ${btn_pilih_gender} 
    Wait Until Element Is Visible    ${btn_pilih_male}     
    Click Element    ${btn_pilih_male}
    Wait Until Element Is Visible    ${btn_save}   
    Click Element    ${btn_save}
    Sleep    5    
    Click Element    ${navigasi_akun}
    ${username} =    Get Text    ${get_username}
    Element Text Should Be    ${get_username}    ${username} 
    log    ${username}       
    Sleep    3    
    Close Application
    
