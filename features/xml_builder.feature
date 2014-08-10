Feature: creating XML from a range of numbers
  As a form builder
  In order to create an XML file that the StoneShot app can convert into a basic form
  I want to take an array of numbers and convert them to StoneShot friendly XML

  Scenario: generating the xml for an empty form
    Given an empty array
    When I convert the array into XML
    Then it should return the XML for an empty form