Feature: building arrays from generated fields

  As a form builder
  In order to create arrays for my form build
  I want to convert a range of numbers into different arrays

  Scenario: create a formatted array
    Given a range of numbers
    When the range is converted and formatted
    Then a formatted array should be returned