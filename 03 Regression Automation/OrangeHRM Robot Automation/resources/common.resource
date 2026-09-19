*** Settings ***
Library    SeleniumLibrary
Variables  ../variables/config.py

*** Keywords ***
Open Application
    [Documentation]    Open the application using centralized configuration.
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    IF    ${HEADLESS}
        Call Method    ${chrome_options}    add_argument    --headless\=new
        Call Method    ${chrome_options}    add_argument    --window-size\=1920,1080
    END
    Open Browser    ${BASE_URL}    ${BROWSER}    options=${chrome_options}
    Set Window Size    1920    1080
    Set Selenium Timeout    ${DEFAULT_TIMEOUT}
    Wait Until Element Is Visible    //button[contains(., 'Login')]

Close Application
    [Documentation]    Close the active browser session.
    Close All Browsers

Wait Until Page Is Ready
    [Documentation]    Wait for the document to finish loading.
    Wait Until Page Contains Element    TODO: Add verified page-ready locator
