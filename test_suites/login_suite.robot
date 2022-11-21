*** Settings ***
Library           AppiumLibrary
Resource          ../setups/resources.robot
Resource          ../steps/login_step.robot
Test Setup        Start Appium
Test Teardown     Stop Appium


*** Test Cases ***
Scenario: User want to login using correct credentials
    [Tags]      correct_credentials     smoke
    Given user launch the AUT
    Then user see login page elements is displayed
    Then user input username and password "${VALID_USERNAME}" "${VALID_PASSWORD}"
    Then user click on Login button
    Then user close the AUT

Scenario: User want to login using incorrect credentials
    [Tags]      incorrect_credentials    smoke
    Given user launch the AUT
    Then user see login page elements is displayed
    Then user input username and password "${INVALID_USERNAME}" "${INVALID_PASSWORD}"
    Then user click on Login button
    Then user read the error message user pass "${ERROR_TEXT_USERNAME_PASS}"
    Then user close the AUT

Scenario: User want to login only username
    [Tags]      only_username    smoke
    Given user launch the AUT
    Then user see login page elements is displayed
    Then user input username "${VALID_USERNAME}"
    Then user click on Login button
    Then user read the error message pass "${ERROR_TEXT_PASSWORD}"
    Then user close the AUT

Scenario: User want to login only password
    [Tags]      only_password    smoke
    Given user launch the AUT
    Then user see login page elements is displayed
    Then user input password "${VALID_PASSWORD}"
    Then user click on Login button
    Then user read the error message user "${ERROR_TEXT_USERNAME}"
    Then user close the AUT

Scenario: User want to login empty credentials
    [Tags]      empty_credentials    smoke
    Given user launch the AUT
    Then user see login page elements is displayed
    Then user click on Login button
    Then user read the error message user "${ERROR_TEXT_USERNAME}"
    Then user close the AUT