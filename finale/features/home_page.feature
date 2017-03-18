Feature: Home Page

Scenario: Should display buttons for Account Creation
Given I have a Chronic Pain condition and want to use the Site
When I visit the Home Page
Then I should see buttons for Account Creation

Scenario: Should display buttons for logging food and pain levels
Given I already have an account
When I am signed in
Then I should see buttons for logging Food, Pain, and Activity
