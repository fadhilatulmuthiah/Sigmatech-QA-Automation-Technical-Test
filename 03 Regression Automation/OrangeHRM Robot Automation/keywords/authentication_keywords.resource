*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/login.resource
Variables   ../variables/config.py

*** Keywords ***
Login With Valid Credentials
    [Documentation]    Log in with centralized valid credentials.
    Login With Credentials    ${USERNAME}    ${PASSWORD}

Login With Credentials
    [Arguments]    ${username}    ${password}
    [Documentation]    Execute the reusable login flow.
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button

Logout From Application
    [Documentation]    Execute the reusable logout flow.
    Open User Menu
    Click Logout
