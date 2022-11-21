*** Settings ***
Library       AppiumLibrary

*** Variables ***
${LOGIN_USERNAME}                     accessibility_id=test-Username
${LOGIN_PASSWORD}                     accessibility_id=test-Password
${LOGIN_BUTTON}                       accessibility_id=test-LOGIN
${LOGIN_ERROR_TEXT_USER}              xpath=//*[@text="Username is required"]
${LOGIN_ERROR_TEXT_PASS}              xpath=//*[@text="Password is required"]              
${LOGIN_ERROR_TEXT_USERPASS}          xpath=//*[@text="Username and password do not match any user in this service."]

*** Keywords ***
Home Page Displayed
  Wait Until Element Is Visible       ${LOGIN_USERNAME}
  Element Should Be Visible           ${LOGIN_USERNAME}
  Wait Until Element Is Visible       ${LOGIN_PASSWORD}
  Element Should Be Visible           ${LOGIN_PASSWORD}
  Wait Until Element Is Visible       ${LOGIN_BUTTON}
  Element Should Be Visible           ${LOGIN_BUTTON}

Input Username
  [Arguments]                         ${username}
  Input Text                          ${LOGIN_USERNAME}           ${username}

Input Password
  [Arguments]                         ${password}
  Input Text                          ${LOGIN_PASSWORD}           ${password}

Click Login Button
  Click Element                       ${LOGIN_BUTTON}

Read Error Message User
  [Arguments]                         ${expected_error_text}
  Wait Until Element Is Visible       ${LOGIN_ERROR_TEXT_USER}
  Element Should Be Visible           ${LOGIN_ERROR_TEXT_USER}
  ${actual} =   Get Text              ${LOGIN_ERROR_TEXT_USER}
  Element Text Should Be              ${LOGIN_ERROR_TEXT_USER}             ${expected_error_text}

Read Error Message Pass
  [Arguments]                         ${expected_error_text}
  Wait Until Element Is Visible       ${LOGIN_ERROR_TEXT_PASS}
  Element Should Be Visible           ${LOGIN_ERROR_TEXT_PASS}
  ${actual} =   Get Text              ${LOGIN_ERROR_TEXT_PASS}
  Element Text Should Be              ${LOGIN_ERROR_TEXT_PASS}             ${expected_error_text}

Read Error Message User Pass
  [Arguments]                         ${expected_error_text}
  Wait Until Element Is Visible       ${LOGIN_ERROR_TEXT_USERPASS}
  Element Should Be Visible           ${LOGIN_ERROR_TEXT_USERPASS}
  ${actual} =   Get Text              ${LOGIN_ERROR_TEXT_USERPASS}
  Element Text Should Be              ${LOGIN_ERROR_TEXT_USERPASS}         ${expected_error_text}