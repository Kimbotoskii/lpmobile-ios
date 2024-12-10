*** Settings ***
Library     AppiumLibrary
Resource  var_login_logout.robot

*** Keywords ***
User skip guide
    AppiumLibrary.Wait Until Element Is Visible       ${skipButton}        60s
    AppiumLibrary.Click Element      ${skipButton}