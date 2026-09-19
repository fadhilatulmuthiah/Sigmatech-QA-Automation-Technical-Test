*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../resources/navigation.resource
Resource    ../../keywords/authentication_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-005 | Related Manual TC: REG-010

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-005 - Verify PIM module can be accessed from side menu
    [Tags]    AUTO-005    navigation    positive    regression
    Login With Valid Credentials
    Open PIM Module