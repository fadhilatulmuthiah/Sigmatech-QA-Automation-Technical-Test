*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Input Username
    [Arguments]    ${username}
    [Documentation]    Enter a username using a verified locator.
    Input Text    //input[@name='username']    ${username}

Input Password
    [Arguments]    ${password}
    [Documentation]    Enter a password using a verified locator.
    SeleniumLibrary.Input Password    //input[@name='password']    ${password}

Click Login Button
    [Documentation]    Submit the login form using a verified locator.
    Click Element    //button[contains(., 'Login')]

Verify Login Error Message
    [Documentation]    Verify an invalid-login message using a verified locator.
    Wait Until Element Is Visible    //p[text()='Invalid credentials']    timeout=10s
    Page Should Contain Element    //p[text()='Invalid credentials']

Verify Username Required Error
    [Documentation]    Verify the username required error message using a verified locator.
    Wait Until Element Is Visible    (//span[normalize-space()='Required'])[1]    timeout=10s
    Page Should Contain Element    (//span[normalize-space()='Required'])[1]

Verify Password Required Error
    [Documentation]    Verify the password required error message using a verified locator.
    Wait Until Element Is Visible    (//span[normalize-space()='Required'])[2]    timeout=10s
    Page Should Contain Element    (//span[normalize-space()='Required'])[2]

Verify Login Page Is Displayed
    [Documentation]    Verify the login page using a verified locator.
    Wait Until Element Is Visible    //h5[normalize-space()='Login']    timeout=10s
    Page Should Contain Element    //h5[normalize-space()='Login']

Verify Dashboard Is Displayed
    [Documentation]    Verify the dashboard using a verified locator.
    Wait Until Element Is Visible    //h6[normalize-space()='Dashboard']    timeout=10s
    Page Should Contain Element    //h6[normalize-space()='Dashboard']

Open User Menu
    [Documentation]    Open the authenticated user's menu.
    Wait Until Element Is Visible    //span[contains(@class,'oxd-userdropdown-tab')]    timeout=10s
    Page Should Contain Element    //span[contains(@class,'oxd-userdropdown-tab')]
    Click Element    //span[contains(@class,'oxd-userdropdown-tab')]

Click Logout
    [Documentation]    Click logout using a verified locator.
    Wait Until Element Is Visible    //a[normalize-space()='Logout']    timeout=10s
    Click Element    //a[normalize-space()='Logout']
