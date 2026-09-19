*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../keywords/authentication_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-004 | Related Manual TC: REG-008

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-004 - Verify logout from authenticated session
    [Tags]    AUTO-004    login    positive    regression
    Login With Valid Credentials
    Logout From Application
    Verify Login Page Is Displayed
