Given(/^the User is signed in$/) do
  sign_up
end

When(/^the User clicks the link "([^"]*)"$/) do |arg1|
  click_link_or_button 'Results'
end

Then(/^the page should notify "([^"]*)"$/) do |arg1|
  expect(current_path).to eq results_path
  expect(page).to have_content 'No Results Yet'
end

Given(/^the User has entered a PainScore of ten$/) do
  sign_up
  display_pain_when_ten
end

When(/^the User checks the "([^"]*)" page$/) do |arg1|
  visit '/'
  click_link_or_button "Results"
end

Then(/^the User sees the food eaten the day before, "([^"]*)"$/) do |arg1|
  expect(page).to have_content "McDonalds"
end

Given(/^the User has entered several scores of ten$/) do
  display_all_food_when_ten
end

When(/^the User checks the "([^"]*)"$/) do |arg1|
  visit '/'
  click_link_or_button "Results"
end

Then(/^the User sees the "([^"]*)" causing pain$/) do |arg1|
  expect(page).to have_content "Slippers Flipflops"
end
