Feature: building arrays from generated fields

  In order to create arrays for my app
  As a form builder
  I want to convert generated fields into arrays


  Scenario: create main array
    Given a list of generated Dim gfields
    When they are converted
    Then the main array should be returned