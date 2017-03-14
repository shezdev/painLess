require 'rails_helper'

feature 'Homepage' do
  context "When you arrive on the website" do
    scenario "Should display buttons to add foodstuffs and log pain level" do
      visit '/'
      expect(page.status_code).to eq 200
      expect(page).to have_content('Log Food')
      expect(page).to have_content('Log Pain')
    end
  end
end
