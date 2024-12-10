*** Settings ***
Library     AppiumLibrary
Resource    ../resources/PO/startApp.robot
Resource    ../resources/PO/login_logout/skipGuide.robot
Resource    ../resources/PO/login_logout/LoginPage.robot
Resource    ../resources/PO/login_logout/chooseorg.robot
Resource    ../resources/PO/home/Go_option.robot
Resource    ../resources/PO/organization_page/organization_page.robot

*** Test Cases ***
Onboarding
    [Documentation]     This test will verify the user organisation after login
    Given Open App
    And User can view Privacy Notice
    And User view Welcome Page
    And User click Welcome Page
    when User onboard Organization
    Then User skip guide
    When User go to organization
    Then User verified organization page





