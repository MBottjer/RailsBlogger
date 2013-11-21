Feature: Submitting Posts 
  
  Scenario: Submitting Posts 
    Given I am on the new post page
    And I fill in "Title" with "Hello World"
    And I fill in "Text" with "Hello this is my blog"
    When I press "Create Post"
    Then I should see "Hello World"

  