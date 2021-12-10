*** Settings ***
Suite Setup
Suite Teardown    Close All Browsers
Test Setup
Test Teardown     Close All Browsers
Resource          ../../Resources/TestingBootCampVariables.robot
Resource          ../../Facilities/TestingBootcampFacilities.robot
Resource          ../../Facilities/MainKeywords.robot
Library           Selenium2Library

*** Test Cases ***
00.Test_1
    User Login And Check
