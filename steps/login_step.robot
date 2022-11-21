*** Settings ***
Library           AppiumLibrary
Resource          ../setups/resources.robot
Resource          ../pages/login_page.robot
Resource          ../steps/login_step.robot

*** Keywords ***
User see login page elements is displayed
    Home Page Displayed

User input username "${username}"
    Input Username                       ${username}

User input password "${password}"
    Input Password                       ${password}

User click on Login button
    Click Login Button

User read the error message user "${expected_error_text}"
    Read Error Message User              ${expected_error_text}

User read the error message pass "${expected_error_text}"
    Read Error Message Pass              ${expected_error_text}

User read the error message user pass "${expected_error_text}"
    Read Error Message User Pass         ${expected_error_text}

User input username and password "${username}" "${password}"
    Input username                       ${username}
    Input password                       ${password}