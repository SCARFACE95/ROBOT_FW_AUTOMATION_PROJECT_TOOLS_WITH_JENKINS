*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/PageObjects/HeaderPage.robot


Test Setup  common.Start TestCase
Test Teardown  common.Finish TestCase

*** Variables ***
${text_search}=  Hammer

*** Test Cases ***
TC1_Validate_title
    common.Validate title   Practice Software Testing - Toolshop - v5.0

TC2_Search_by_text
    HeaderPage.Input Search Text and Click Search   ${text_search}
    sleep  2s
    HeaderPage.Verify search results are displayed
    HeaderPage.Verify name of first element in search results   ${text_search}








