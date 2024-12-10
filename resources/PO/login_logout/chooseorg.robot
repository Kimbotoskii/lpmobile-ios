*** Settings ***
Library     AppiumLibrary
Resource  var_login_logout.robot

*** Keywords ***
click Organization
    Wait Until Element Is Visible    ${gaia_org}   30s
    Click Element                    ${gaia_org}   #this step does not change the organisation
    Swipe  200   150   200   700

Go to Next
    Wait Until Element Is Visible    ${nextButton}     30s
    Click Element                    ${nextButton}

User onboard Organization
    click Organization
    Go to Next