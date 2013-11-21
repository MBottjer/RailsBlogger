Feature: Voting a comment 

  Scenario: Voting upwards of downards on a vote
    Given a post exists
    And I am on the posts page
    When I follow "Show"
    And a comment exists 
    When I press the comment button "☝"
    Then I should see 1 