*** Settings ***
Library    SeleniumLibrary
Library    ../libraries/runtime_data.py

*** Keywords ***
Open Add Employee
    [Documentation]    Open Add Employee using a verified locator.
    Click Element    //button[normalize-space()='Add']
    Wait Until Element Is Visible    //h6[normalize-space()='Add Employee']    timeout=10s
    Page Should Contain Element    //h6[normalize-space()='Add Employee']

Input Employee First Name
    [Arguments]    ${first_name}
    [Documentation]    Enter an employee first name using a verified locator.
    Wait Until Element Is Visible    //input[@name='firstName']    timeout=10s
    Input Text    //input[@name='firstName']    ${first_name}

Input Employee Last Name
    [Arguments]    ${last_name}
    [Documentation]    Enter an employee last name using a verified locator.
    Wait Until Element Is Visible    //input[@name='lastName']    timeout=10s
    Input Text    //input[@name='lastName']    ${last_name}

Input Employee ID
    [Arguments]    ${employee_id}
    [Documentation]    Enter an employee ID using a verified locator.
    Input Text    //div[contains(@class,'oxd-input-group')][.//label[normalize-space()='Employee Id']]//input    ${employee_id}

Save Employee
    [Arguments]    ${first_name}    ${last_name}
    [Documentation]    Save an employee using a verified locator.
    Wait Until Element Is Visible    //button[normalize-space()='Save']    timeout=10s
    Click Element    //button[normalize-space()='Save']
    Wait Until Element Is Visible    //h6[normalize-space()='Personal Details']    timeout=10s
    Page Should Contain Element    //h6[normalize-space()='Personal Details']
    Save Employee Runtime Data    ${first_name}    ${last_name}

Save Empty Employee
    [Documentation]    Save an employee with empty fields.
    Wait Until Element Is Visible    //button[normalize-space()='Save']    timeout=10s
    Page Should Contain Element    //button[normalize-space()='Save']
    Click Element    //button[normalize-space()='Save']
    Wait Until Element Is Visible    //input[@name='firstName']    timeout=10s

Search Employee By Name
    [Arguments]    ${name}
    [Documentation]    Enter an employee name using a verified locator.
    Input Text    //input[@placeholder='Type for hints...']    ${name}

Click Employee Search
    [Documentation]    Submit employee search using a verified locator.
    Click Element    //button[normalize-space()='Search']
    Wait Until Element Is Visible    //div[@class='oxd-table-body']    timeout=10s

Clear Mandatory Employee Fields
    [Documentation]    Clear mandatory fields and trigger normal keyboard input events.
    Clear Input Without JavaScript    //input[@name='firstName']
    Clear Input Without JavaScript    //input[@name='lastName']
    Clear Input Without JavaScript    //div[contains(@class,'oxd-input-group')][.//label[normalize-space()='Employee Id']]//input

Clear Input Without JavaScript
    [Arguments]    ${locator}
    [Documentation]    Clear a focused input without JavaScript or Ctrl+A.
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Press Keys    ${locator}    HOME    SHIFT+END    BACKSPACE

Verify Employee Validation Message
    [Documentation]    Verify both required-field messages after the form is submitted.
    Wait Until Element Is Visible    (//span[normalize-space()='Required'])[1]    timeout=10s
    Wait Until Element Is Visible    (//span[normalize-space()='Required'])[2]    timeout=10s
    Page Should Contain Element    (//span[normalize-space()='Required'])[1]
    Page Should Contain Element    (//span[normalize-space()='Required'])[2]

Verify Employee Required Validation
    Verify Employee Validation Message

