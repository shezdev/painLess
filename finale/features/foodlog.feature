Feature: Food Log

Scenario: Food Log should display a prompt to add food
Given the User has yet to add food
When the User logs in
Then the Food Log displays a prompt to add food

Scenario: the User is prompted to fill out a food log form, which is then displayed
Given the User is logged in
When the User adds a "Food" item "Cucumber"
Then the page should show "Cucumber"
