*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    ../sbs.resource
Library    AllureLibrary    
Variables    ../POM/locator.py

*** Variables ***
${username}


*** Test Cases ***
login
    define apps
    Wait Until Element Is Visible    ${navigasi_akun}
    Click Element    ${navigasi_akun}
    Click Element    ${btn_login}
    Wait Until Element Is Visible    ${txt_input_username}    
    Input Text    ${txt_input_username}    ${username}
    Log    ${username}        
    Input Text    ${txt_input_password}    123456qwe
    Click Element    ${btn_login_app}