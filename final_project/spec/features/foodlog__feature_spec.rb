require 'rails_helper'

feature 'FoodLog' do
  context "No foodstuffs have been added to today's log" do
    scenario "Food page should display a prompt to add a foodstuff item" do
      visit '/'
      click_link_or_button 'Log Food'
      expect(current_path).to eq '/foodlog/index'
      expect(page).to have_content 'No Food Logged Yet'
      expect(page).to have_button 'Add Food'
    end
  end
end
