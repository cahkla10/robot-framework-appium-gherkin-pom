*** Settings ***
Library       AppiumLibrary

*** Variables ***
${PRODUCTS_BURGER_MENU}             accessibility_id=test-Menu
${PRODUCTS_TITLE}                   xpath=//*[@text="PRODUCTS"]
${PRODUCTS_CART}                    accessibility_id=test-Cart
${PRODUCTS_SORT}                    accessibility_id=test-Modal Selector Button
${PRODUCTS_NAME}                    accessibility_id=test-Item title
${PRODUCTS_PRICE}                   accessibility_id=test-Price
${PRODUCTS_ADD_CART}                accessibility_id=test-ADD TO CART
${PRODUCTS_REMOVE_CART}             accessibility_id=test-REMOVE
${PRODUCTS_ALL_ITEMS}               xpath=//*[@text="ALL ITEMS"]
${PRODUCTS_LOGOUT}                  xpath=//*[@text="LOGOUT"]

*** Keywords ***
Products Page Displayed
  Wait Until Element Is Visible     ${PRODUCTS_BURGER_MENU}
  Element Should Be Visible         ${PRODUCTS_BURGER_MENU}
  Wait Until Element Is Visible     ${PRODUCTS_TITLE}
  Element Should Be Visible         ${PRODUCTS_TITLE}
  Wait Until Element Is Visible     ${PRODUCTS_CART}
  Element Should Be Visible         ${PRODUCTS_CART}
  Wait Until Element Is Visible     ${PRODUCTS_SORT}
  Element Should Be Visible         ${PRODUCTS_SORT}

Click Burger Menu
  Click Element                     ${PRODUCTS_BURGER_MENU}

Click All Items
  Click Element                     ${PRODUCTS_ALL_ITEMS}

Click Logout
  Click Element                     ${PRODUCTS_LOGOUT} 

Click Cart
  Click Element                     ${PRODUCTS_CART}

Click Sort
  [Arguments]                       ${sort_order}
  Wait Until Element Is Visible     ${PRODUCTS_SORT}
  Click Element                     ${PRODUCTS_SORT}
  Wait Until Element Is Visible     xpath=//*[@text="${sort_order}"]
  Click Element                     xpath=//*[@text="${sort_order}"]

Click Product Item
  [Arguments]                       ${product_name}
  Click Element                     ${PRODUCTS_NAME}            ${product_name}

Click Add To Cart
  [Arguments]                       ${product_name}
  Click Element                     ${PRODUCTS_ADD_CART}        ${product_name}

Click Remove Cart
  [Arguments]                       ${product_name}
  Click Element                     ${PRODUCTS_REMOVE_CART}     ${product_name}

Read Products Title
  [Arguments]                       ${expected_title_page}
  ${actual} =   Get Text            ${PRODUCTS_TITLE}
  Element Text Should Be            ${PRODUCTS_TITLE}           ${expected_title_page}