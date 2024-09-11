*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://practicesoftwaretesting.com/
${browser}  chrome


*** Keywords ***
Start TestCase
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    Sleep  5s

Finish TestCase
    Close Browser


Check Current URL
    [Arguments]  ${URL_text}
    ${current_url}=  Get Location
    Log  The current URL is: ${current_url}
    Should Be Equal  ${current_url}  ${URL_text}    The urls are not the same

Validate title
    [Arguments]  ${title_text}
    Title should be      ${title_text}


