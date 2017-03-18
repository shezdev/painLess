Given(/^I have a Chronic Pain condition and want to use the Site$/) do

end

When(/^I visit the Home Page$/) do
  visit '/'
end

Then(/^I should see buttons for Account Creation$/) do
  expect(page.status_code).to eq 200
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Register'
  expect(page).not_to have_content 'Log Food'
  expect(page).not_to have_content 'Log Pain'
end

Given(/^I already have an account$/) do

end

When(/^I am signed in$/) do
  sign_up
end

Then(/^I should see buttons for logging Food, Pain, and Activity$/) do
  expect(page).not_to have_content 'Login'
  expect(page).not_to have_content 'Register'
  expect(page).to have_content('Log Food')
  expect(page).to have_content('Log Activity')
  expect(page).to have_content('Log Pain')
  expect(page).to have_content('Results')
end
