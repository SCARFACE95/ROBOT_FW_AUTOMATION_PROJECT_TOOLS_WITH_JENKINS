*** Settings ***
Library     SeleniumLibrary
Resource    ../../TestData/ConfigData.robot


*** Variables ***



*** Keywords ***
Click on Register Link
    Click Element  ${RegisterLink}