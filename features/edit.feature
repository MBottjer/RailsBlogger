Feature: Editing Posts 
  
  Scenario: Editing posts 
    Given that I am on the posts page
    And a post exists 
    And I follow "Edit"
    When I fill in "Text" with "bye"
    And I click "Update Post"
    Then I should see "bye"