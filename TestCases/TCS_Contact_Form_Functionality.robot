*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/PageObjects/HeaderPage.robot
Resource  ../Resources/PageObjects/ContactPage.robot


Test Setup  common.Start TestCase
Test Teardown  common.Finish TestCase

*** Variables ***




*** Test Cases ***
TC1_Send_Form_with_success
    HeaderPage.Click on Contact Link
    sleep  2s
    common.Check Current URL    https://practicesoftwaretesting.com/contact
    ContactPage.Input First Name     Andrei
    ContactPage.Input Last Name      Robert
    ContactPage.Input Email Box     robert@gmail.com
    ContactPage.Select from dropdown any subject     Payments
    ContactPage.Input Message Box   When delivery arrives is it possible to pay with cash?
    ContactPage.Click Send Form
    sleep  2s
    ContactPage.Check Success Message



TC2_Check_validation_for_mandatory_fields
    HeaderPage.Click on Contact Link
    sleep  2s
    common.Check Current URL    https://practicesoftwaretesting.com/contact
    ContactPage.Click Send Form
    ContactPage.Verify First Name Error is displayed
    ContactPage.Verify Last Name Error is displayed
    ContactPage.Verify Email Error is displayed
    ContactPage.Verify Subject Error is displayed
    ContactPage.Verify Message Error is displayed










