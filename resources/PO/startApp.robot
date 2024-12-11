*** Settings ***
Library     AppiumLibrary
Resource    ../main_variable.robot

*** Keywords ***
Open App
    [Documentation]     Open The Application
    Open Application   ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    appium:deviceName=${DEVICE_NAME}    appium:platformVersion=${PLATFORM_VERSION}      appium:udid=${UDID}    appium:bundleId=${BUNDLE_ID}    appium:automationName=${AUTOMATION_NAME}    autoAcceptAlerts=${AUTOACCEPT}


Closed App
    [Documentation]     Closed The Application
    Close Application


