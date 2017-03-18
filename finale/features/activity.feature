Feature: Activity Log

Scenario: No Activity has been logged
Given no activity has been recorded
When the User signs in and click "Log Activity"
Then we should see "No Activity Logged Yet" and "Add Activity" links
