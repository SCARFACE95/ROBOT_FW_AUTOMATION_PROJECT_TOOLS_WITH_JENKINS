*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/PageObjects/HeaderPage.robot
Resource  ../Resources/PageObjects/SignInPage.robot
Resource  ../Resources/PageObjects/RegisterPage.robot


Test Setup  common.Start TestCase
Test Teardown  common.Finish TestCase

*** Variables ***


*** Test Cases ***
TC1_Register_with_Success
    HeaderPage.Click on SignIn Link
    sleep  3s
    common.Check Current URL    https://practicesoftwaretesting.com/auth/login
    SignInPage.Click on Register Link
    sleep  5s
    common.Check Current URL    https://practicesoftwaretesting.com/auth/register
    RegisterPage.Input First Name   Python
    RegisterPage.Input Last Name    Learning
    RegisterPage.Input Address      Str.Valrea Rosie
    RegisterPage.Input Post Code    1230723
    RegisterPage.Input City         Bucuresti
    RegisterPage.Input State        Romania
    RegisterPage.Input Phone Number     00407234654654
    RegisterPage.Select from dropdown Country   Romania
    RegisterPage.Input Date Of Birth    06091995
    RegisterPage.Input Email Address
    RegisterPage.Input Password                  Scarface!1995@
    RegisterPage.Click Register button
    sleep  10s
    common.Check Current URL    https://practicesoftwaretesting.com/auth/login
    #De introdus wait-uri cu timeout in locul la sleep la sfarsit de proiect

    #!Test Case de facut cu Check validation for mandatory fields
TC2_Check_validation_for_mandatory_fields
    HeaderPage.Click on SignIn Link
    sleep  3s
    common.Check Current URL    https://practicesoftwaretesting.com/auth/login
    SignInPage.Click on Register Link
    sleep  2s
    common.Check Current URL    https://practicesoftwaretesting.com/auth/register
    RegisterPage.Click Register button
    RegisterPage.Verify First Name Error is displayed
    RegisterPage.Verify Last Name Error is displayed
    RegisterPage.Verify Birth Date Error is displayed
    RegisterPage.Verify Address Error is displayed
    RegisterPage.Verify PostCode Error is displayed
    RegisterPage.Verify City Error is displayed
    RegisterPage.Verify State Error is displayed
    RegisterPage.Verify Country Error is displayed
    RegisterPage.Verify Phone Error is displayed
    RegisterPage.Verify Email Error is displayed
    RegisterPage.Verify Password Error is displayed

