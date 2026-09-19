*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../keywords/authentication_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-001 | Related Manual TC: REG-001

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-001 - Verify login using valid credentials
    [Tags]    AUTO-001    login    positive    regression
    Login With Valid Credentials
    Verify Dashboard Is Displayed
