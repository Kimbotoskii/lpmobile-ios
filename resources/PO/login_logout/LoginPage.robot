*** Settings ***
Library     AppiumLibrary
Resource    ../../main_variable.robot
Resource    var_login_logout.robot

*** Keywords ***
User can view Welcome Page
    Wait Until Element Is Visible    ${Sign_in_button}
    Click Element                    ${Sign_in_button}
    Sleep    3s
    Tap With Positions    253    498

User can Enter Username
    Wait Until Element Is Visible    ${username_field}
    Click Element                    ${username_field}
    Input Text                       ${username_field}     ${USERNAME}
    Click Element                    ${use_password_button}

User can Enter Password
    Wait Until Element Is Visible    ${password_field}
    Click Element                    ${password_field}
    Input Text                       ${password_field}     ${PASSWORD}
    Click Element                    ${submit_button}

User Navigate to HomePage
    Wait Until Element Is Visible   ${drawer_button}      30s

User Able to Login
    User can view Welcome Page
    User can Enter Username
    User can Enter Password
    User Navigate to HomePage


