Feature: Results

Scenario: ResultsPage displays no results, if none added
Given the User is signed in
When the User clicks the link "Results"
Then the page should notify "No Results Yet"

Scenario: Display previous day's food when Pain is 10
Given the User has entered a PainScore of ten
When the User checks the "Results" page
Then the User sees the food eaten the day before, "McDonalds"

Scenario: Display all foods that cause a PainScore of 10
Given the User has entered several scores of ten
When the User checks the "Results"
Then the User sees the "Slippers Flipflops" causing pain
