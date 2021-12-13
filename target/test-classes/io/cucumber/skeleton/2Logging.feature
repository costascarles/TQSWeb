Feature: Test to evaluate the Logging section


  Scenario: Access to Logging KO Password
    When I go to the home page
    Then I should see a "Vender" button
    When I click on "Iniciar sesión" button
    Then I should see a "Iniciar sesión" button
    And I fill the field "username" with the information "carles_cosmat@hotmail.es"
    And I fill the field "password" with the information "contrase1933"
    When Submit form "_2wsqrp.qGNWom"
    And Wait 15000
    And I take a screenshot with filename "Logging KO cuenta"
    Then I should see a "Credenciales proporcionadas inválidas" text

  Scenario: Access to Logging KO Email
    When I go to the home page
    Then I should see a "Vender" button
    When I click on "Iniciar sesión" button
    Then I should see a "Iniciar sesión" button
    And I fill the field "username" with the information "carles_cosmat@noestabien.com"
    And I fill the field "password" with the information "contrase1936"
    When Submit form "_2wsqrp.qGNWom"
    And Wait 15000
    And I take a screenshot with filename "Logging KO cuenta"
    Then I should see a "Credenciales proporcionadas inválidas" text

  Scenario: Access to Logging OK
    When I go to the home page
    Then I should see a "Vender" button
    When I click on "Iniciar sesión" button
    Then I should see a "Iniciar sesión" button
    And I fill the field "username" with the information "carles_cosmat@hotmail.es"
    And I fill the field "password" with the information "contrase1936"
    When Submit form "_2wsqrp.qGNWom"
    And Wait 15000
    And I take a screenshot with filename "Logging OK cuenta"
    Then I should see a "carles_cosmat@hotmail.es" text