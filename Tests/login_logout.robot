*** Settings ***
Library     AppiumLibrary
Resource    ../resources/PO/startApp.robot
Resource    ../resources/PO/login_logout/LoginPage.robot
Resource    ../resources/PO/login_logout/SignoutPage.robot

*** Test Cases ***
Login and Logout
    [Documentation]    this is to test login
    Given Open App
    When User Able to Login
    Then User Able to Sign Out


#need manually click ios popup about persimmision to open hp.com