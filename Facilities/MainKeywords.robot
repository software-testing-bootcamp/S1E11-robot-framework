*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open New Browser
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window

Click On Element
    [Arguments]    ${element}
    Wait For Element    ${element}
    Capture Page Screenshot
    Click Element    ${element}

Send Text To Element
    [Arguments]    ${element}    ${text}
    Wait For Element    ${element}
    Capture Page Screenshot
    Input Text    ${element}    ${text}

Wait For Element
    [Arguments]    ${element}
    Wait Until Keyword Succeeds    60 sec    0.1 sec    Element Should Be Enabled    ${element}

Wait And Over Element
    [Arguments]    ${element}
    Wait For Element    ${element}
    Mouse Over    ${element}
