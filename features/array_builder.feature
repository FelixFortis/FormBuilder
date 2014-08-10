Feature: building arrays from generated fields

  As a form builder
  In order to create arrays for my form build
  I want to convert a range of numbers into different arrays

  Scenario: create the main array
    Given a range of numbers
    When the numbers are converted into the "all_fields" array
    Then the "all_fields" array should be returned