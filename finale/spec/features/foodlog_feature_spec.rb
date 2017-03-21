require 'rails_helper'

feature 'FoodLog' do
  context "No foodstuffs have been added to today's log" do
    scenario "Food page should display a prompt to add a foodstuff item" do
      sign_up
      log_painscore
      expect(current_path).to eq new_foodlog_path
      expect(page).to have_content 'No Food Logged Yet'
      expect(page).to have_button 'Add Food'
    end
  end

  context "Creating foodlogs" do
    scenario 'prompts user to fill out a form, then displays the users food log' do
      sign_up
      log_painscore
      fill_in 'Food', with: 'Cucumber'
      click_link_or_button 'Add Food'
      expect(current_path).to eq new_foodlog_path
      expect(page).to have_content('Cucumber')
    end
  end

  context "Deleting foodlogs" do
    scenario "users can delete any individual food" do
      sign_up
      log_painscore
      fill_in 'Food', with: 'Cucumber'
      click_link_or_button 'Add Food'
      click_link_or_button 'Delete'
      expect(page).not_to have_content 'Cucumber'
    end
  end

  context 'After inputting food data' do
    scenario 'user can click a link to add activity data' do
      sign_up
      log_painscore
      fill_in 'Food', with: 'Cucumber'
      click_link_or_button 'Add Food'
      expect(page).to have_content('Cucumber')
      expect(page).to have_content('Next')
      click_link_or_button 'Next'
      expect(current_path).to eq new_activity_path
    end
  end
end
