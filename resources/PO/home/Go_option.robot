*** Settings ***
Library     AppiumLibrary
Resource   var_home.robot
Resource   ../organization_page/organization_page.robot

*** Keywords ***
User go to option
    Wait Until Element Is Visible     ${option_button}
    Click Element    ${option_button}
    Wait Until Element Is Visible    ${org_setting_button}
    Click Element     ${org_setting_button}

User go to organization
      User go to option
      User verified organization page

