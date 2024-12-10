*** Settings ***
Library     AppiumLibrary
Resource  var_login_logout.robot
Resource  ../home/Go_option.robot
Resource  LoginPage.robot

*** Keywords ***
User Click Sign Out
    User go to my account
    Click Element                   ${Sign_Out_button}
    Wait Until Element Is Visible   ${Confirm_Sign_Out_button}
    Click Element                   ${Confirm_Sign_Out_button}

User Able to Sign Out
    User view Welcome Page
    User click Welcome Page
     User Click Sign Out

