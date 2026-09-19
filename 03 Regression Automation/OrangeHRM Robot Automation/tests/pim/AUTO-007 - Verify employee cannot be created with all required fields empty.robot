*** Settings ***
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource
Resource    ../../resources/navigation.resource
Resource    ../../resources/pim.resource
Resource    ../../keywords/authentication_keywords.resource
Resource    ../../keywords/employee_keywords.resource
Variables   ../../variables/config.py

Documentation    Automation ID: AUTO-007 | Related Manual TC: REG-013

Test Setup       Open Application
Test Teardown    Close Application

*** Test Cases ***
AUTO-007 - Verify employee cannot be created with all required fields empty
    [Tags]    AUTO-007    pim    negative    regression
    Login With Valid Credentials
    Open PIM Module
    Open Add Employee
    Clear Mandatory Employee Fields
    Save Empty Employee
    Verify Employee Required Validation
