Feature: Test to evaluate menu screens

  Scenario: Check Config
    Given I go to the home page
    And Wait 2500
    When Submit form "IrsXHn.P9RW96.w6wAha"
    Then I should see a "Actualiza tu configuración" text
    And Wait 2500
    And I take a screenshot with filename "Configuration"

  Scenario: Check favorits
    Given I go to the home page
    And Wait 2500
    When I Click in link "Cm8Xkx"
    Then I should see a "Todavía no tienes productos en la Lista de deseos." text
    And Wait 2500
    And I take a screenshot with filename "Configuration"

  Scenario: Check Sell
    Given I go to the home page
    And Wait 2500
    When I click on "Vender" button
    Then I should see a "Actualiza tu configuración" text
    And Wait 2500
    And I take a screenshot with filename "¡Véndelo!"
