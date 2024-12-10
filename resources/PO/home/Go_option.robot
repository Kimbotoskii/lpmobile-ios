*** Settings ***
Library     AppiumLibrary
Resource   var_home.robot
Resource   ../organization_page/organization_page.robot

*** Keywords ***
User validate home
    Wait Until Element Is Visible     ${option_button}  30s

User go to option
    Wait Until Element Is Visible     ${option_button}  30s
    Click Element    ${option_button}

User go to my account
    User go to option
    Wait Until Element Is Visible           ${account_button}   30s
    Click Element                 ${account_button}

User go to organization
    User go to option
    Wait Until Element Is Visible    ${org_setting_button}  30s
    Click Element     ${org_setting_button}

