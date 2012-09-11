Feature: json2csv

  Scenario: Help option
    When I get help for "json2csv"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version|
    And the banner should document that this app takes no arguments

  Scenario: No file specified
    When I run command without file argument
    Then it should show file not specified message

  Scenario: Converting JSON file
    When I convert users.json
    Then it outputs a csv representation of the file
