*** Settings ***
Library           Selenium2Library
Resource          ../Resources/TestingBootCampVariables.robot
Resource          ../Facilities/MainKeywords.robot

*** Keywords ***
Enter User Email
    Send Text To Element    ${emailTextboxKahve}    ${userEmailKahve}

Enter User Password
    Send Text To Element    ${passwordtextboxKahve}    ${userPasswordKahve}

Click Login Button
    Click On Element    ${loginButtonKahve}

Login Check
    Wait For Element    ${memberWelcomeContent}
    Wait And Over Element    ${memberWelcomeContent}
    Wait For Element    ${usernameLabelKahve}
    ${status}    ${value}=    Run Keyword And Ignore Error    Element Text Should Be    ${usernameLabelKahve}    ${userNameBootcamp}
    Run Keyword If    '${status}'=='PASS'    Log    Login is successful    level=WARN
    ...    ELSE    Fail    Login is not successful!!!    level=WARN

User Login And Check
    Open New Browser    ${aroastinglab_url}
    Click On Element    ${myProfileButton}
    Enter User Email
    Enter User Password
    Click Login Button
    Login Check
