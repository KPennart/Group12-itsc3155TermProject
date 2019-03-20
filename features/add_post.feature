Feature: Add a new post
  
  As a gamer
  So that I can easily find people to game with
  I want to be able to add a new post
  
Scenario: As a gamer I want to be able to navigate from the homepage to the new post form
  Given I am on the home page
  When I click on the "Game Posts" link
  Then I should be on the "Listing posts" page
  When I click on the "New post" link
  Then I should be on the "New post" page
  And I should see the "Title" field
  And I should see the "Title_of_the_Game" field
  And I should see the "Game_Username" field
  And I should see the "Text" field