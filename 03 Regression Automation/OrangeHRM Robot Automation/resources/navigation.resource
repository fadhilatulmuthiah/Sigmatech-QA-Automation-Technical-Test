*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Dashboard
    [Documentation]    Open the dashboard using a verified locator.
    Wait Until Element Is Visible    //span[normalize-space()='Dashboard']    timeout=10s
    Page Should Contain Element    //span[normalize-space()='Dashboard']
    Click Element    //span[normalize-space()='Dashboard']

Open PIM Module
    [Documentation]    Open the PIM module using a verified locator.
    Wait Until Element Is Visible    //span[normalize-space()='PIM']    timeout=10s
    Page Should Contain Element    //span[normalize-space()='PIM']
    Click Element    //span[normalize-space()='PIM']
    Wait Until Element Is Visible    //a[normalize-space()='Employee List']    timeout=10s
    Page Should Contain Element    //a[normalize-space()='Employee List']

Open Employee List
    [Documentation]    Open the PIM Employee List page using the visible side-menu link.
    Wait Until Element Is Visible    //span[normalize-space()='PIM']    timeout=10s
    Click Element    //span[normalize-space()='PIM']
    Wait Until Element Is Visible    //a[normalize-space()='Employee List']    timeout=10s
    Click Element    //a[normalize-space()='Employee List']
    Wait Until Element Is Visible    //input[@placeholder='Type for hints...']    timeout=10s

Open Admin Module
    [Documentation]    Open the Admin module using a verified locator.
    Wait Until Element Is Visible    //span[normalize-space()='Admin']    timeout=10s
    Page Should Contain Element    //span[normalize-space()='Admin']
    Click Element    //span[normalize-space()='Admin']
