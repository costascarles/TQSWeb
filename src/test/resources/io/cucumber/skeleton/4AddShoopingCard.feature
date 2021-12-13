Feature: Test to evaluate Shooping Card

  Scenario: Check Card
    Given I go to the home page
    And Wait 2500
    When Submit form "HWYfxM"
    Then I should see a "Mi carrito de compras" text
    And Wait 2500
    And I take a screenshot with filename "Carrito"


  Scenario: Add to my Shooping Card 1
    Given I go to the home page
    And I fill the field with name "input" with the information "Fifa"
    When Press Enter of field "input"
    And Wait 5000
    Then I should see a "Resultados encontrados:" text
    When Select from list the item 1
    And Wait 5000
    And I take a screenshot with filename "Show the item"
    When Submit form "w6wAha"
    And Wait 5000
    Then I should see a "Añadido al carrito" text
    And I take a screenshot with filename "Item Added"

  Scenario: Add to my Shooping Card 2
    Given I go to the home page
    And I fill the field with name "input" with the information "Fifa"
    When Press Enter of field "input"
    And Wait 5000
    Then I should see a "Resultados encontrados:" text
    When Select from list the item 2
    And Wait 5000
    And I take a screenshot with filename "Show the item"
    When Submit form "w6wAha"
    And Wait 5000
    Then I should see a "Añadido al carrito" text
    And I take a screenshot with filename "Item Added"

