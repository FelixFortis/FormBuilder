Feature: creating XML from a range of numbers
  As a form builder
  In order to create an XML file that the StoneShot app can convert into a basic form
  I want to take a range of numbers and convert them to StoneShot friendly XML

  Scenario: generating the xml for an empty form
    Given an empty range of numbers
    When I convert the range
    Then I should be given the XML for an empty form