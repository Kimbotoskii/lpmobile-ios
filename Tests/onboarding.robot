*** Settings ***
Library     AppiumLibrary
Resource    ../resources/PO/startApp.robot
Resource    ../resources/PO/login_logout/skipGuide.robot
Resource    ../resources/PO/login_logout/LoginPage.robot
Resource    ../resources/PO/login_logout/SignoutPage.robot
Resource    ../resources/PO/login_logout/chooseorg.robot
Resource    ../resources/PO/settings/org/gotoOrganisation.robot

*** Test Cases ***
Onboarding
    [Documentation]     This test will verify the user organisation after login
    Given Open App
    And User can view Welcome Page
    when User onboard Organization
    Then User skip guide
    When User go to organization




