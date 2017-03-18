Given(/^the User signs in$/) do
  sign_up
end

When(/^the User clicks "([^"]*)"$/) do |arg1|
  click_link_or_button 'Log Pain'
end

Then(/^the page displays "([^"]*)" and "([^"]*)" links$/) do |arg1, arg2|
  expect(current_path).to eq new_painscore_path
  expect(page).to have_content 'No Pain Score'
  expect(page).to have_button 'Add Pain Score'
end

Given(/^the User signs in and clicks "([^"]*)"$/) do |arg1|
  sign_up
  click_link_or_button 'Log Pain'
end

When(/^the User fills in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in 'Score', with: 5
  click_link_or_button 'Add Pain Score'
end

Then(/^the new page should display "([^"]*)"$/) do |arg1|
  expect(current_path).to eq new_painscore_path
  expect(page).to have_content 5
end
