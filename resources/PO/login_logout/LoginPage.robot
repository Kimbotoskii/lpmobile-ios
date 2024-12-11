*** Settings ***
Library     AppiumLibrary
Resource    ../../main_variable.robot
Resource    var_login_logout.robot

*** Keywords ***
User can view Privacy Notice
     Wait Until Element Is Visible       ${continue_button}  30s
     Click Element          ${continue_button}

User view Welcome Page
     Wait Until Element Is Visible    ${Sign_in_button}    30s

User click Welcome Page
    Wait Until Element Is Visible    ${Sign_in_button}    30s
    Click Element                    ${Sign_in_button}

User can Enter Username
    Wait Until Element Is Visible    ${username_field}    30s
    Click Element                    ${username_field}
    Input Text                       ${username_field}     ${USERNAME}
    Click Element                    ${use_password_button}

User can Enter Password
    Wait Until Element Is Visible    ${password_field}   30s
    Click Element                    ${password_field}
    Input Text                       ${password_field}     ${PASSWORD}
    Click Element                    ${submit_button}

User Able to Login
    User view Welcome Page
    User click Welcome Page
    User can Enter Username
    User can Enter Password



