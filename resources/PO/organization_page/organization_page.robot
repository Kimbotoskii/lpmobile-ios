*** Settings ***
Library     AppiumLibrary
Resource   var_org.robot

*** Keywords ***
User verified organization page
    Wait Until Element Is Visible    ${organization_page}
