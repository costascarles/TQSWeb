Feature: Test to evaluate navigation to external pages

  Scenario: Navigate to Facebook
    Given I go to the home page
    When I click in svg link "Facebook"
    Then I should see a "Eneba - Inicio | Facebook" title
    And Wait 5000
    And I take a screenshot with filename "Facebook"
    And Wait 5000


  Scenario: Navigate to Twitter
    Given I go to the home page
    When I click in svg link "Twitter"
    Then I should see a "Eneba (@eneba_games) / Twitter" title
    And Wait 5000
    And I take a screenshot with filename "Twitter"
    And Wait 5000


  Scenario: Navigate to Instagram
    Given I go to the home page
    When I click in svg link "Instagram"
    Then I should see a "Eneba (@enebagames) • Fotos y vídeos de Instagram" title
    And Wait 5000
    And I take a screenshot with filename "Instagram"
    And Wait 5000
