*** Settings ***
Library     SeleniumLibrary
Library    String
Resource  ../Resources/common.robot
Resource  ../Resources/PageObjects/HeaderPage.robot
Resource  ../Resources/PageObjects/SignInPage.robot
Resource  ../Resources/PageObjects/RegisterPage.robot


Test Setup  common.Start TestCase
Test Teardown  common.Finish TestCase

*** Variables ***


*** Test Cases ***
TC1_Register_with_Success
#    HeaderPage.Click on SignIn Link
#    sleep  3s
#    common.Check Current URL    https://practicesoftwaretesting.com/auth/login
#    SignInPage.Click on Register Link
#    sleep  5s
#    common.Check Current URL    https://practicesoftwaretesting.com/auth/register

    ${random_string}=    Generate Random String    10
    Log  ${random_string}
    ${concatenated_mail}=  Set Variable    ${random_string}@gmail.com
    Log     ${concatenated_mail}

