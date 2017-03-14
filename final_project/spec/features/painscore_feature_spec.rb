require 'rails_helper'

feature 'PainScore' do
  context "No pain score has been added to today's log" do
    scenario "PainScore page should display a prompt to add a pain score" do
      visit '/'
      click_link_or_button 'Log Pain'
      expect(current_path).to eq '/painscore/index'
      expect(page).to have_content 'No Pain Score Logged Yet'
      expect(page).to have_button 'Add Pain Score'
    end
  end
end
