Given(/^the User has yet to add food$/) do

end

When(/^the User logs in$/) do
  sign_up
  click_link_or_button 'Log Food'
end

Then(/^the Food Log displays a prompt to add food$/) do
  expect(current_path).to eq new_foodlog_path
  expect(page).to have_content 'No Food Logged Yet'
  expect(page).to have_button 'Add Food'
end

Given(/^the User is logged in$/) do
  sign_up
  click_link_or_button 'Log Food'
end

When(/^the User adds a "([^"]*)" item "([^"]*)"$/) do |arg1, arg2|
  fill_in 'Food', with: 'Cucumber'
  click_link_or_button 'Add Food'
end

Then(/^the page should show "([^"]*)"$/) do |arg1|
  expect(current_path).to eq new_foodlog_path
  expect(page).to have_content('Cucumber')
end
