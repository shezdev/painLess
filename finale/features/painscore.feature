Feature: PainScore

Scenario: No PainScore has been added to today's log
Given the User signs in
When the User clicks "Log Pain"
Then the page displays "No Pain Score" and "Add Pain Score" links

Scenario: Recording a PainScore
Given the User signs in and clicks "Log Pain"
When the User fills in "Score" with "5"
Then the new page should display "5"
