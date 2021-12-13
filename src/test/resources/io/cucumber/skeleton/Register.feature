Feature: Test to evaluate Register section


  Scenario: My website can be browsed
    When I go to the home page
    Then I should see a "Vender" button

  Scenario: My website has a "Register" section
    Given I go to the home page
    When I click on "Registro" button
    Then I should see a "Crear una cuenta" text
    And I take a screenshot with filename "Crear una cuenta"
    And I fill the field "username" with the information "carles_cosmat@hotmail.es"
    And I fill the field "password" with the information "123456789tqs"
    And I fill the field "passwordRepeat" with the information "123456789tqs"
    And I take a screenshot with filename "Crear una cuenta INFO"
    When Submit form "_2wsqrp.qGNWom"
    Then I should see a "Verifica tu correo electrónico" text