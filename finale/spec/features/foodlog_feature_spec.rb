require 'rails_helper'
require_relative '../helpers/sign_up_helper'

feature 'FoodLog' do
  context "No foodstuffs have been added to today's log" do
    scenario "Food page should display a prompt to add a foodstuff item" do
      sign_up
      click_link_or_button 'Log Food'
      expect(current_path).to eq new_foodlog_path
      expect(page).to have_content 'No Food Logged Yet'
      expect(page).to have_button 'Add Food'
    end
  end

  context "Creating foodlogs" do
    scenario 'prompts user to fill out a form, then displays the new food log' do
      sign_up
      click_link_or_button 'Log Food'
      fill_in 'Food', with: 'Cucumber'
      click_link_or_button 'Add Food'
      expect(current_path).to eq new_foodlog_path
      expect(page).to have_content('Cucumber')
    end
  end
end
