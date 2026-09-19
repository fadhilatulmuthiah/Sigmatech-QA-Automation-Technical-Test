*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../keywords/authentication_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-003 | Related Manual TC: REG-007

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-003 - Verify login with both fields empty
    [Tags]    AUTO-003    login    negative    regression
    Login With Credentials    ${EMPTY_USERNAME}    ${EMPTY_PASSWORD}
    Verify Username Required Error
    Verify Password Required Error
