*** Settings ***
Library     AppiumLibrary
Library     ../resources/py/custom_alert_handler.py
Resource    ../resources/PO/startApp.robot
Resource    ../resources/PO/login_logout/LoginPage.robot
Resource    ../resources/PO/login_logout/SignoutPage.robot
Resource    ../resources/PO/home/Go_option.robot


*** Test Cases ***
Login
    [Documentation]    this is to test login
    Given Open App
    When User Able to Login
    Then User validate home

Logout
    [Documentation]    this is to test logout
    Given Open App
    When User Able to Sign Out
    Then User view Welcome Page
