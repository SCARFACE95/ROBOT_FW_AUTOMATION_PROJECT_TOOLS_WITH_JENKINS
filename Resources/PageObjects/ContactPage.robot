*** Settings ***
Library     SeleniumLibrary
Resource    ../../TestData/ConfigData.robot


*** Variables ***

*** Keywords ***
Input First Name
    [arguments]  ${text_name}
    Input Text   ${FirstNameBox}   ${text_name}


Input Last Name
    [arguments]  ${text_lastname}
    Input Text   ${LastNameBox}   ${text_lastname}

Input Email Box
    [arguments]  ${text_email}
    Input Text   ${EmailBox}    ${text_email}

Input Message Box
    [arguments]  ${text_message}
    Input Text   ${MessageBox}    ${text_message}

Select from dropdown any subject
    [Arguments]  ${select_text}
    Select From List By Label   ${SelectSubject}    ${select_text}

Click Send Form
    Press Keys   ${SendButton}   [Return]

Check Success Message
    Element Should Contain  ${Success_Message}   Thanks for your message! We will contact you shortly.


#---------------------------
Verify First Name Error is displayed
    Element Should Contain  ${FirstNameError}   First name is required

Verify Last Name Error is displayed
    Element Should Contain  ${LastNameError}   Last name is required

Verify Email Error is displayed
    Element Should Contain  ${EmailError}    Email is required

Verify Subject Error is displayed
    Element Should Contain  ${SubjectError}    Subject is required

Verify Message Error is displayed
    Element Should Contain  ${MessageError}    Message is required