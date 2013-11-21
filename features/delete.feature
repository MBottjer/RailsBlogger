Feature: Deleting Links

  Scenario: Deleting an existing link 
    Given I am on the posts page 
    And a post exists 
    When I follow "Back"
    And I follow "Destroy"
    Then I should not see "hi there"