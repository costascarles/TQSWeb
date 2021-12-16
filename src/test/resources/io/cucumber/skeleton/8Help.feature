Feature: Petition become vendor
  Scenario: Petition Sell digital products OK
    Given I go to the home page
    When I click on "Productos digitales" button
    And Wait 5000
    When Submit form block "pr0yIU"
    #And I Click in radio option "companyTrader"
    #And I Click in radio option "officialStock"
    Then I should see a "Conviértete en un vendedor" text
    And I fill the field "stockSource" with the information "Una descripción"
    And I fill the field "titlesSell" with the information "Una descripción"
    And I fill the field "reputation" with the information "Una descripción"
    And I fill the field "whyDoYouSell" with the information "Una descripción"
    And I fill the field "nameAndSurname" with the information "Eduardo Robles"
    And I fill the field "products" with the information "Una descripción de producto"
    And I fill the field "email" with the information "ejemplo@gmail.com"
    And Wait 5000
    When Submit form "rFk93C.pr0yIU"
    And Wait 5000
    Then I should see a "Su mensaje ha sido enviado con éxito. ¡Nos pondremos en contacto con usted muy pronto!" text

  Scenario: Petition Sell digital products KO error name
    Given I go to the home page
    When I click on "Productos digitales" button
    And Wait 5000
    When Submit form block "pr0yIU"
    Then I should see a "Conviértete en un vendedor" text
    And I fill the field "stockSource" with the information "Una descripción"
    And I fill the field "titlesSell" with the information "Una descripción"
    And I fill the field "reputation" with the information "Una descripción"
    And I fill the field "whyDoYouSell" with the information "Una descripción"
    And I fill the field "nameAndSurname" with the information "Eduardo"
    And I fill the field "products" with the information "Una descripción de producto"
    And I fill the field "email" with the information "ejemplo@gmail.com"
    And Wait 5000
    When Submit form "rFk93C.pr0yIU"
    And Wait 5000
    Then I should see a "El nombre debe contener nombre y apellidos" text

  Scenario: Petition Sell digital products KO error gmail
    Given I go to the home page
    When I click on "Productos digitales" button
    And Wait 5000
    When Submit form block "pr0yIU"
    Then I should see a "Conviértete en un vendedor" text
    And I fill the field "stockSource" with the information "Una descripción"
    And I fill the field "titlesSell" with the information "Una descripción"
    And I fill the field "reputation" with the information "Una descripción"
    And I fill the field "whyDoYouSell" with the information "Una descripción"
    And I fill the field "nameAndSurname" with the information "Eduardo Robles"
    And I fill the field "products" with the information "Una descripción de producto"
    And I fill the field "email" with the information "ejemplo@f"
    And Wait 5000
    When Submit form "rFk93C.pr0yIU"
    And Wait 5000
    Then I should see a "Introduce un correo electrónico con un dominio válido" text






