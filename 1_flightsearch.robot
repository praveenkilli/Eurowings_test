*** Settings ***
Library    SeleniumLibrary
Resource    /Users/praveenkilli/PycharmProjects/test_eu/resources/resources.robot
Variables   /Users/praveenkilli/PycharmProjects/test_eu/resources/inputflightdestinations.yaml


*** Test Cases ***

Search flight
  Open Browser    ${EurowingsURL}  Chrome
  Accept Privacy Settings
  Select Departure Airport
  Select Destination Airport
  Select Outgoing Date
  Select Return Date
  Search For Flight

