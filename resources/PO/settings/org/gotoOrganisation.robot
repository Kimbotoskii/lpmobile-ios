*** Settings ***
Library     AppiumLibrary
Resource

*** Keywords ***
Handle Organization Visibility
    ${is_org1_visible}=    Run Keyword And Return Status    Page Should Contain Element    ${selectOrg1}
    ${is_org2_visible}=    Run Keyword And Return Status    Page Should Contain Element    ${selectOrg2}

#    IF    ${is_org1_visible}
#        Log    ${selectOrg1} is visible. Performing actions...
#        Organisation Dropdown-SWQA-Automation
#        Search Organisation
#        Change Organisation
#
#    ELSE IF    ${is_org2_visible}
#        Log    ${selectOrg2} is visible. No action needed.
#
#    ELSE
#        Log    Neither ${selectOrg1} nor ${selectOrg2} is visible.    WARN
#    END

#Go To Organisation Settings
#    AppiumLibrary.Wait Until Element Is Visible     ${organisationButton}    20s
#    AppiumLibrary.Click Element                     ${organisationButton}
#
#Organisation Dropdown-SWQA-Automation
#    AppiumLibrary.Wait Until Element Is Visible     ${selectOrg1}     20s
#    AppiumLibrary.Click Element                     ${selectOrg1}
#
#Search Organisation
#    AppiumLibrary.Wait Until Element Is Visible     ${searchOrg}     20s
#    AppiumLibrary.Input Text                        ${searchOrg}    Gaia
#
#Change Organisation
#    AppiumLibrary.Wait Until Element Is Visible     ${GaiaOrg}      20s
#    AppiumLibrary.Click Element                     ${GaiaOrg}
#
#Organisation Dropdown-2
#    AppiumLibrary.Wait Until Element Is Visible     ${selectOrg2}     20s
#    AppiumLibrary.Click Element                     ${selectOrg2}
#
#Change Organisation-2
#    AppiumLibrary.Wait Until Element Is Visible     ${AutomationPSPOrg}      20s
#    AppiumLibrary.Click Element                     ${AutomationPSPOrg}
#
#Site Dropdown
#    AppiumLibrary.Wait Until Element Is Visible     ${siteDropdown}     20s
#    AppiumLibrary.Click Element                     ${siteDropdown}
#
#Change Site to LP
#    AppiumLibrary.Wait Until Element Is Visible     ${liveProd}      20s
#    AppiumLibrary.Click Element                     ${liveProd}