Feature: Test to evaluate the Browser of the page

Scenario: Search an item OK
  When I go to the home page
  Then I should see a "Vender" button
  And I fill the field with name "input" with the information "Fifa"
  When Press Enter of field "input"
  And Wait 5000
  And I take a screenshot with filename "Search OK"
  Then I should see a "Resultados encontrados:" text


  Scenario: Search an item KO
    When I go to the home page
    Then I should see a "Vender" button
    And I fill the field with name "input" with the information "qweqwew"
    When Press Enter of field "input"
    And Wait 5000
    And I take a screenshot with filename "Search KO"
    Then I should see a "No pudimos encontrar nada relacionado con:" text