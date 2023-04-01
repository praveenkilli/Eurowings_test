
*** Settings ***
Library    SeleniumLibrary
Resource    /Users/praveenkilli/PycharmProjects/test_eu/resources/resources.robot
#Variables   /Users/praveenkilli/PycharmProjects/test_eu/resources/inputflightstatusroutes.yaml


*** Test Cases ***

Flight Status
  Open Browser    ${Eurowings_flightstatusURL}  Chrome
  Accept Privacy Settings
  Flight Status Departure Airport
  Flight Status Destination Airport
  Flight Status Date
  Show Flight Status
  Verify Date Is Visable
