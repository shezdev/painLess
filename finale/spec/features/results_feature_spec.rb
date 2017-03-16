require 'rails_helper'

feature 'Results' do
  context "No results yet" do
    scenario "Food page should display no results yet" do
      visit '/'
      click_link_or_button 'Results'
      expect(current_path).to eq results_path
      expect(page).to have_content 'No Results Yet'
    end
  end

  context "Viewing Results" do
    scenario "Display previous day's food" do
      visit '/'
      click_link_or_button 'Log Food'
      fill_in 'Food', with: 'McDonalds'
      click_link_or_button 'Add Food'
      visit '/'
      click_link_or_button 'Log Pain'
      fill_in 'Score', with: 2
      click_link_or_button 'Add Pain Score'

      visit '/'
      click_link_or_button 'Log Food'
      fill_in 'Food', with: 'Tomato'
      click_link_or_button 'Add Food'
      visit '/'
      click_link_or_button 'Log Pain'
      fill_in 'Score', with: 5
      click_link_or_button 'Add Pain Score'
      visit '/'

      click_link_or_button 'Results'
      expect(page).to have_content 'McDonalds'
    end
  end


end
