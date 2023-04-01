*** Variables ***
${EurowingsURL}                 https://www.eurowings.com/en.html
${privacy}                      //span[contains(text(),'I understand')]
${departure_field_button}       //*[@id="section-tabflight"]/div/div/div/div/div[1]/div/div/button
${departure_input_field}        //*[@id="station-select-91-input"]
${destination_field_button}     //*[@id="section-tabflight"]/div/div/div/div/div[2]/div/div/button
${destination_input_field}      //*[@id="station-select-92-input"]
${outgoing_date}                //*[@id="datepicker-93-input"]
${return_date_button}           //*[@id="section-tabflight"]/div/div/div/div/div[4]/div/div/button
${return_date_input_field}      //*[@id="datepicker-94-input"]
${Search_flight}                //*[@id="section-tabflight"]/div/div/div/div/div[6]/button

${Eurowings_flightstatusURL}                  https://www.eurowings.com/en/information/at-the-airport/flight-status.html
${flightstatus_departureairport}              //*[@id="site"]/main/div[3]/div[3]/div/div[1]/div/div[2]/div[1]/div/div/div[1]/div/div/button
${flightstatus_depatureinput}                 //*[@id="station-select-198-input"]
${flightstatus_destinationairport}            //*[@id="site"]/main/div[3]/div[3]/div/div[1]/div/div[2]/div[1]/div/div/div[2]/div/div/button
${flightstatus_destinationinput}              //*[@id="station-select-199-input"]
${flightstatus_depaturedate}                  //*[@id="site"]/main/div[3]/div[3]/div/div[1]/div/div[2]/div[1]/form/div[1]/div/div[1]
${flightstatus_depaturedateinput}             //*[@id="datepicker_calendar_27"]/div/div/div/ul/li/div/table/tbody/tr[1]/td[7]
#tr is row , td is day in a week
${flightstatus}                               //*[@id="site"]/main/div[3]/div[3]/div/div[1]/div/div[2]/div[1]/form/div[2]/button



*** Keywords ***
Accept privacy settings
  Wait Until Page Contains Element    ${privacy}  10s
  Click Element    ${privacy}

Select Departure airport
  Wait Until Page Contains Element  ${departure_field_button}
  Click Element    ${departure_field_button}
  Wait Until Page Contains Element    ${departure_input_field}
  Input Text   ${departure_input_field}  cologne-bonn
  Press Keys    None  ENTER

Select destination airport
  Wait Until Page Contains Element    ${destination_input_field}
  Input Text    ${destination_input_field}  berlin
  Press Keys    None  ENTER
  Sleep    5

Select outgoing date
  Input Text    ${outgoing_date}  ${outgoingdates.date1}
  Press Keys    None  ENTER

Select return date
  Wait Until Page Contains Element   ${return_date_button}
  Click Element    ${return_date_button}
  Input Text   ${return_date_input_field}  ${returndates.date2}
  Sleep    5
  Press Keys    None  ENTER

Search for flight
  Click Element    ${Search_flight}
  Sleep  10

Flight status departure airport
  Wait Until Page Contains Element    ${flightstatus_departureairport}
  Click Element   ${flightstatus_departureairport}
  Sleep    3
  Wait Until Page Contains Element   ${flightstatus_depatureinput}
  Input Text  ${flightstatus_depatureinput}  cologne-bonn
  Press Keys    None  ENTER

Flight status destination airport
  Wait Until Page Contains Element    ${flightstatus_destinationairport}
  Click Element    ${flightstatus_destinationairport}
  sleep  3
  Wait Until Page Contains Element    ${flightstatus_destinationinput}
  Input Text    ${flightstatus_destinationinput}   berlin
  sleep   3
  Press Keys    None  ENTER

Flight status date
  Wait Until Page Contains Element    ${flightstatus_depaturedate}
  Click Element  ${flightstatus_depaturedate}
  Press Keys    None  ENTER
  Sleep    3
  Wait Until Page Contains Element    ${flightstatus_depaturedateinput}
  Click Element      ${flightstatus_depaturedateinput}




Show flight status
  Wait Until Page Contains Element     ${flightstatus}
  Click Element     ${flightstatus}
  Sleep    10

Verify date is visable
  ${statusdate}  Set Variable   //*[@id="site"]/main/div[3]/div[3]/div/div[2]/div/div[2]/nav/ul/li[6]/button/div
  Element Should Be Visible    ${statusdate}