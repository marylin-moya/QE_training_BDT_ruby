Feature: Google main page

Scenario: Google Main page is loaded
Given Browser opened
When Type Google Main url in url text box
Then Google Main page is loaded

Scenario: Perform a search
Given Google Main page loaded
When Type "DaVinci" text into search text box
  And Click on Search button
Then Results for Davinci text are displayed

Scenario: Perform a search usign *
* Google Main page loaded
* Type "DaVinci" text into search text box
* Click on Search button
* Results for Davinci text are displayed
