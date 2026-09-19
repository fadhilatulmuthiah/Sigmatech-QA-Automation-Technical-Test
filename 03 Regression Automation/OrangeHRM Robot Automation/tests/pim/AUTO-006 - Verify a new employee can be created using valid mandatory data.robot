*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../resources/navigation.resource
Resource    ../../resources/pim.resource
Resource    ../../keywords/authentication_keywords.resource
Resource    ../../keywords/employee_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-006 | Related Manual TC: REG-012

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-006 - Verify a new employee can be created using valid mandatory data
    [Tags]    AUTO-006    pim    positive    regression
    Login With Valid Credentials
    Open PIM Module
    Create Test Employee
