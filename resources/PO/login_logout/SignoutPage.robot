*** Settings ***
Library     AppiumLibrary
Resource  LoginPage.robot
Resource  var_login_logout.robot

*** Keywords ***

User can validate Username
    Click Element                   ${drawer_button}
    Click Element                   ${My_Account_Tab}
    
User can view Username Account
    Wait Until Element Is Visible    //XCUIElementTypeStaticText[@name="SWQA Automation STG"]

User Click Sign Out
    Click Element                   ${Sign_Out_button}
    Wait Until Element Is Visible   ${Confirm_Sign_Out_button}
    Click Element                   ${Confirm_Sign_Out_button}

User Able to Sign Out
    User Navigate to HomePage
    User can validate Username
    User can view Username Account
    User Click Sign Out

