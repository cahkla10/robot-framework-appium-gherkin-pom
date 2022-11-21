*** Settings ***
Library           AppiumLibrary
Resource          ../setups/resources.robot
Resource          ../pages/products_page.robot

*** Keywords ***
User read title page "${expected_title_page}"
    Products Page Displayed
    Read Products Title          ${expected_title_page}

User sort products "${sort1}" "${sort2}" "${sort3}" "${sort4}" 
    Click Sort                   ${sort1}
    Click Sort                   ${sort2}
    Click Sort                   ${sort3}
    Click Sort                   ${sort4}