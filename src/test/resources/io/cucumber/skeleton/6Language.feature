Feature: Test to evaluate the language change option

  Scenario: Change language to english
    Given I go to the home page
    When I click on "Español | Eur" button
    Then I should see a "Actualiza tu configuración" text
    And I fill the multiple option field "region" with the information "Estados Unidos"
    And Wait 5000
    And I fill the multiple option field "language" with the information "English EU"
    And Press Enter of field "language"
    And Wait 5000
    And I fill the multiple option field "currency" with the information "Euro"
    And Press Enter of field "currency"
    And Wait 5000
    When  I click on "Guardar" button

