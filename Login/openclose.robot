*** Settings ***
default tags    open
Library           SeleniumLibrary
Resource          ../Resource/dropdownlist.robot
Resource          ../Resource/numericalvalue.robot
Resource          ../Resource/genericfunctions.robot
Resource          ../Resource/textfield.robot
Resource          ../Resource/button.robot 
Resource          ../Resource/Email ID.robot
Suite Teardown    close all browsers

*** Test Cases ***
testopenclose
    login front
    close browser
    