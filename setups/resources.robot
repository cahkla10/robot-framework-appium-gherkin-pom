*** Settings ***
Library           AppiumLibrary
Library           Process

*** Variables ***
${PORT}                       4723
${REMOTE_URL}                 http://localhost:${PORT}/wd/hub
${PLATFORM_NAME}              Android
${PLATFORM_VERSION}           9
${DEVICE_NAME}                emulator-5554
${APP}                        /Users/softwareqa/Documents/Otomesyen/Robot/Robot_AppSourceLab/app/AndroidSauceLabs.apk
${PACKAGE_NAME}               com.swaglabsmobileapp
${ACTIVITY_NAME}              com.swaglabsmobileapp.MainActivity
${VALID_USERNAME}             standard_user
${VALID_PASSWORD}             secret_sauce
${INVALID_USERNAME}           standarduser
${INVALID_PASSWORD}           secretsauce
${ERROR_TEXT_USERNAME}        Username is required
${ERROR_TEXT_PASSWORD}        Password is required
${ERROR_TEXT_USERNAME_PASS}   Username and password do not match any user in this service.

*** Keywords ***
Start Appium
  Start Process               appium -a 0.0.0.0 -p ${PORT}
  ...                         shell=True  
  ...                         alias=appiumserver
  Process Should Be Running   appiumserver
  Sleep                       3s

Stop Appium
  Terminate Process            appiumserver        kill=True

User launch the AUT
  Open Application            ${REMOTE_URL}
  ...                         platformName=${PLATFORM_NAME}
  ...                         platformVersion=${PLATFORM_VERSION}
  ...                         deviceName=${DEVICE_NAME}
  ...                         automationName=appium
  ...                         app=${APP}
  ...                         appActivity=${Activity_NAME}
  ...                         appPackage=${PACKAGE_NAME}

User close the AUT
  Close Application