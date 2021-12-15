Feature: Test to evaluate FAQ menus

  Scenario: Navigate to Facebook
    Given I go to the home page
    When I click on "FAQ" button
    And Wait 5000
    When I click on "¿Qué es ENEBA?" button
    Then I should see a "ENEBA es una tienda online dedicada a la venta de juegos digitales.Aquí vas a poder encontrar una amplia variedad de juegos de acción, aventuras, puzzles y mucho más procedentes dedesarrolladores pequeños hasta los más grandes. Cada entusiasta del gaming podrá encontrar el juego que quiere ¡y a un buen precio!" text
    And I fill the field with name "query" with the information "registro"
    When Press Enter of field named "query"
    Then I should see a "4 resultados para \"registro\"" text