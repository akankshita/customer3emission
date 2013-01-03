Feature: gas values correctly formatted
  In order to view gas values correctly
  As an user
  I want to be able to go to every page on the app and see them in two decimal format

  Scenario: View gas values on gas reading index page
    Given I am logged in
    And I have meter group called Clare and meter called Barefield which are siblings
    And I have gas data with value "1234.124124" for meter group "Clare" and meter "Barefield"
    When I go to gas readings
    Then I should not see "1234.124124"
    And I should see "1234.12"

  Scenario: View gas values on show gas reading page
    Given I am logged in
    And I have meter group called Clare and meter called Barefield which are siblings
    And I have gas data with value "1234.124124" for meter group "Clare" and meter "Barefield"
    When I go to gas readings
    And I follow "show"
    Then I should not see "1234.124124"
    And I should see "1234.12"
