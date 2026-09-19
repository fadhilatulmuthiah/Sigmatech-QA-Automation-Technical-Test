*** Settings ***
Resource    ../resources/pim.resource
Resource    ../resources/navigation.resource
Library     ../libraries/data_generator.py
Library     ../libraries/runtime_data.py

*** Keywords ***
Create Test Employee
    [Documentation]    Create an employee using generated reusable test data.
    ${first_name}=    Generate Unique Employee First Name
    ${last_name}=    Generate Unique Employee Last Name
    Open Add Employee
    Input Employee First Name    ${first_name}
    Input Employee Last Name    ${last_name}
    Save Employee    ${first_name}    ${last_name}
    Save Employee Runtime Data    ${first_name}    ${last_name}
    RETURN    ${first_name}    ${last_name}

Search Test Employee By Name
    [Arguments]    ${name}
    [Documentation]    Search reusable employee data by name.
    Open Employee List
    Search Employee By Name    ${name}
    Click Employee Search

