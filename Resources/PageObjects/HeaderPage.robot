*** Settings ***
Library     SeleniumLibrary
Resource    ../../TestData/ConfigData.robot


*** Variables ***



*** Keywords ***

Click on Contact Link
    Click Element  ${ContactLink}




Click on Sign In Link
    Click Element  ${SignInLink}
#    ${current_url}=  Get Location
#    Log  The current URL is: ${current_url}
#    Should Be Equal  ${current_url}  https://practicesoftwaretesting.com/auth/login    The urls are not the same







Input Search Text and Click Search
    [Arguments]  ${search_text}
    Input Text   ${SearchTextBox}   ${search_text}
    Press Keys   ${SearchButton}    [Return]



Verify search results are displayed
   ${List_of_elements} =  Get Web Elements  ${ListOfSearchElements}
   ${length} =  Get length     ${List_of_elements}
   Log  ${length}
   Should Be True  ${length} > 0  The list should not be empty

Verify name of first element in search results
    [Arguments]   ${result_text}
    Element Should Contain  ${FirstElementFromSearch}   ${result_text}









