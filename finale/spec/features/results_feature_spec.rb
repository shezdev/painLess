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

end
