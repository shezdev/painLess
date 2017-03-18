Given(/^no activity has been recorded$/) do
  visit '/'
end

When(/^the User signs in and click "([^"]*)"$/) do |arg1|
  sign_up
  click_link_or_button 'Log Activity'
end

Then(/^we should see "([^"]*)" and "([^"]*)" links$/) do |arg1, arg2|
  expect(current_path).to eq new_activity_path
  expect(page).to have_content 'No Activity Logged Yet'
  expect(page).to have_button 'Add Activity'
end
