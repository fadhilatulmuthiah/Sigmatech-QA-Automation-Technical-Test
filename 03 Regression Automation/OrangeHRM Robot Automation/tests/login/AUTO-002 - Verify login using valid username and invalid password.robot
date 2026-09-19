*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../keywords/authentication_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-002 | Related Manual TC: REG-002

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-002 - Verify login using valid username and invalid password
    [Tags]    AUTO-002    login    negative    regression
    Login With Credentials    ${USERNAME}    ${INVALID_PASSWORD}
    Verify Login Error Message
