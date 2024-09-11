*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../../TestData/ConfigData.robot


*** Variables ***
${random_string}=  Generate Random String    10
${concatenated_mail}=  Set Variable    ${random_string}@gmail.com

*** Keywords ***

Input First Name
    [arguments]  ${text}
    Input Text   ${FirstNameBoxR}   ${text}

Input Last Name
    [arguments]  ${text}
    Input Text   ${LastNameBoxR}   ${text}

Input Address
    [arguments]  ${text}
    Input Text   ${AddressBoxR}    ${text}

Input Post Code
    [arguments]  ${text}
    Input Text   ${PostCodeBoxR}    ${text}

Input City
    [arguments]  ${text}
    Input Text   ${CityBoxR}        ${text}

Input State
    [arguments]  ${text}
    Input Text   ${StateBoxR}       ${text}

Input Phone Number
    [arguments]  ${text}
    Input Text   ${PhoneBoxR}        ${text}

Select from dropdown Country
    [Arguments]  ${select_text}
    Select From List By Label   ${CountrySelectR}    ${select_text}
Input Date Of Birth
    [arguments]  ${text}
    Input Text   ${BirthDateSelectR}      ${text}


Input Email Address
    ${random_string}=    Generate Random String    10
    Log  ${random_string}
    ${concatenated_mail}=  Set Variable    ${random_string}@gmail.com
    Log     ${concatenated_mail}
    Input Text   ${EmailBoxR}     ${concatenated_mail}

Input Password
    [arguments]  ${text}
    Input Text   ${PasswordBoxR}     ${text}

Click Register button
    Press Keys   ${RegisterButton}   [Return]

#-------------------------------------------
Verify First Name Error is displayed
    Element Should Contain  ${FirstNameErrorR}    First name is required

Verify Last Name Error is displayed
    Element Should Contain  ${LastNameErrorR}     fields.last-name.required

Verify Birth Date Error is displayed
    Element Should Contain  ${BirthDateErrorR}      Date of Birth is required

Verify Address Error is displayed
    Element Should Contain  ${AddressBoxErrorR}       Address is required

Verify PostCode Error is displayed
    Element Should Contain  ${PostCodeErrorR}        Postcode is required


Verify City Error is displayed
    Element Should Contain  ${CityErrorR}          City is required

Verify State Error is displayed
    Element Should Contain  ${StateErrorR}          State is required

Verify Country Error is displayed
    Element Should Contain  ${CountryErrorR}         Country is required

Verify Phone Error is displayed
    Element Should Contain  ${PhoneErrorR}          Phone is required.

Verify Email Error is displayed
    Element Should Contain  ${EmailErrorR}          Email is required

Verify Password Error is displayed
    Element Should Contain  ${PasswordErrorR}        Password is required