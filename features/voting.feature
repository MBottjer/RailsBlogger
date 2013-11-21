Feature: Voting A Comment 

  Scenario: Upvoting or Downvoting a Comment 
    Given I am on the new post page
    And a post exists 
    When I press the "☝"
    Then I should see 1 