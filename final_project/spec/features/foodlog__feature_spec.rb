require 'rails_helper'

feature 'FoodLog' do
  context "No foodstuffs have been added to today's log" do
    scenario "Should display a prompt to add a foodstuff item" do
      visit '/'
      expect(page).to have_content('Log Food')
      click_button_or_link 'Log Food'
      expect(current_path).to eq '/foodlog'
      expect(page).to have_content 'No Food Logged Yet'
      expect(page).to have_button 'Add Food'
    end
  end
end 
